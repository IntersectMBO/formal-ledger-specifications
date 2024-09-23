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

module MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify where

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
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Ratify.Properties
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

import GHC.Generics (Generic)
data StakeDistrs = StakeDistrs {stakeDistr :: (MAlonzo.Code.Ledger.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.VDeleg Integer)}
  deriving (Show, Eq, Generic)
data RatifyEnv = MkRatifyEnv {reStakeDistrs :: MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify.StakeDistrs, reCurrentEpoch :: Integer, reDreps :: (MAlonzo.Code.Ledger.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Foreign.HSLedger.Address.Credential Integer), reCcHotKeys :: (MAlonzo.Code.Ledger.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Foreign.HSLedger.Address.Credential (Maybe MAlonzo.Code.Ledger.Foreign.HSLedger.Address.Credential)), reTreasury :: Integer}
  deriving (Show, Eq, Generic)
data RatifyState = MkRatifyState {rsEnactState :: MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.EnactState, rsRemoved :: (MAlonzo.Code.Ledger.Foreign.HSTypes.HSSet ((Integer, Integer), MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.GovActionState)), rsDelay :: Bool}
  deriving (Show, Eq, Generic)
-- Ledger.Foreign.HSLedger.Ratify._.RatifyEnv
d_RatifyEnv_100 = ()
-- Ledger.Foreign.HSLedger.Ratify._.RatifyState
d_RatifyState_102 = ()
-- Ledger.Foreign.HSLedger.Ratify.StakeDistrs
d_StakeDistrs_103 = ()
type T_StakeDistrs_103 = StakeDistrs
pattern C_StakeDistrs_105 a0 = StakeDistrs a0
check_StakeDistrs_105 ::
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.T_VDeleg_965 Integer ->
  T_StakeDistrs_103
check_StakeDistrs_105 = StakeDistrs
cover_StakeDistrs_103 :: StakeDistrs -> ()
cover_StakeDistrs_103 x
  = case x of
      StakeDistrs _ -> ()
-- Ledger.Foreign.HSLedger.Ratify._.StakeDistrs
d_StakeDistrs_104 = ()
-- Ledger.Foreign.HSLedger.Ratify._.RatifyEnv.ccHotKeys
d_ccHotKeys_180 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_180 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_ccHotKeys_1988 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.RatifyEnv.currentEpoch
d_currentEpoch_182 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1970 -> Integer
d_currentEpoch_182 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_currentEpoch_1984 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.RatifyEnv.dreps
d_dreps_184 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_184 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_dreps_1986 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.RatifyEnv.stakeDistrs
d_stakeDistrs_186 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1970 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1964
d_stakeDistrs_186 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistrs_1982 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.RatifyEnv.treasury
d_treasury_188 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1970 -> Integer
d_treasury_188 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_treasury_1990 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.RatifyState.delay
d_delay_192 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1992 -> Bool
d_delay_192 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_delay_2004 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.RatifyState.es
d_es_194 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1992 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_es_194 v0 = coe MAlonzo.Code.Ledger.Ratify.d_es_2000 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.RatifyState.removed
d_removed_196 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1992 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_196 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_removed_2002 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify._.StakeDistrs.stakeDistr
d_stakeDistr_200 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1964 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_200 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1968 (coe v0)
-- Ledger.Foreign.HSLedger.Ratify.HsTy-StakeDistrs
d_HsTy'45'StakeDistrs_216 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'StakeDistrs_216 = erased
-- Ledger.Foreign.HSLedger.Ratify.Conv-StakeDistrs
d_Conv'45'StakeDistrs_218 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'StakeDistrs_218
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317 v1
                -> coe
                     C_StakeDistrs_105
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_StakeDistrs_105 v1
                -> coe
                     MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v2
                                  = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v2))))
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24 (coe v1)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Ratify.HsTy-RatifyEnv
d_HsTy'45'RatifyEnv_220 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyEnv_220 = erased
-- Ledger.Foreign.HSLedger.Ratify.Conv-RatifyEnv
d_Conv'45'RatifyEnv_222 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyEnv_222
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11403 v1 v2 v3 v4 v5
                -> coe
                     C_MkRatifyEnv_573
                     (coe
                        C_StakeDistrs_105
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1968 (coe v1))))))
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
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
                     (coe v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyEnv_573 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11403
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317 v7
                                     -> coe
                                          C_StakeDistrs_105
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   C_StakeDistrs_105 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                         (coe v8))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                (coe v7)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v6
                                  = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v6))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v6)))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24 (coe v3)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v6
                                  = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v6))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v6)))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)))
                        (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24 (coe v4)))
                     (coe v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Ratify.HsTy-RatifyState
d_HsTy'45'RatifyState_224 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RatifyState_224 = erased
-- Ledger.Foreign.HSLedger.Ratify.Conv-RatifyState
d_Conv'45'RatifyState_226 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RatifyState_226
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_2006 v1 v2 v3
                -> coe
                     C_MkRatifyState_4845
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                         (coe v4))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                      (coe v4)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                              (coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v1))))
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
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                              (coe MAlonzo.Code.Ledger.Enact.d_constitution_844 (coe v1))))
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
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                              (coe MAlonzo.Code.Ledger.Enact.d_pv_846 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                              (coe
                                 (\ v4 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                              (coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v1))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSSet_38
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                           v2))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkRatifyState_4845 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_2006
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2097 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                            (let v10
                                                                   = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                           (coe v10))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                        (coe v10)))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                (coe
                                                   (\ v10 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                (coe v8)))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v9))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57 v5 v6 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2097
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                         (let v10
                                                                = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                        (coe v10))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                     (coe v10)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                             (coe
                                                (\ v10 ->
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1210
                                                            (coe v10)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                               (coe v10))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                            (coe v10)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                (coe v9)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_416
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1458
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                           (MAlonzo.Code.Ledger.Foreign.HSTypes.d_elems_36 (coe v2))))
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Ratify.ratify-debug
ratifyDebug ::
  T_RatifyEnv_571 ->
  T_RatifyState_4843 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.T_GovActionState_12441) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
