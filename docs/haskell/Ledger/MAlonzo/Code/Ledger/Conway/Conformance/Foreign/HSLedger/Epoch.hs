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

module MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch where

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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Prelude

import GHC.Generics (Generic)
data Snapshot = MkSnapshot {stake :: (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.Credential Integer), delegations :: (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.Credential Integer)}
  deriving (Show, Eq, Generic)
data Snapshots = MkSnapshots {mark :: MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.Snapshot, set :: MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.Snapshot, go :: MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.Snapshot, feeSS :: Integer}
  deriving (Show, Eq, Generic)
data EpochState = MkEpochState {esAcnt :: MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.Acnt, esSs :: MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.Snapshots, esLs :: MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger.LState, esEs :: MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.EnactState, esFut :: MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.RatifyState}
  deriving (Show, Eq, Generic)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch._.EpochState
d_EpochState_22 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch._.Snapshot
d_Snapshot_36 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch._.Snapshots
d_Snapshots_38 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch._.EpochState.acnt
d_acnt_80 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150
d_acnt_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_acnt_2310 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch._.EpochState.es
d_es_82 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_es_82 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_es_2316 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch._.EpochState.fut
d_fut_84 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022
d_fut_84 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_fut_2318 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch._.EpochState.ls
d_ls_86 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2148
d_ls_86 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ls_2314 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch._.EpochState.ss
d_ss_88 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_EpochState_2298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278
d_ss_88 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_ss_2312 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch._.Snapshot.delegations
d_delegations_112 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch._.Snapshot.stake
d_stake_114 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch._.Snapshots.feeSS
d_feeSS_118 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  Integer
d_feeSS_118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2294 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch._.Snapshots.go
d_go_120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2266
d_go_120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2292 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch._.Snapshots.mark
d_mark_122 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2266
d_mark_122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2288 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch._.Snapshots.set
d_set_124 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshots_2278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Epoch.T_Snapshot_2266
d_set_124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2290 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.Snapshot
d_Snapshot_133 = ()
type T_Snapshot_133 = Snapshot
pattern C_MkSnapshot_135 a0 a1 = MkSnapshot a0 a1
check_MkSnapshot_135 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_HSMap_20
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.T_Credential_27
    Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_HSMap_20
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.T_Credential_27
    Integer ->
  T_Snapshot_133
check_MkSnapshot_135 = MkSnapshot
cover_Snapshot_133 :: Snapshot -> ()
cover_Snapshot_133 x
  = case x of
      MkSnapshot _ _ -> ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.HsTy-Snapshot
