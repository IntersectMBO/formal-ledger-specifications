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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

import GHC.Generics (Generic)
data Snapshot = MkSnapshot {stake :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential Integer), delegations :: (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.Credential Integer)}
  deriving (Show, Eq, Generic)
data Snapshots = MkSnapshots {mark :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch.Snapshot, set :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch.Snapshot, go :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch.Snapshot, feeSS :: Integer}
  deriving (Show, Eq, Generic)
data EpochState = MkEpochState {esAcnt :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.Acnt, esSs :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Epoch.Snapshots, esLs :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.LState, esEs :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.EnactState, esFut :: MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.RatifyState}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState
d_EpochState_20 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch._.Snapshot
d_Snapshot_34 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch._.Snapshots
d_Snapshots_36 = ()
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState.acnt
d_acnt_78 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_acnt_78 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2306 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState.es
d_es_80 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_es_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2312 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState.fut
d_fut_82 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1992
d_fut_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2314 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState.ls
d_ls_84 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2186
d_ls_84 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2310 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.EpochState.ss
d_ss_86 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2294 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276
d_ss_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2308 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.Snapshot.delegations
d_delegations_108 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.Snapshot.stake
d_stake_110 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.Snapshots.feeSS
d_feeSS_114 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  Integer
d_feeSS_114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2292 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.Snapshots.go
d_go_116 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2266
d_go_116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2290 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.Snapshots.mark
d_mark_118 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2266
d_mark_118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2286 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch._.Snapshots.set
d_set_120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2276 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2266
d_set_120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2288 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Epoch.HsTy-Snapshot
d_HsTy'45'Snapshot_148 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Snapshot_148 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch.Conv-Snapshot
d_Conv'45'Snapshot_150 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Snapshot_150
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshot'46'constructor_5073 v1 v2
                -> coe
                     C_MkSnapshot_355
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkSnapshot_355 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshot'46'constructor_5073
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v3
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                            coe
                              (let v4
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                         (coe v3) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                             (coe v4))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                          (coe v4))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v3
                                  = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                            coe
                              (let v4
                                     = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                         (coe v3) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                       (coe
                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                             (coe v4))))
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                          (coe v4))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                        (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                           (coe v2)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Epoch.HsTy-Snapshots
d_HsTy'45'Snapshots_152 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Snapshots_152 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch.Conv-Snapshots
d_Conv'45'Snapshots_154 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Snapshots_154
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshots'46'constructor_5157 v1 v2 v3 v4
                -> coe
                     C_MkSnapshots_1649
                     (coe
                        C_MkSnapshot_355
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                    (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                    (coe v1))))))
                     (coe
                        C_MkSnapshot_355
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                    (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                    (coe v2))))))
                     (coe
                        C_MkSnapshot_355
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                    (coe v3)))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                    (coe v3))))))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkSnapshots_1649 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshots'46'constructor_5157
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshot'46'constructor_5073 v6 v7
                                     -> coe
                                          C_MkSnapshot_355
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkSnapshot_355 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshot'46'constructor_5073
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                            (coe
                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                            (coe
                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v7)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshot'46'constructor_5073 v6 v7
                                     -> coe
                                          C_MkSnapshot_355
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkSnapshot_355 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshot'46'constructor_5073
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                            (coe
                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                            (coe
                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v7)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshot'46'constructor_5073 v6 v7
                                     -> coe
                                          C_MkSnapshot_355
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkSnapshot_355 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshot'46'constructor_5073
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                            (coe
                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (let v9
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                              (coe v8) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                            (coe
                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                  (coe v9))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v7)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Epoch.HsTy-EpochState
d_HsTy'45'EpochState_156 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'EpochState_156 = erased
-- Ledger.Conway.Foreign.HSLedger.Epoch.Conv-EpochState
d_Conv'45'EpochState_158 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'EpochState_158
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_EpochState'46'constructor_5315 v1 v2 v3 v4 v5
                -> coe
                     C_MkEpochState_3285
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_9607
                        (coe MAlonzo.Code.Ledger.PParams.d_treasury_150 (coe v1))
                        (coe MAlonzo.Code.Ledger.PParams.d_reserves_152 (coe v1)))
                     (coe
                        C_MkSnapshots_1649
                        (coe
                           C_MkSnapshot_355
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2286
                                          (coe v2))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2286
                                          (coe v2)))))))
                        (coe
                           C_MkSnapshot_355
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2288
                                          (coe v2))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2288
                                          (coe v2)))))))
                        (coe
                           C_MkSnapshot_355
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2290
                                          (coe v2))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2290
                                          (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2292
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2719
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1793
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Utxo.d_utxo_2030
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2194
                                          (coe v3))))))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.d_fees_2032
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2194
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_64)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Utxo.d_deposits_2034
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2194
                                          (coe v3))))))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.d_donations_2036
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2194
                                 (coe v3))))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                           () erased
                           (MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_228)))
                           (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2196
                              (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_357
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_8759
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1050
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1080
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2198
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1052
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1080
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2198
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1054
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1080
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2198
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_64)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1056
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1080
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2198
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_3489
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_60)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_pools_912
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1082
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2198
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_retiring_914
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1082
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2198
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_19809
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1066
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1084
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2198
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1068
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1084
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2198
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_64)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1070
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1084
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2198
                                                (coe v3))))))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_89
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
                                          (let v6
                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                           coe
                                             (let v7
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                        (coe v6) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                            (coe v7))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                         (coe v7))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe MAlonzo.Code.Ledger.Enact.d_cc_838 (coe v4))))
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
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe MAlonzo.Code.Ledger.Enact.d_constitution_840 (coe v4))))
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
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe MAlonzo.Code.Ledger.Enact.d_pv_842 (coe v4))))
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
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                              (coe MAlonzo.Code.Ledger.Enact.d_pparams_844 (coe v4))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Enact.d_withdrawals_846 (coe v4))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_9481
                        (coe
                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_89
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
                                             (let v6
                                                    = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                              coe
                                                (let v7
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                           (coe v6) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                               (coe v7))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                            (coe v7))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                 (coe
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_cc_838
                                    (coe MAlonzo.Code.Ledger.Ratify.d_es_2000 (coe v5)))))
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
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_constitution_840
                                    (coe MAlonzo.Code.Ledger.Ratify.d_es_2000 (coe v5)))))
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
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_pv_842
                                    (coe MAlonzo.Code.Ledger.Ratify.d_es_2000 (coe v5)))))
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
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_pparams_844
                                    (coe MAlonzo.Code.Ledger.Ratify.d_es_2000 (coe v5)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_withdrawals_846
                                       (coe MAlonzo.Code.Ledger.Ratify.d_es_2000 (coe v5)))))))
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
                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_228)))
                              (MAlonzo.Code.Ledger.Ratify.d_removed_2002 (coe v5))))
                        (coe MAlonzo.Code.Ledger.Ratify.d_delay_2004 (coe v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkEpochState_3285 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_EpochState'46'constructor_5315
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_154 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_9607
                                          (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.C_MkAcnt_9607 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_154
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
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshots'46'constructor_5157 v7 v8 v9 v10
                                     -> coe
                                          C_MkSnapshots_1649
                                          (coe
                                             C_MkSnapshot_355
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                                         (coe v7)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                                         (coe v7))))))
                                          (coe
                                             C_MkSnapshot_355
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                                         (coe v8)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                                         (coe v8))))))
                                          (coe
                                             C_MkSnapshot_355
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                                         (coe v9)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                                         (coe v9))))))
                                          (coe v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   C_MkSnapshots_1649 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshots'46'constructor_5157
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshot'46'constructor_5073 v12 v13
                                                          -> coe
                                                               C_MkSnapshot_355
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v12))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        C_MkSnapshot_355 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshot'46'constructor_5073
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                      coe
                                                                        (let v15
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                   (coe v14) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                       (coe v15))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                    (coe v15))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                      coe
                                                                        (let v15
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                   (coe v14) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                       (coe v15))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                    (coe v15))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                     (coe v13)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v7)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshot'46'constructor_5073 v12 v13
                                                          -> coe
                                                               C_MkSnapshot_355
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v12))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        C_MkSnapshot_355 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshot'46'constructor_5073
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                      coe
                                                                        (let v15
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                   (coe v14) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                       (coe v15))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                    (coe v15))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                      coe
                                                                        (let v15
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                   (coe v14) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                       (coe v15))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                    (coe v15))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                     (coe v13)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshot'46'constructor_5073 v12 v13
                                                          -> coe
                                                               C_MkSnapshot_355
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v12))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        C_MkSnapshot_355 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_Snapshot'46'constructor_5073
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                      coe
                                                                        (let v15
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                   (coe v14) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                       (coe v15))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                    (coe v15))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                      coe
                                                                        (let v15
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                   (coe v14) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                       (coe v15))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                    (coe v15))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                     (coe v13)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                          (coe v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_LState'46'constructor_4739 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2719
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1793
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Utxo.d_utxo_2030
                                                         (coe v7)))))
                                             (coe MAlonzo.Code.Ledger.Utxo.d_fees_2032 (coe v7))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_64)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Utxo.d_deposits_2034
                                                         (coe v7)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.d_donations_2036 (coe v7)))
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_228)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_357
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_8759
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1050
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1080
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1052
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1080
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1054
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1080
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_64)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1056
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1080
                                                               (coe v9)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_3489
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_60)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Certs.d_pools_912
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1082
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Certs.d_retiring_914
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1082
                                                               (coe v9)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_19809
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1066
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1084
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1068
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1084
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_64)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1070
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1084
                                                               (coe v9))))))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.C_MkLState_2719 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_LState'46'constructor_4739
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2038 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1793
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24))))))))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v11))))
                                                               (coe v12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_64)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
                                                               (coe v14)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Utxo.C_MkUTxOState_1793 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2038
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (coe
                                                                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                        () erased () erased
                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                                                        MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_20)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_24))
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSTimelock_20)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Transaction.d_Conv'45'HSPlutusScript_24)))))))
                                                                  (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                     (coe v11)))
                                                               (coe v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v15
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_govStructure_2330
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                 (coe v15)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_64)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                     (coe v13)))
                                                               (coe v14)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v7)
                                          (coe
                                             MAlonzo.Code.Class.Functor.Core.du_fmap_22
                                             MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20
                                             () erased () erased
                                             (MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_228)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CertState'46'constructor_3223 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_357
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_8759
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1050
                                                                              (coe v11)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1052
                                                                              (coe v11)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1054
                                                                              (coe v11)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_64)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1056
                                                                              (coe v11))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_3489
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_60)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Certs.d_pools_912
                                                                              (coe v12)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Certs.d_retiring_914
                                                                              (coe v12))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_19809
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1066
                                                                              (coe v13)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1068
                                                                              (coe v13)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_64)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1070
                                                                              (coe v13))))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Cert.C_MkCertState_357 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_CertState'46'constructor_3223
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DState'46'constructor_2567 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_8759
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v15))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_64)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v18))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkDState_8759 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_DState'46'constructor_2567
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                           coe
                                                                                             (let v20
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                                        (coe
                                                                                                           v19) in
                                                                                              coe
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                                            (coe
                                                                                                               v20))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.Core.d_Conv'45'VDeleg_34))
                                                                                       (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                           coe
                                                                                             (let v20
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                                        (coe
                                                                                                           v19) in
                                                                                              coe
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                                            (coe
                                                                                                               v20))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                           coe
                                                                                             (let v20
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                                        (coe
                                                                                                           v19) in
                                                                                              coe
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                                            (coe
                                                                                                               v20))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                                         (coe
                                                                                                            v20))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                          (coe
                                                                                             v17)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2330
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                                      (coe
                                                                                                         v19)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_64)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                          (coe
                                                                                             v18)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Certs.C_PState'46'constructor_17493 v15 v16
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_3489
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_60)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v15))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v16))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkPState_3489 v15 v16
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Certs.C_PState'46'constructor_17493
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_60))
                                                                                       (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                          (coe
                                                                                             v16)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GState'46'constructor_3151 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_19809
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v15))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16))))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_64)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.C_MkGState_19809 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GState'46'constructor_3151
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                           coe
                                                                                             (let v19
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                                        (coe
                                                                                                           v18) in
                                                                                              coe
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                                            (coe
                                                                                                               v19))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                                         (coe
                                                                                                            v19))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                           coe
                                                                                             (let v19
                                                                                                    = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                                        (coe
                                                                                                           v18) in
                                                                                              coe
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                                            (coe
                                                                                                               v19))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                                         (coe
                                                                                                            v19))))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)))
                                                                                       (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_govStructure_2330
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_64)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                                       (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                                          (coe
                                                                                             v17)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v13)
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2159 v7 v8 v9 v10 v11
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_89
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
                                                            (let v12
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                             coe
                                                               (let v13
                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                          (coe v12) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                              (coe v13))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                           (coe v13))))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                (coe
                                                   (\ v12 ->
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
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe
                                                   (\ v12 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
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
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (coe
                                                   (\ v12 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe v9)))
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
                                                   (\ v12 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                (coe v10)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v11))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_89 v7 v8 v9 v10 v11
                                     -> coe
                                          MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2159
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
                                                         (let v12
                                                                = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                          coe
                                                            (let v13
                                                                   = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                       (coe v12) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                           (coe v13))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                        (coe v13))))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                             (coe
                                                (\ v12 ->
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
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                             (coe
                                                (\ v12 ->
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
                                                (\ v12 ->
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
                                                v9))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                             (coe
                                                (\ v12 ->
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
                                                v10))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v12
                                                       = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                 coe
                                                   (let v13
                                                          = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                              (coe v12) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                         (coe
                                                            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200
                                                               (coe v13)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                            (coe
                                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                  (coe v13))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                               (coe v13))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                             (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                (coe v11)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v4)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Ratify.C_RatifyState'46'constructor_12021 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_9481
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_89
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
                                                                      = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                coe
                                                                  (let v11
                                                                         = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                             (coe v10) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                 (coe v11))))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                              (coe v11))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Enact.d_cc_838 (coe v7))))
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Enact.d_constitution_840
                                                      (coe v7))))
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Enact.d_pv_842 (coe v7))))
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Enact.d_pparams_844
                                                      (coe v7))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Enact.d_withdrawals_846
                                                         (coe v7))))))
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_228)))
                                                v8))
                                          (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.C_MkRatifyState_9481 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Ratify.C_RatifyState'46'constructor_12021
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2159 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_89
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
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
                                                                                 (let v16
                                                                                        = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                                  coe
                                                                                    (let v17
                                                                                           = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                               (coe
                                                                                                  v16) in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                                   (coe
                                                                                                      v17))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                                (coe
                                                                                                   v17))))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                     (coe v11)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
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
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
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
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                     (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                  () erased () erased
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                                                                  (coe
                                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                     (coe v14)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v15))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.C_MkEnactState_89 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2159
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
                                                                              (let v16
                                                                                     = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                               coe
                                                                                 (let v17
                                                                                        = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                            (coe
                                                                                               v16) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                                (coe
                                                                                                   v17))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                             (coe
                                                                                                v17))))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'Credential_16)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_26))))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v11))
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Base.du_map_128
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v12))
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
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v13))
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Base.du_map_128
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.d_Conv'45'PParams_24))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                     () erased () erased
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                     v14))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v16
                                                                            = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
                                                                      coe
                                                                        (let v17
                                                                               = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
                                                                                   (coe v16) in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200
                                                                                    (coe v17)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                       (coe v17))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                                    (coe v17))))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_28)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12))
                                                                  (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                                                                     (coe v15)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v7)
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
                                                         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_228)))
                                                (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38
                                                   (coe v8))))
                                          (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Epoch.epoch-step
epochStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_EpochState_3283 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Empty_8
    T_EpochState_3283
epochStep = coe d_epoch'45'step_160
d_epoch'45'step_160 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_EpochState_3283 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Empty_8
    T_EpochState_3283
d_epoch'45'step_160 ~v0 = du_epoch'45'step_160
du_epoch'45'step_160 ::
  T_EpochState_3283 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_ComputationResult_46
    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_Empty_8
    T_EpochState_3283
du_epoch'45'step_160
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'EpochState_158)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_iConvNat_12)
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_88
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes.d_Conv'45''8869'_20)
               (coe d_Conv'45'EpochState_158))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_Computational'45'EPOCH_2162
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_652
               (coe
                  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Ledger.Conway.Foreign.HSLedger.Epoch.Snapshot
d_Snapshot_353 = ()
type T_Snapshot_353 = Snapshot
pattern C_MkSnapshot_355 a0 a1 = MkSnapshot a0 a1
check_MkSnapshot_355 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_533
    Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.T_HSMap_18
    MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Address.T_Credential_533
    Integer ->
  T_Snapshot_353
check_MkSnapshot_355 = MkSnapshot
cover_Snapshot_353 :: Snapshot -> ()
cover_Snapshot_353 x
  = case x of
      MkSnapshot _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.Snapshots
d_Snapshots_1647 = ()
type T_Snapshots_1647 = Snapshots
pattern C_MkSnapshots_1649 a0 a1 a2 a3 = MkSnapshots a0 a1 a2 a3
check_MkSnapshots_1649 ::
  T_Snapshot_353 ->
  T_Snapshot_353 -> T_Snapshot_353 -> Integer -> T_Snapshots_1647
check_MkSnapshots_1649 = MkSnapshots
cover_Snapshots_1647 :: Snapshots -> ()
cover_Snapshots_1647 x
  = case x of
      MkSnapshots _ _ _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Epoch.EpochState
d_EpochState_3283 = ()
type T_EpochState_3283 = EpochState
pattern C_MkEpochState_3285 a0 a1 a2 a3 a4 = MkEpochState a0 a1 a2 a3 a4
check_MkEpochState_3285 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.PParams.T_Acnt_9605 ->
  T_Snapshots_1647 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ledger.T_LState_2717 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Enact.T_EnactState_87 ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Ratify.T_RatifyState_9479 ->
  T_EpochState_3283
check_MkEpochState_3285 = MkEpochState
cover_EpochState_3283 :: EpochState -> ()
cover_EpochState_3283 x
  = case x of
      MkEpochState _ _ _ _ _ -> ()