ratifyDebug = coe d_ratify'45'debug_228
d_ratify'45'debug_228 ::
  T_RatifyEnv_571 ->
  T_RatifyState_4843 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.T_GovActionState_12441] ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_ratify'45'debug_228 v0 v1 v2
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
                       (coe du_govActionInfo_252 (coe v0) (coe v1) (coe v3))))
               (coe ("" :: Data.Text.Text)) (coe v2))))
-- Ledger.Foreign.HSLedger.Ratify._.govActionInfo
d_govActionInfo_252 ::
  T_RatifyEnv_571 ->
  T_RatifyState_4843 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.T_GovActionState_12441] ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.T_GovActionState_12441 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_govActionInfo_252 v0 v1 ~v2 v3 = du_govActionInfo_252 v0 v1 v3
du_govActionInfo_252 ::
  T_RatifyEnv_571 ->
  T_RatifyState_4843 ->
  MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
    AgdaAny AgdaAny
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       AgdaAny AgdaAny Integer Integer)
    MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.T_GovActionState_12441 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_govActionInfo_252 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Foreign.Haskell.Pair.C__'44'__36 v3 v4
        -> coe
             MAlonzo.Code.Data.String.Base.d__'43''43'__20
             ("SPO: \t" :: Data.Text.Text)
             (coe
                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                (MAlonzo.Code.Data.Rational.Show.d_show_6
                   (coe
                      MAlonzo.Code.Ledger.Ratify.d_acceptedStakeRatio_2304
                      (coe
                         MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_670)
                      (coe
                         MAlonzo.Code.Interface.IsSet.du_dom_540
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1458
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                         (coe
                            MAlonzo.Code.Ledger.Ratify.d_actualVotes_2148
                            (coe
                               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                  (coe
                                     (\ v5 ->
                                        case coe v5 of
                                          MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11403 v6 v7 v8 v9 v10
                                            -> coe
                                                 C_MkRatifyEnv_573
                                                 (coe
                                                    C_StakeDistrs_105
                                                    (coe
                                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1968
                                                                (coe v6))))))
                                                 (coe v7)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                             (coe
                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v8))))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                             (coe
                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v9))))
                                                 (coe v10)
                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                  (coe
                                     (\ v5 ->
                                        case coe v5 of
                                          C_MkRatifyEnv_573 v6 v7 v8 v9 v10
                                            -> coe
                                                 MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11403
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                       (coe
                                                          (\ v11 ->
                                                             case coe v11 of
                                                               MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317 v12
                                                                 -> coe
                                                                      C_StakeDistrs_105
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v12))))
                                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                                       (coe
                                                          (\ v11 ->
                                                             case coe v11 of
                                                               C_StakeDistrs_105 v12
                                                                 -> coe
                                                                      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                            (let v13
                                                                                   = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                             coe
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                     (coe v13))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                         (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                            (coe v12)))
                                                               _ -> MAlonzo.RTE.mazUnreachableError)))
                                                    v6)
                                                 (coe v7)
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                       (let v11
                                                              = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                      (coe v11))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                   (coe v11)))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                    (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                       (coe v8)))
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                       (let v11
                                                              = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                      (coe v11))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                   (coe v11)))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                          (coe
                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)))
                                                    (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                       (coe v9)))
                                                 (coe v10)
                                          _ -> MAlonzo.RTE.mazUnreachableError)))
                               v0)
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Ledger.Enact.d_pparams_848
                                  (coe
                                     MAlonzo.Code.Ledger.Ratify.d_es_2000
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        d_Conv'45'RatifyState_226 v1))))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Ledger.Enact.d_cc_842
                                  (coe
                                     MAlonzo.Code.Ledger.Ratify.d_es_2000
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        d_Conv'45'RatifyState_226 v1))))
                            (coe
                               MAlonzo.Code.Ledger.GovernanceActions.d_action_798
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326
                                  v4))
                            (coe
                               MAlonzo.Code.Ledger.GovernanceActions.d_votes_792
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326
                                  v4))))
                      (coe
                         MAlonzo.Code.Ledger.Ratify.d_stakeDistrs_1982
                         (coe
                            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'RatifyEnv_222
                            v0))
                      (coe
                         MAlonzo.Code.Ledger.Ratify.d_actualVotes_2148
                         (coe
                            MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
                         (coe
                            MAlonzo.Code.Foreign.Convertible.d_from_20
                            (coe
                               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                               (coe
                                  (\ v5 ->
                                     case coe v5 of
                                       MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11403 v6 v7 v8 v9 v10
                                         -> coe
                                              C_MkRatifyEnv_573
                                              (coe
                                                 C_StakeDistrs_105
                                                 (coe
                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                             (coe
                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1968
                                                             (coe v6))))))
                                              (coe v7)
                                              (coe
                                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                          (coe
                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v8))))
                                              (coe
                                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                          (coe
                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                             (coe
                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v9))))
                                              (coe v10)
                                       _ -> MAlonzo.RTE.mazUnreachableError))
                               (coe
                                  (\ v5 ->
                                     case coe v5 of
                                       C_MkRatifyEnv_573 v6 v7 v8 v9 v10
                                         -> coe
                                              MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11403
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                    (coe
                                                       (\ v11 ->
                                                          case coe v11 of
                                                            MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317 v12
                                                              -> coe
                                                                   C_StakeDistrs_105
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v12))))
                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                                    (coe
                                                       (\ v11 ->
                                                          case coe v11 of
                                                            C_StakeDistrs_105 v12
                                                              -> coe
                                                                   MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                         (let v13
                                                                                = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                  (coe v13))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                      (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                         (coe v12)))
                                                            _ -> MAlonzo.RTE.mazUnreachableError)))
                                                 v6)
                                              (coe v7)
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                    (let v11
                                                           = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                   (coe v11))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                (coe v11)))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                 (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                    (coe v8)))
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                    (let v11
                                                           = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                   (coe v11))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                (coe v11)))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                       (coe
                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)))
                                                 (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                    (coe v9)))
                                              (coe v10)
                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                            v0)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Ledger.Enact.d_pparams_848
                               (coe
                                  MAlonzo.Code.Ledger.Ratify.d_es_2000
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     d_Conv'45'RatifyState_226 v1))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Ledger.Enact.d_cc_842
                               (coe
                                  MAlonzo.Code.Ledger.Ratify.d_es_2000
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                     d_Conv'45'RatifyState_226 v1))))
                         (coe
                            MAlonzo.Code.Ledger.GovernanceActions.d_action_798
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326
                               v4))
                         (coe
                            MAlonzo.Code.Ledger.GovernanceActions.d_votes_792
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326
                               v4)))))
                (coe
                   MAlonzo.Code.Data.String.Base.d__'43''43'__20
                   ("\t" :: Data.Text.Text)
                   (coe
                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                      (let v5
                             = MAlonzo.Code.Ledger.Ratify.d_acceptedBy'63'_2606
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    d_Conv'45'RatifyEnv_222 v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Ratify.d_es_2000
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                       d_Conv'45'RatifyState_226 v1))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326
                                    v4)
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_670) in
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
                                     MAlonzo.Code.Ledger.Ratify.d_acceptedStakeRatio_2304
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
                                     (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_668)
                                     (coe
                                        MAlonzo.Code.Interface.IsSet.du_dom_540
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1458
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                        (coe
                                           MAlonzo.Code.Ledger.Ratify.d_actualVotes_2148
                                           (coe
                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                 (coe
                                                    (\ v5 ->
                                                       case coe v5 of
                                                         MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11403 v6 v7 v8 v9 v10
                                                           -> coe
                                                                C_MkRatifyEnv_573
                                                                (coe
                                                                   C_StakeDistrs_105
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1968
                                                                               (coe v6))))))
                                                                (coe v7)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v8))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v9))))
                                                                (coe v10)
                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                 (coe
                                                    (\ v5 ->
                                                       case coe v5 of
                                                         C_MkRatifyEnv_573 v6 v7 v8 v9 v10
                                                           -> coe
                                                                MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11403
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                      (coe
                                                                         (\ v11 ->
                                                                            case coe v11 of
                                                                              MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317 v12
                                                                                -> coe
                                                                                     C_StakeDistrs_105
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                              (coe
                                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 v12))))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                                      (coe
                                                                         (\ v11 ->
                                                                            case coe v11 of
                                                                              C_StakeDistrs_105 v12
                                                                                -> coe
                                                                                     MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                           (let v13
                                                                                                  = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                    (coe
                                                                                                       v13))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                        (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                                                             = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                     (coe v11))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                  (coe v11)))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                   (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                      (coe v8)))
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                      (let v11
                                                                             = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                     (coe v11))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                  (coe v11)))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)))
                                                                   (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                      (coe v9)))
                                                                (coe v10)
                                                         _ -> MAlonzo.RTE.mazUnreachableError)))
                                              v0)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                 (coe
                                                    MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       d_Conv'45'RatifyState_226 v1))))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 MAlonzo.Code.Ledger.Enact.d_cc_842
                                                 (coe
                                                    MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       d_Conv'45'RatifyState_226 v1))))
                                           (coe
                                              MAlonzo.Code.Ledger.GovernanceActions.d_action_798
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326
                                                 v4))
                                           (coe
                                              MAlonzo.Code.Ledger.GovernanceActions.d_votes_792
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326
                                                 v4))))
                                     (coe
                                        MAlonzo.Code.Ledger.Ratify.d_stakeDistrs_1982
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           d_Conv'45'RatifyEnv_222 v0))
                                     (coe
                                        MAlonzo.Code.Ledger.Ratify.d_actualVotes_2148
                                        (coe
                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                              (coe
                                                 (\ v5 ->
                                                    case coe v5 of
                                                      MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11403 v6 v7 v8 v9 v10
                                                        -> coe
                                                             C_MkRatifyEnv_573
                                                             (coe
                                                                C_StakeDistrs_105
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1968
                                                                            (coe v6))))))
                                                             (coe v7)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v8))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                      (coe
                                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                         (coe
                                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v9))))
                                                             (coe v10)
                                                      _ -> MAlonzo.RTE.mazUnreachableError))
                                              (coe
                                                 (\ v5 ->
                                                    case coe v5 of
                                                      C_MkRatifyEnv_573 v6 v7 v8 v9 v10
                                                        -> coe
                                                             MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11403
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                   (coe
                                                                      (\ v11 ->
                                                                         case coe v11 of
                                                                           MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317 v12
                                                                             -> coe
                                                                                  C_StakeDistrs_105
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              v12))))
                                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                                                   (coe
                                                                      (\ v11 ->
                                                                         case coe v11 of
                                                                           C_StakeDistrs_105 v12
                                                                             -> coe
                                                                                  MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                        (let v13
                                                                                               = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                 (coe
                                                                                                    v13))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                     (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                        (coe v12)))
                                                                           _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                v6)
                                                             (coe v7)
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                   (let v11
                                                                          = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                  (coe v11))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                               (coe v11)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                   (coe v8)))
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                   (let v11
                                                                          = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                  (coe v11))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                               (coe v11)))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)))
                                                                (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                   (coe v9)))
                                                             (coe v10)
                                                      _ -> MAlonzo.RTE.mazUnreachableError)))
                                           v0)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Enact.d_pparams_848
                                              (coe
                                                 MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    d_Conv'45'RatifyState_226 v1))))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Enact.d_cc_842
                                              (coe
                                                 MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                    d_Conv'45'RatifyState_226 v1))))
                                        (coe
                                           MAlonzo.Code.Ledger.GovernanceActions.d_action_798
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326
                                              v4))
                                        (coe
                                           MAlonzo.Code.Ledger.GovernanceActions.d_votes_792
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326
                                              v4)))))
                               (coe
                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                  ("\t" :: Data.Text.Text)
                                  (coe
                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                     (let v5
                                            = MAlonzo.Code.Ledger.Ratify.d_acceptedBy'63'_2606
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   d_Conv'45'RatifyEnv_222 v0)
                                                (coe
                                                   MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                      d_Conv'45'RatifyState_226 v1))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326
                                                   v4)
                                                (coe
                                                   MAlonzo.Code.Ledger.GovernanceActions.C_DRep_668) in
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
                                                    MAlonzo.Code.Ledger.Ratify.d_acceptedStakeRatio_2304
                                                    (coe
                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
                                                    (coe
                                                       MAlonzo.Code.Ledger.GovernanceActions.C_CC_666)
                                                    (coe
                                                       MAlonzo.Code.Interface.IsSet.du_dom_540
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1458
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       (coe
                                                          MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Ratify.d_actualVotes_2148
                                                          (coe
                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                (coe
                                                                   (\ v5 ->
                                                                      case coe v5 of
                                                                        MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11403 v6 v7 v8 v9 v10
                                                                          -> coe
                                                                               C_MkRatifyEnv_573
                                                                               (coe
                                                                                  C_StakeDistrs_105
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1968
                                                                                              (coe
                                                                                                 v6))))))
                                                                               (coe v7)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v8))))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                           (coe
                                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v9))))
                                                                               (coe v10)
                                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                                (coe
                                                                   (\ v5 ->
                                                                      case coe v5 of
                                                                        C_MkRatifyEnv_573 v6 v7 v8 v9 v10
                                                                          -> coe
                                                                               MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11403
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                     (coe
                                                                                        (\ v11 ->
                                                                                           case coe
                                                                                                  v11 of
                                                                                             MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317 v12
                                                                                               -> coe
                                                                                                    C_StakeDistrs_105
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                             (coe
                                                                                                                v12))))
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                     (coe
                                                                                        (\ v11 ->
                                                                                           case coe
                                                                                                  v11 of
                                                                                             C_StakeDistrs_105 v12
                                                                                               -> coe
                                                                                                    MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                          (let v13
                                                                                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                                   (coe
                                                                                                                      v13))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                                                                            = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                    (coe
                                                                                                       v11))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                 (coe
                                                                                                    v11)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                  (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                     (coe v8)))
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                     (let v11
                                                                                            = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                    (coe
                                                                                                       v11))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                 (coe
                                                                                                    v11)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)))
                                                                                  (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                     (coe v9)))
                                                                               (coe v10)
                                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                                             v0)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      d_Conv'45'RatifyState_226
                                                                      v1))))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Enact.d_cc_842
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                      d_Conv'45'RatifyState_226
                                                                      v1))))
                                                          (coe
                                                             MAlonzo.Code.Ledger.GovernanceActions.d_action_798
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326
                                                                v4))
                                                          (coe
                                                             MAlonzo.Code.Ledger.GovernanceActions.d_votes_792
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326
                                                                v4))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Ratify.d_stakeDistrs_1982
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                          d_Conv'45'RatifyEnv_222 v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Ratify.d_actualVotes_2148
                                                       (coe
                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.d_from_20
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                             (coe
                                                                (\ v5 ->
                                                                   case coe v5 of
                                                                     MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11403 v6 v7 v8 v9 v10
                                                                       -> coe
                                                                            C_MkRatifyEnv_573
                                                                            (coe
                                                                               C_StakeDistrs_105
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1968
                                                                                           (coe
                                                                                              v6))))))
                                                                            (coe v7)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v8))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                     (coe
                                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                        (coe
                                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10))))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v9))))
                                                                            (coe v10)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError))
                                                             (coe
                                                                (\ v5 ->
                                                                   case coe v5 of
                                                                     C_MkRatifyEnv_573 v6 v7 v8 v9 v10
                                                                       -> coe
                                                                            MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11403
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                  (coe
                                                                                     (\ v11 ->
                                                                                        case coe
                                                                                               v11 of
                                                                                          MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317 v12
                                                                                            -> coe
                                                                                                 C_StakeDistrs_105
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                          (coe
                                                                                                             v12))))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                  (coe
                                                                                     (\ v11 ->
                                                                                        case coe
                                                                                               v11 of
                                                                                          C_StakeDistrs_105 v12
                                                                                            -> coe
                                                                                                 MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11317
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                                       (let v13
                                                                                                              = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                                        coe
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Transaction.d_govStructure_2350
                                                                                                                (coe
                                                                                                                   v13))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                                    (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                                                                         = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                 (coe
                                                                                                    v11))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                              (coe
                                                                                                 v11)))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                               (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                  (coe v8)))
                                                                            (coe
                                                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                               (coe
                                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                  (let v11
                                                                                         = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844 in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                                 (coe
                                                                                                    v11))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                                              (coe
                                                                                                 v11)))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                  (coe
                                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)))
                                                                               (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                  (coe v9)))
                                                                            (coe v10)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)))
                                                          v0)
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Enact.d_pparams_848
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   d_Conv'45'RatifyState_226 v1))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Ledger.Enact.d_cc_842
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                   d_Conv'45'RatifyState_226 v1))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.GovernanceActions.d_action_798
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326
                                                             v4))
                                                       (coe
                                                          MAlonzo.Code.Ledger.GovernanceActions.d_votes_792
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326
                                                             v4)))))
                                              (coe
                                                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                 ("\t" :: Data.Text.Text)
                                                 (coe
                                                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                    (let v5
                                                           = MAlonzo.Code.Ledger.Ratify.d_acceptedBy'63'_2606
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  d_Conv'45'RatifyEnv_222 v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Ratify.d_es_2000
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     d_Conv'45'RatifyState_226 v1))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326
                                                                  v4)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.GovernanceActions.C_CC_666) in
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
-- Ledger.Foreign.HSLedger.Ratify.ratify-step
ratifyStep ::
  T_RatifyEnv_571 ->
  T_RatifyState_4843 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10
    ()
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.T_GovActionState_12441) ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Ledger.Foreign.HSTypes.T_Empty_6 T_RatifyState_4843
ratifyStep = coe d_ratify'45'step_306
d_ratify'45'step_306 ::
  T_RatifyEnv_571 ->
  T_RatifyState_4843 ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny
     (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
        AgdaAny AgdaAny Integer Integer)
     MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.T_GovActionState_12441] ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Ledger.Foreign.HSTypes.T_Empty_6 T_RatifyState_4843