d_HsTy'45'Snapshot_152 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Snapshot_152 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.Conv-Snapshot
d_Conv'45'Snapshot_154 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Snapshot_154
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276 v1 v2
                -> coe
                     C_MkSnapshot_135
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
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
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
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkSnapshot_135 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v3
                                  = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                          (coe v3))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                       (coe v3)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                        (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                           (coe v1)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v3
                                  = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                          (coe v3))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                       (coe v3)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                        (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                           (coe v2)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.HsTy-Snapshots
d_HsTy'45'Snapshots_156 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Snapshots_156 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.Conv-Snapshots
d_Conv'45'Snapshots_158 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Snapshots_158
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2296 v1 v2 v3 v4
                -> coe
                     C_MkSnapshots_1411
                     (coe
                        C_MkSnapshot_135
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
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                    (coe v1)))))
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
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                    (coe v1))))))
                     (coe
                        C_MkSnapshot_135
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
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                    (coe v2)))))
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
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                    (coe v2))))))
                     (coe
                        C_MkSnapshot_135
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
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                    (coe v3)))))
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
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                    (coe v3))))))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkSnapshots_1411 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2296
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276 v6 v7
                                     -> coe
                                          C_MkSnapshot_135
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
                                                   (coe v6))))
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
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkSnapshot_135 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276 v6 v7
                                     -> coe
                                          C_MkSnapshot_135
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
                                                   (coe v6))))
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
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkSnapshot_135 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276 v6 v7
                                     -> coe
                                          C_MkSnapshot_135
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
                                                   (coe v6))))
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
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkSnapshot_135 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                (coe v7)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.HsTy-EpochState
d_HsTy'45'EpochState_160 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'EpochState_160 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.Conv-EpochState
d_Conv'45'EpochState_162 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'EpochState_162
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2320 v1 v2 v3 v4 v5
                -> coe
                     C_MkEpochState_3005
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.C_MkAcnt_9607
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
                           (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_reserves_158
                           (coe v1)))
                     (coe
                        C_MkSnapshots_1411
                        (coe
                           C_MkSnapshot_135
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
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2288
                                          (coe v2))))))
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
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_mark_2288
                                          (coe v2)))))))
                        (coe
                           C_MkSnapshot_135
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
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2290
                                          (coe v2))))))
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
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_set_2290
                                          (coe v2)))))))
                        (coe
                           C_MkSnapshot_135
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
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2292
                                          (coe v2))))))
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
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_go_2292
                                          (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_feeSS_2294
                           (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger.C_MkLState_2805
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo.C_MkUTxOState_1255
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_18)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_22))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                         (coe
                                                            (\ v6 ->
                                                               coe
                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                         (coe
                                                            (\ v6 ->
                                                               coe
                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                         (coe
                                                            (\ v6 ->
                                                               coe
                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                         (coe
                                                            (\ v6 ->
                                                               coe
                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'HashedTimelock_22)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                         (coe
                                                            (\ v6 ->
                                                               coe
                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                         (coe
                                                            (\ v6 ->
                                                               coe
                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))))))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1978
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                          (coe v3))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1980
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
                                          (coe v3))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1984
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2156
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
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                           (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2158
                              (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert.C_MkCertState_65
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297
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
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                (coe v3)))))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                (coe v3)))))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                (coe v3)))))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2160
                                                (coe v3))))))))))
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
                                          (let v6
                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                         (coe v6))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                      (coe v6)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868 (coe v4))))
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
                                       (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                 (coe v4))))
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
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872 (coe v4))))
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
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                 (coe v4))))
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
                                    (coe v4))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
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
                                             (let v6
                                                    = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                            (coe v6))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                         (coe v6)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                 (coe
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                       (coe v5)))))
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
                                          (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                          (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                 (coe
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                       (coe v5)))))
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
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                       (coe v5)))))
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
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                       (coe v5)))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030
                                          (coe v5)))))))
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
                              (MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
                                 (coe v5))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_delay_2034
                           (coe v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkEpochState_3005 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2320
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_'10214'_'44'_'10215''7491'_160 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.C_MkAcnt_9607
                                          (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.C_MkAcnt_9607 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_'10214'_'44'_'10215''7491'_160
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
                                   MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2296 v7 v8 v9 v10
                                     -> coe
                                          C_MkSnapshots_1411
                                          (coe
                                             C_MkSnapshot_135
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                                         (coe v7)))))
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                                         (coe v7))))))
                                          (coe
                                             C_MkSnapshot_135
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                                         (coe v8)))))
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                                         (coe v8))))))
                                          (coe
                                             C_MkSnapshot_135
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_stake_2272
                                                         (coe v9)))))
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Epoch.d_delegations_2274
                                                         (coe v9))))))
                                          (coe v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   C_MkSnapshots_1411 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2296
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276 v12 v13
                                                          -> coe
                                                               C_MkSnapshot_135
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
                                                                        (coe v12))))
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
                                                                        (coe v13))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        C_MkSnapshot_135 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                    (coe v14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                 (coe v14)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                    (coe v14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                 (coe v14)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276 v12 v13
                                                          -> coe
                                                               C_MkSnapshot_135
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
                                                                        (coe v12))))
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
                                                                        (coe v13))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        C_MkSnapshot_135 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                    (coe v14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                 (coe v14)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                    (coe v14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                 (coe v14)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276 v12 v13
                                                          -> coe
                                                               C_MkSnapshot_135
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
                                                                        (coe v12))))
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
                                                                        (coe v13))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        C_MkSnapshot_135 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Epoch.C_'10214'_'44'_'10215''738'_2276
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                    (coe v14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                 (coe v14)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                    (coe v14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                 (coe v14)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                   MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2162 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger.C_MkLState_2805
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo.C_MkUTxOState_1255
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_18)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_22))
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
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
                                                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                           (coe
                                                                              (\ v10 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                           (coe
                                                                              (\ v10 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'HashedTimelock_22)
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                           (coe
                                                                              (\ v10 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                           (coe
                                                                              (\ v10 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))))))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1978
                                                         (coe v7)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1980
                                                (coe v7))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1982
                                                         (coe v7)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1984
                                                (coe v7)))
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
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert.C_MkCertState_65
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297
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
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                               (coe v9))))))
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                               (coe v9))))))
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
                                                               (coe v9)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
                                                               (coe v9)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                               (coe v9))))))
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
                                                               (coe v9))))))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger.C_MkLState_2805 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2162
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1986 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo.C_MkUTxOState_1255
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_18)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_22))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                             (coe
                                                                                                (\ v15 ->
                                                                                                   coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                             (coe
                                                                                                (\ v15 ->
                                                                                                   coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                             (coe
                                                                                                (\ v15 ->
                                                                                                   coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                             (coe
                                                                                                (\ v15 ->
                                                                                                   coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'HashedTimelock_22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                             (coe
                                                                                                (\ v15 ->
                                                                                                   coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                             (coe
                                                                                                (\ v15 ->
                                                                                                   coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))))))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v11))))
                                                               (coe v12)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
                                                               (coe v14)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Utxo.C_MkUTxOState_1255 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1986
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
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BaseAddr_18)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'BootstrapAddr_22))
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                       (coe
                                                                                          (\ v15 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                       (coe
                                                                                          (\ v15 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                       (coe
                                                                                          (\ v15 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                       (coe
                                                                                          (\ v15 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_98
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Transaction.d_Conv'45'HashedTimelock_22)
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                       (coe
                                                                                          (\ v15 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                       (coe
                                                                                          (\ v15 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))))))
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                     (coe v11)))
                                                               (coe v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v15
                                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                              (coe v15))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_330)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert.C_MkCertState_65
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297
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
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
                                                                              (coe v11)))))
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
                                                                              (coe v11)))))
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938
                                                                              (coe v11)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
                                                                              (coe v11))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866
                                                                              (coe v12)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
                                                                              (coe v12))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
                                                                              (coe v13)))))
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
                                                                              (coe v13)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
                                                                              (coe v13))))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Cert.C_MkCertState_65 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297
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
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v15))))
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
                                                                                             (coe
                                                                                                v16))))
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
                                                                                             (coe
                                                                                                v17))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v18))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkDState_6297 v15 v16 v17 v18
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                         (coe
                                                                                                            v19))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                      (coe
                                                                                                         v19)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_150))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                         (coe
                                                                                                            v19))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                      (coe
                                                                                                         v19)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                         (coe
                                                                                                            v19))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                      (coe
                                                                                                         v19)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                          (coe
                                                                                             v17)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v19
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                                   (coe
                                                                                                      v19))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'10215''7510'_870 v15 v16
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v15))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v16))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkPState_2485 v15 v16
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'10215''7510'_870
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_68))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_958 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367
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
                                                                                             (coe
                                                                                                v15))))
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
                                                                                             (coe
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.C_MkHSMap_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.C_MkGState_16367 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7515'_958
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                                                                                                   (coe
                                                                                                      v18))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_72)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                                       (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                   MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125 v7 v8 v9 v10 v11
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
                                                            (let v12
                                                                   = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                           (coe v12))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                        (coe v12)))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                (coe
                                                   (\ v12 ->
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
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                         (coe
                                                            (\ v12 ->
                                                               coe
                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                         (coe
                                                            (\ v12 ->
                                                               coe
                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                (coe
                                                   (\ v12 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                (coe
                                                   (\ v12 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                (coe
                                                   (\ v12 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                (coe v10)))
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
                                                   (coe v11))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57 v7 v8 v9 v10 v11
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
                                                         (let v12
                                                                = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                        (coe v12))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                     (coe v12)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                             (coe
                                                (\ v12 ->
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
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                      (coe
                                                         (\ v12 ->
                                                            coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                      (coe
                                                         (\ v12 ->
                                                            coe
                                                              MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                             (coe
                                                (\ v12 ->
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
                                                (\ v12 ->
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
                                                v9))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                             (coe
                                                (\ v12 ->
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
                                                v10))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v12
                                                       = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
                                                            (coe v12)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                               (coe v12))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                            (coe v12)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
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
                                   MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_'10214'_'44'_'44'_'10215''691'_2036 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                                          (coe
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
                                                                      = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                              (coe v10))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874
                                                      (coe v7))))
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
                                                         (coe v7))))))
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
                                                v8))
                                          (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.C_MkRatifyState_4845 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_'10214'_'44'_'44'_'10215''691'_2036
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Enact.C_EnactState'46'constructor_2125 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_74
                                                                                 (let v16
                                                                                        = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                                (coe
                                                                                                   v16))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                             (coe
                                                                                                v16)))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                              (coe
                                                                                 (\ v16 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                              (coe
                                                                                 (\ v16 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                     (coe v14)))
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
                                                                        (coe v15))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.C_MkEnactState_57 v11 v12 v13 v14 v15
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
                                                                              (let v16
                                                                                     = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                             (coe
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                          (coe
                                                                                             v16)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'Credential_14)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_28))))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                           (coe
                                                                              (\ v16 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                           (coe
                                                                              (\ v16 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.d_Conv'45'PParams_26))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))))
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
                                                                            = MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
                                                                                 (coe v16)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                                 (coe v16)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_26)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14))
                                                                  (MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.d_assocList_28
                                                                     (coe v15)))
                                                        _ -> MAlonzo.RTE.mazUnreachableError)))
                                             v7)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_fromList_416
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1458
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
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
                                                   (coe v8))))
                                          (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.epoch-step
epochStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_EpochState_3003 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_ComputationResult_48
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_Empty_10
    T_EpochState_3003
epochStep = coe d_epoch'45'step_164
d_epoch'45'step_164 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_EpochState_3003 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_ComputationResult_48
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_Empty_10
    T_EpochState_3003
d_epoch'45'step_164 ~v0 = du_epoch'45'step_164
du_epoch'45'step_164 ::
  T_EpochState_3003 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_ComputationResult_48
    MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSTypes.T_Empty_10
    T_EpochState_3003
du_epoch'45'step_164
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'EpochState_162)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_iConvNat_14)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_90
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes.d_Conv'45''8869'_22)
               (coe d_Conv'45'EpochState_162))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Epoch.Properties.du_Computational'45'EPOCH_2168
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core.d_HSTransactionStructure_892))
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.Snapshots
d_Snapshots_1409 = ()
type T_Snapshots_1409 = Snapshots
pattern C_MkSnapshots_1411 a0 a1 a2 a3 = MkSnapshots a0 a1 a2 a3
check_MkSnapshots_1411 ::
  T_Snapshot_133 ->
  T_Snapshot_133 -> T_Snapshot_133 -> Integer -> T_Snapshots_1409
check_MkSnapshots_1411 = MkSnapshots
cover_Snapshots_1409 :: Snapshots -> ()
cover_Snapshots_1409 x
  = case x of
      MkSnapshots _ _ _ _ -> ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Epoch.EpochState
d_EpochState_3003 = ()
type T_EpochState_3003 = EpochState
pattern C_MkEpochState_3005 a0 a1 a2 a3 a4 = MkEpochState a0 a1 a2 a3 a4
check_MkEpochState_3005 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.PParams.T_Acnt_9605 ->
  T_Snapshots_1409 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ledger.T_LState_2803 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Enact.T_EnactState_55 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Ratify.T_RatifyState_4843 ->
  T_EpochState_3003
check_MkEpochState_3005 = MkEpochState
cover_EpochState_3003 :: EpochState -> ()
cover_EpochState_3003 x
  = case x of
      MkEpochState _ _ _ _ _ -> ()
