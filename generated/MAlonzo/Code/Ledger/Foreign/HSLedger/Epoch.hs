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

module MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch where

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
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.Epoch.Properties
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Address
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Certs
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.PParams
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo
import qualified MAlonzo.Code.Ledger.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude

import GHC.Generics (Generic)
data Snapshot = MkSnapshot {stake :: (MAlonzo.Code.Ledger.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Foreign.HSLedger.Address.Credential Integer), delegations :: (MAlonzo.Code.Ledger.Foreign.HSTypes.HSMap MAlonzo.Code.Ledger.Foreign.HSLedger.Address.Credential Integer)}
  deriving (Show, Eq, Generic)
data Snapshots = MkSnapshots {mark :: MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.Snapshot, set :: MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.Snapshot, go :: MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.Snapshot, feeSS :: Integer}
  deriving (Show, Eq, Generic)
data EpochState = MkEpochState {esAcnt :: MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.Acnt, esSs :: MAlonzo.Code.Ledger.Foreign.HSLedger.Epoch.Snapshots, esLs :: MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.LState, esEs :: MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.EnactState, esFut :: MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify.RatifyState}
  deriving (Show, Eq, Generic)
-- Ledger.Foreign.HSLedger.Epoch._.EpochState
d_EpochState_18 = ()
-- Ledger.Foreign.HSLedger.Epoch._.Snapshot
d_Snapshot_32 = ()
-- Ledger.Foreign.HSLedger.Epoch._.Snapshots
d_Snapshots_34 = ()
-- Ledger.Foreign.HSLedger.Epoch._.EpochState.acnt
d_acnt_78 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_acnt_78 v0 = coe MAlonzo.Code.Ledger.Epoch.d_acnt_2314 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.EpochState.es
d_es_80 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_es_80 v0 = coe MAlonzo.Code.Ledger.Epoch.d_es_2320 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.EpochState.fut
d_fut_82 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022
d_fut_82 v0 = coe MAlonzo.Code.Ledger.Epoch.d_fut_2322 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.EpochState.ls
d_ls_84 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2152
d_ls_84 v0 = coe MAlonzo.Code.Ledger.Epoch.d_ls_2318 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.EpochState.ss
d_ss_86 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2302 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282
d_ss_86 v0 = coe MAlonzo.Code.Ledger.Epoch.d_ss_2316 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.Snapshot.delegations
d_delegations_110 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_110 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_delegations_2278 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.Snapshot.stake
d_stake_112 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_112 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_stake_2276 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.Snapshots.feeSS
d_feeSS_116 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282 -> Integer
d_feeSS_116 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_feeSS_2298 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.Snapshots.go
d_go_118 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2270
d_go_118 v0 = coe MAlonzo.Code.Ledger.Epoch.d_go_2296 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.Snapshots.mark
d_mark_120 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2270
d_mark_120 v0 = coe MAlonzo.Code.Ledger.Epoch.d_mark_2292 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.Snapshots.set
d_set_122 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2282 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2270
d_set_122 v0 = coe MAlonzo.Code.Ledger.Epoch.d_set_2294 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch.Snapshot
d_Snapshot_133 = ()
type T_Snapshot_133 = Snapshot
pattern C_MkSnapshot_135 a0 a1 = MkSnapshot a0 a1
check_MkSnapshot_135 ::
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.T_Credential_27
    Integer ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_HSMap_16
    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.T_Credential_27
    Integer ->
  T_Snapshot_133
check_MkSnapshot_135 = MkSnapshot
cover_Snapshot_133 :: Snapshot -> ()
cover_Snapshot_133 x
  = case x of
      MkSnapshot _ _ -> ()