d_ratify'45'step_306 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'RatifyState_226)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
               (coe
                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                  (coe
                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                     (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                     (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                  (coe
                     MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_86
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45''8869'_18)
               (coe d_Conv'45'RatifyState_226))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Ratify.Properties.d_Computational'45'RATIFY_2168
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_844))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20 d_Conv'45'RatifyEnv_222
            v0))
-- Ledger.Foreign.HSLedger.Ratify.RatifyEnv
d_RatifyEnv_571 = ()
type T_RatifyEnv_571 = RatifyEnv
pattern C_MkRatifyEnv_573 a0 a1 a2 a3 a4 = MkRatifyEnv a0 a1 a2 a3 a4
check_MkRatifyEnv_573 ::
  T_StakeDistrs_103 ->
  Integer ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.T_Credential_27
    Integer ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.T_Credential_27
    (MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
       () MAlonzo.Code.Ledger.Foreign.HSLedger.Address.T_Credential_27) ->
  Integer -> T_RatifyEnv_571
check_MkRatifyEnv_573 = MkRatifyEnv
cover_RatifyEnv_571 :: RatifyEnv -> ()
cover_RatifyEnv_571 x
  = case x of
      MkRatifyEnv _ _ _ _ _ -> ()
-- Ledger.Foreign.HSLedger.Ratify.RatifyState
d_RatifyState_4843 = ()
type T_RatifyState_4843 = RatifyState
pattern C_MkRatifyState_4845 a0 a1 a2 = MkRatifyState a0 a1 a2
check_MkRatifyState_4845 ::
  MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.T_EnactState_55 ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_HSSet_30
    (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
       () ()
       (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () Integer Integer)
       MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.T_GovActionState_12441) ->
  Bool -> T_RatifyState_4843
check_MkRatifyState_4845 = MkRatifyState
cover_RatifyState_4843 :: RatifyState -> ()
cover_RatifyState_4843 x
  = case x of
      MkRatifyState _ _ _ -> ()