-- Ledger.Foreign.HSLedger.Epoch.HsTy-Snapshot
d_HsTy'45'Snapshot_150 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Snapshot_150 = erased
-- Ledger.Foreign.HSLedger.Epoch.Conv-Snapshot
d_Conv'45'Snapshot_152 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Snapshot_152
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280 v1 v2
                -> coe
                     C_MkSnapshot_135
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
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
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
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkSnapshot_135 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v3
                                  = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v3))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v3)))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24 (coe v1)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                           (let v3
                                  = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_200
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v3))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v3)))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                           (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                        (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24 (coe v2)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Epoch.HsTy-Snapshots
d_HsTy'45'Snapshots_154 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Snapshots_154 = erased
-- Ledger.Foreign.HSLedger.Epoch.Conv-Snapshots
d_Conv'45'Snapshots_156 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Snapshots_156
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2300 v1 v2 v3 v4
                -> coe
                     C_MkSnapshots_1411
                     (coe
                        C_MkSnapshot_135
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
                                 (coe MAlonzo.Code.Ledger.Epoch.d_stake_2276 (coe v1)))))
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
                                 (coe MAlonzo.Code.Ledger.Epoch.d_delegations_2278 (coe v1))))))
                     (coe
                        C_MkSnapshot_135
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
                                 (coe MAlonzo.Code.Ledger.Epoch.d_stake_2276 (coe v2)))))
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
                                 (coe MAlonzo.Code.Ledger.Epoch.d_delegations_2278 (coe v2))))))
                     (coe
                        C_MkSnapshot_135
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
                                 (coe MAlonzo.Code.Ledger.Epoch.d_stake_2276 (coe v3)))))
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
                                 (coe MAlonzo.Code.Ledger.Epoch.d_delegations_2278 (coe v3))))))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkSnapshots_1411 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2300
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280 v6 v7
                                     -> coe
                                          C_MkSnapshot_135
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
                                                   (coe v6))))
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
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkSnapshot_135 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                   MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280 v6 v7
                                     -> coe
                                          C_MkSnapshot_135
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
                                                   (coe v6))))
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
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkSnapshot_135 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                   MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280 v6 v7
                                     -> coe
                                          C_MkSnapshot_135
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
                                                   (coe v6))))
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
                                                   (coe v7))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v5 ->
                                 case coe v5 of
                                   C_MkSnapshot_135 v6 v7
                                     -> coe
                                          MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                (coe v6)))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v8
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                               (coe v8))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                            (coe v8)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                (coe v7)))
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v3)
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Epoch.HsTy-EpochState
d_HsTy'45'EpochState_158 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'EpochState_158 = erased
-- Ledger.Foreign.HSLedger.Epoch.Conv-EpochState
d_Conv'45'EpochState_160 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'EpochState_160
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2324 v1 v2 v3 v4 v5
                -> coe
                     C_MkEpochState_3005
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_MkAcnt_9595
                        (coe MAlonzo.Code.Ledger.PParams.d_treasury_152 (coe v1))
                        (coe MAlonzo.Code.Ledger.PParams.d_reserves_154 (coe v1)))
                     (coe
                        C_MkSnapshots_1411
                        (coe
                           C_MkSnapshot_135
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
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_stake_2276
                                       (coe MAlonzo.Code.Ledger.Epoch.d_mark_2292 (coe v2))))))
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
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_delegations_2278
                                       (coe MAlonzo.Code.Ledger.Epoch.d_mark_2292 (coe v2)))))))
                        (coe
                           C_MkSnapshot_135
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
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_stake_2276
                                       (coe MAlonzo.Code.Ledger.Epoch.d_set_2294 (coe v2))))))
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
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_delegations_2278
                                       (coe MAlonzo.Code.Ledger.Epoch.d_set_2294 (coe v2)))))))
                        (coe
                           C_MkSnapshot_135
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
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_stake_2276
                                       (coe MAlonzo.Code.Ledger.Epoch.d_go_2296 (coe v2))))))
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
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_delegations_2278
                                       (coe MAlonzo.Code.Ledger.Epoch.d_go_2296 (coe v2)))))))
                        (coe MAlonzo.Code.Ledger.Epoch.d_feeSS_2298 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkLState_8349
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo.C_MkUTxOState_1713
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
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
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
                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                       (coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160 (coe v3))))))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.d_fees_1982
                              (coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160 (coe v3)))
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
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                       (coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160 (coe v3))))))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.d_donations_1986
                              (coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160 (coe v3))))
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
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                           (MAlonzo.Code.Ledger.Ledger.d_govSt_2162 (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkCertState_4865
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2169
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
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_voteDelegs_920
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_dState_960
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                (coe v3)))))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_stakeDelegs_922
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_dState_960
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                (coe v3)))))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_rewards_924
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_dState_960
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_pools_934
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_pState_962
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_retiring_936
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_pState_962
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_419
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
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_dreps_946
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_gState_964
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                (coe v3)))))))
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
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_ccHotKeys_948
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_gState_964
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_certState_2164
                                                (coe v3))))))))))
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
                                          (let v6
                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                         (coe v6))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                      (coe v6)))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                              (coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v4))))
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
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                              (coe MAlonzo.Code.Ledger.Enact.d_constitution_866 (coe v4))))
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
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                              (coe MAlonzo.Code.Ledger.Enact.d_pv_868 (coe v4))))
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
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                              (coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v4))))
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
                                 (coe MAlonzo.Code.Ledger.Enact.d_withdrawals_872 (coe v4))))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
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
                                             (let v6
                                                    = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                            (coe v6))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                         (coe v6)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                 (coe
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_cc_864
                                    (coe MAlonzo.Code.Ledger.Ratify.d_es_2030 (coe v5)))))
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
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                 (coe
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_constitution_866
                                    (coe MAlonzo.Code.Ledger.Ratify.d_es_2030 (coe v5)))))
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
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_pv_868
                                    (coe MAlonzo.Code.Ledger.Ratify.d_es_2030 (coe v5)))))
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
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_pparams_870
                                    (coe MAlonzo.Code.Ledger.Ratify.d_es_2030 (coe v5)))))
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
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_withdrawals_872
                                       (coe MAlonzo.Code.Ledger.Ratify.d_es_2030 (coe v5)))))))
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
                              (MAlonzo.Code.Ledger.Ratify.d_removed_2032 (coe v5))))
                        (coe MAlonzo.Code.Ledger.Ratify.d_delay_2034 (coe v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkEpochState_3005 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2324
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_MkAcnt_9595
                                          (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.C_MkAcnt_9595 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156
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
                                   MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2300 v7 v8 v9 v10
                                     -> coe
                                          C_MkSnapshots_1411
                                          (coe
                                             C_MkSnapshot_135
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_stake_2276
                                                         (coe v7)))))
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_delegations_2278
                                                         (coe v7))))))
                                          (coe
                                             C_MkSnapshot_135
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_stake_2276
                                                         (coe v8)))))
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_delegations_2278
                                                         (coe v8))))))
                                          (coe
                                             C_MkSnapshot_135
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_stake_2276
                                                         (coe v9)))))
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Epoch.d_delegations_2278
                                                         (coe v9))))))
                                          (coe v10)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   C_MkSnapshots_1411 v7 v8 v9 v10
                                     -> coe
                                          MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2300
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280 v12 v13
                                                          -> coe
                                                               C_MkSnapshot_135
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
                                                                        (coe v12))))
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
                                                                        (coe v13))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        C_MkSnapshot_135 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                    (coe v14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                 (coe v14)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                    (coe v14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                 (coe v14)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                                        MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280 v12 v13
                                                          -> coe
                                                               C_MkSnapshot_135
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
                                                                        (coe v12))))
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
                                                                        (coe v13))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        C_MkSnapshot_135 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                    (coe v14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                 (coe v14)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                    (coe v14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                 (coe v14)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                                        MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280 v12 v13
                                                          -> coe
                                                               C_MkSnapshot_135
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
                                                                        (coe v12))))
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
                                                                        (coe v13))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v11 ->
                                                      case coe v11 of
                                                        C_MkSnapshot_135 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2280
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                    (coe v14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                 (coe v14)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                     (coe v12)))
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v14
                                                                            = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                    (coe v14))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                 (coe v14)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                   MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2166 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkLState_8349
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo.C_MkUTxOState_1713
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
                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
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
                                                         MAlonzo.Code.Ledger.Utxo.d_utxo_1980
                                                         (coe v7)))))
                                             (coe MAlonzo.Code.Ledger.Utxo.d_fees_1982 (coe v7))
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
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Utxo.d_deposits_1984
                                                         (coe v7)))))
                                             (coe
                                                MAlonzo.Code.Ledger.Utxo.d_donations_1986 (coe v7)))
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
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkCertState_4865
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2169
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
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Certs.d_voteDelegs_920
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_dState_960
                                                               (coe v9))))))
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Certs.d_stakeDelegs_922
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_dState_960
                                                               (coe v9))))))
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Certs.d_rewards_924
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_dState_960
                                                               (coe v9)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Certs.d_pools_934
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_pState_962
                                                               (coe v9))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Certs.d_retiring_936
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_pState_962
                                                               (coe v9)))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_419
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Certs.d_dreps_946
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_gState_964
                                                               (coe v9))))))
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
                                                         (coe
                                                            MAlonzo.Code.Ledger.Certs.d_ccHotKeys_948
                                                            (coe
                                                               MAlonzo.Code.Ledger.Certs.d_gState_964
                                                               (coe v9))))))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkLState_8349 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2166
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1988 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo.C_MkUTxOState_1713
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
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
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
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v13))))
                                                               (coe v14)
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Utxo.C_MkUTxOState_1713 v11 v12 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1988
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
                                                                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Transaction.d_Conv'45'Timelock_14)
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
                                                                  (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                     (coe v11)))
                                                               (coe v12)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                     (let v15
                                                                            = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_govStructure_2394
                                                                              (coe v15))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'DepositPurpose_94)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                             v8)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_966 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkCertState_4865
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2169
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
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Certs.d_voteDelegs_920
                                                                              (coe v11)))))
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Certs.d_stakeDelegs_922
                                                                              (coe v11)))))
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Certs.d_rewards_924
                                                                              (coe v11))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Certs.d_pools_934
                                                                              (coe v12)))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Certs.d_retiring_936
                                                                              (coe v12))))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_419
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Certs.d_dreps_946
                                                                              (coe v13)))))
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
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Certs.d_ccHotKeys_948
                                                                              (coe v13))))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkCertState_4865 v11 v12 v13
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_966
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_926 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2169
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
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v15))))
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
                                                                                             (coe
                                                                                                v16))))
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
                                                                                             (coe
                                                                                                v17))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkDState_2169 v15 v16 v17
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_926
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'VDeleg_146))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v16)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v18
                                                                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                         (coe
                                                                                                            v18))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                      (coe
                                                                                                         v18)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v17)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)))
                                                                  v11)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_938 v15 v16
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v15))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Foreign.HSTypes.C_MkHSMap_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                                                                                             (coe
                                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v16))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.C_MkPState_2589 v15 v16
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_938
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Certs.d_Conv'45'PoolParams_90))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                                                             MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_950 v15 v16
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_419
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
                                                                                             (coe
                                                                                                v15))))
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
                                                                                             (coe
                                                                                                v16))))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                     (coe
                                                                        (\ v14 ->
                                                                           case coe v14 of
                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.C_MkGState_419 v15 v16
                                                                               -> coe
                                                                                    MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_950
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v17
                                                                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                         (coe
                                                                                                            v17))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                      (coe
                                                                                                         v17)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                                                          (let v17
                                                                                                 = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                         (coe
                                                                                                            v17))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                      (coe
                                                                                                         v17)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                          (coe
                                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)))
                                                                                       (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
                                                                                          (coe
                                                                                             v16)))
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
                                   MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125 v7 v8 v9 v10 v11
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
                                                            (let v12
                                                                   = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                           (coe v12))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                        (coe v12)))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                (coe
                                                   (\ v12 ->
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
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                (coe
                                                   (\ v12 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                (coe
                                                   (\ v12 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                      MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                (coe
                                                   (\ v12 ->
                                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                (coe v10)))
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
                                                   (coe v11))))
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57 v7 v8 v9 v10 v11
                                     -> coe
                                          MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
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
                                                         (let v12
                                                                = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                        (coe v12))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                     (coe v12)))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                             (coe
                                                (\ v12 ->
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
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                             (coe
                                                (\ v12 ->
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
                                                (\ v12 ->
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
                                                v9))
                                          (coe
                                             MAlonzo.Code.Data.Product.Base.du_map_128
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                             (coe
                                                (\ v12 ->
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
                                                v10))
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114
                                                (let v12
                                                       = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232
                                                            (coe v12)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                         (coe
                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                               (coe v12))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                            (coe v12)))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                (coe
                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                             (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                   MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_2036 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify.C_MkRatifyState_4845
                                          (coe
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
                                                                      = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                              (coe v10))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1256
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v7))))
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Enact.d_constitution_866
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Enact.d_pv_868 (coe v7))))
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
                                                   (coe
                                                      MAlonzo.Code.Ledger.Enact.d_pparams_870
                                                      (coe v7))))
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
                                                      (coe
                                                         MAlonzo.Code.Ledger.Enact.d_withdrawals_872
                                                         (coe v7))))))
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
                                                v8))
                                          (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify.C_MkRatifyState_4845 v7 v8 v9
                                     -> coe
                                          MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_2036
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57
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
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'HSMap_70
                                                                                 (let v16
                                                                                        = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                                (coe
                                                                                                   v16))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                             (coe
                                                                                                v16)))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                                     (coe
                                                                        (\ v16 ->
                                                                           MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                             (coe
                                                                                MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                     (coe v14)))
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
                                                                        (coe v15))))
                                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                                (coe
                                                   (\ v10 ->
                                                      case coe v10 of
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.C_MkEnactState_57 v11 v12 v13 v14 v15
                                                          -> coe
                                                               MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2125
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
                                                                              (let v16
                                                                                     = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                             (coe
                                                                                                v16))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                          (coe
                                                                                             v16)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'Credential_10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45'Rational_24))))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.d_Conv'45'PParams_22))
                                                                  (coe
                                                                     (\ v16 ->
                                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))))
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
                                                                            = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866 in
                                                                      coe
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232
                                                                                 (coe v16)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                    (coe v16))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                                 (coe v16)))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Address.d_Conv'45'RwdAddr_22)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                                  (MAlonzo.Code.Ledger.Foreign.HSTypes.d_assocList_24
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
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Conv'45'GovActionState_326)))
                                                (MAlonzo.Code.Ledger.Foreign.HSTypes.d_elems_36
                                                   (coe v8))))
                                          (coe v9)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v5)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Epoch.epoch-step
epochStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_EpochState_3003 ->
  Integer ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Ledger.Foreign.HSTypes.T_Empty_6 T_EpochState_3003
epochStep = coe d_epoch'45'step_162
d_epoch'45'step_162 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  T_EpochState_3003 ->
  Integer ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Ledger.Foreign.HSTypes.T_Empty_6 T_EpochState_3003
d_epoch'45'step_162 ~v0 = du_epoch'45'step_162
du_epoch'45'step_162 ::
  T_EpochState_3003 ->
  Integer ->
  MAlonzo.Code.Ledger.Foreign.HSTypes.T_ComputationResult_44
    MAlonzo.Code.Ledger.Foreign.HSTypes.T_Empty_6 T_EpochState_3003
du_epoch'45'step_162
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
         (coe d_Conv'45'EpochState_160)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_130
            (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_iConvNat_10)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Conv'45'ComputationResult_86
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Conv'45''8869'_18)
               (coe d_Conv'45'EpochState_160))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Epoch.Properties.du_Computational'45'EPOCH_2170
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_866))
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Ledger.Foreign.HSLedger.Epoch.Snapshots
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
-- Ledger.Foreign.HSLedger.Epoch.EpochState
d_EpochState_3003 = ()
type T_EpochState_3003 = EpochState
pattern C_MkEpochState_3005 a0 a1 a2 a3 a4 = MkEpochState a0 a1 a2 a3 a4
check_MkEpochState_3005 ::
  MAlonzo.Code.Ledger.Foreign.HSLedger.PParams.T_Acnt_9593 ->
  T_Snapshots_1409 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Ledger.T_LState_8347 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.T_EnactState_55 ->
  MAlonzo.Code.Ledger.Foreign.HSLedger.Ratify.T_RatifyState_4843 ->
  T_EpochState_3003
check_MkEpochState_3005 = MkEpochState
cover_EpochState_3003 :: EpochState -> ()
cover_EpochState_3003 x
  = case x of
      MkEpochState _ _ _ _ _ -> ()
