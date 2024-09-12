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
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.Epoch.Properties
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Enact
import qualified MAlonzo.Code.Ledger.Foreign.HSLedger.Gov
import qualified MAlonzo.Code.Ledger.Foreign.LedgerTypes
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude

-- Ledger.Foreign.HSLedger.Epoch._.EpochState
d_EpochState_18 = ()
-- Ledger.Foreign.HSLedger.Epoch._.Snapshot
d_Snapshot_32 = ()
-- Ledger.Foreign.HSLedger.Epoch._.Snapshots
d_Snapshots_34 = ()
-- Ledger.Foreign.HSLedger.Epoch._.EpochState.acnt
d_acnt_76 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2198 ->
  MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_acnt_76 v0 = coe MAlonzo.Code.Ledger.Epoch.d_acnt_2210 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.EpochState.es
d_es_78 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2198 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_es_78 v0 = coe MAlonzo.Code.Ledger.Epoch.d_es_2216 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.EpochState.fut
d_fut_80 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2198 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912
d_fut_80 v0 = coe MAlonzo.Code.Ledger.Epoch.d_fut_2218 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.EpochState.ls
d_ls_82 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2198 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_2048
d_ls_82 v0 = coe MAlonzo.Code.Ledger.Epoch.d_ls_2214 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.EpochState.ss
d_ss_84 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_2198 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2178
d_ss_84 v0 = coe MAlonzo.Code.Ledger.Epoch.d_ss_2212 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.Snapshot.delegations
d_delegations_108 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_108 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_delegations_2174 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.Snapshot.stake
d_stake_110 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2166 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_110 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_stake_2172 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.Snapshots.feeSS
d_feeSS_114 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2178 -> Integer
d_feeSS_114 v0
  = coe MAlonzo.Code.Ledger.Epoch.d_feeSS_2194 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.Snapshots.go
d_go_116 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2178 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2166
d_go_116 v0 = coe MAlonzo.Code.Ledger.Epoch.d_go_2192 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.Snapshots.mark
d_mark_118 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2178 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2166
d_mark_118 v0 = coe MAlonzo.Code.Ledger.Epoch.d_mark_2188 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch._.Snapshots.set
d_set_120 ::
  MAlonzo.Code.Ledger.Epoch.T_Snapshots_2178 ->
  MAlonzo.Code.Ledger.Epoch.T_Snapshot_2166
d_set_120 v0 = coe MAlonzo.Code.Ledger.Epoch.d_set_2190 (coe v0)
-- Ledger.Foreign.HSLedger.Epoch.Convertible-Snapshot
d_Convertible'45'Snapshot_148 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'Snapshot_148
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2176 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Snapshot'46'constructor_11537
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Snapshot'46'constructor_11537 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2176
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                           (let v3 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                            coe
                              (let v4 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v3)
                                    (coe v4))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                        (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34 (coe v1)))
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                           (let v3 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                            coe
                              (let v4 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142 (coe v3)
                                    (coe v4))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                           (coe
                              MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                        (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34 (coe v2)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Epoch.Convertible-Snapshots
d_Convertible'45'Snapshots_150 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'Snapshots_150
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2196 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Snapshots'46'constructor_11569
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Snapshot'46'constructor_11537
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Epoch.d_stake_2172 (coe v1)))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Epoch.d_delegations_2174 (coe v1))))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Snapshot'46'constructor_11537
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Epoch.d_stake_2172 (coe v2)))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Epoch.d_delegations_2174 (coe v2))))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Snapshot'46'constructor_11537
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Epoch.d_stake_2172 (coe v3)))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Epoch.d_delegations_2174 (coe v3))))))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Snapshots'46'constructor_11569 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2196
                     (coe
                        MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2176
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v5 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                               coe
                                 (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                       (coe v5) (coe v6))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stake_934 (coe v1))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v5 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                               coe
                                 (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                       (coe v5) (coe v6))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_delegations_936
                                 (coe v1)))))
                     (coe
                        MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2176
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v5 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                               coe
                                 (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                       (coe v5) (coe v6))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stake_934 (coe v2))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v5 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                               coe
                                 (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                       (coe v5) (coe v6))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_delegations_936
                                 (coe v2)))))
                     (coe
                        MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2176
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v5 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                               coe
                                 (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                       (coe v5) (coe v6))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stake_934 (coe v3))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v5 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                               coe
                                 (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                       (coe v5) (coe v6))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_delegations_936
                                 (coe v3)))))
                     (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Epoch.Convertible-EpochState
d_Convertible'45'EpochState_152 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'EpochState_152
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2220 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_EpochState'46'constructor_11647
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Acnt'46'constructor_11507
                                          (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Acnt'46'constructor_11507 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156
                                          (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Snapshots'46'constructor_11569
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Snapshot'46'constructor_11537
                           (coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_stake_2172
                                       (coe MAlonzo.Code.Ledger.Epoch.d_mark_2188 (coe v2))))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_delegations_2174
                                       (coe MAlonzo.Code.Ledger.Epoch.d_mark_2188 (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Snapshot'46'constructor_11537
                           (coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_stake_2172
                                       (coe MAlonzo.Code.Ledger.Epoch.d_set_2190 (coe v2))))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_delegations_2174
                                       (coe MAlonzo.Code.Ledger.Epoch.d_set_2190 (coe v2)))))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Snapshot'46'constructor_11537
                           (coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_stake_2172
                                       (coe MAlonzo.Code.Ledger.Epoch.d_go_2192 (coe v2))))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_delegations_2174
                                       (coe MAlonzo.Code.Ledger.Epoch.d_go_2192 (coe v2)))))))
                        (coe MAlonzo.Code.Ledger.Epoch.d_feeSS_2194 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_LState'46'constructor_11427
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_to_18
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v6 ->
                                    case coe v6 of
                                      MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882 v7 v8 v9 v10
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_UTxOState'46'constructor_9733
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Addr_54)
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_76
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                           (coe
                                                                              (\ v11 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                           (coe
                                                                              (\ v11 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                           (coe
                                                                              (\ v11 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                           (coe
                                                                              (\ v11 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Script_84)))))))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v7))))
                                             (coe v8)
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v6 ->
                                    coe
                                      MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                            (coe
                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                               erased () erased
                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Addr_54)
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                                  (coe
                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_76
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                              (coe
                                                                 (\ v7 ->
                                                                    coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                              (coe
                                                                 (\ v7 ->
                                                                    coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                              (coe
                                                                 (\ v7 ->
                                                                    coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                              (coe
                                                                 (\ v7 ->
                                                                    coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Script_84))))))
                                         (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_utxo_534
                                               (coe v6))))
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fees_536
                                         (coe v6))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                      (let v7
                                             = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_tokenAlgebra_250 in
                                       coe
                                         (coe
                                            MAlonzo.Code.Algebra.Bundles.d_ε_984
                                            (coe
                                               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                               (coe v7)))))))
                           (MAlonzo.Code.Ledger.Ledger.d_utxoSt_2056 (coe v3)))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                           () erased
                           (MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180)))
                           (MAlonzo.Code.Ledger.Ledger.d_govSt_2058 (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_CertState'46'constructor_11021
                           (coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_DState'46'constructor_10763
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_voteDelegs_898
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_dState_938
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_certState_2060
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_dState_938
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_certState_2060
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_rewards_902
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_dState_938
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_certState_2060
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_PState'46'constructor_10895
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PoolParams_520)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_pools_912
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_pState_940
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_certState_2060
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_retiring_914
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_pState_940
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_certState_2060
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_GState'46'constructor_10933
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10)))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_dreps_924
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_gState_942
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_certState_2060
                                                (coe v3)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926
                                          (coe
                                             MAlonzo.Code.Ledger.Certs.d_gState_942
                                             (coe
                                                MAlonzo.Code.Ledger.Ledger.d_certState_2060
                                                (coe v3))))))))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_EnactState'46'constructor_9819
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'HSMap_50
                                          (let v6
                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                     (coe
                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))) in
                                           coe
                                             (let v7
                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                   (coe v6) (coe v7))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Rational_28))))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                              (coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v4))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                       (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                              (coe MAlonzo.Code.Ledger.Enact.d_constitution_844 (coe v4))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                              (coe MAlonzo.Code.Ledger.Enact.d_pv_846 (coe v4))))
                        (coe
                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PParams_398))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                              (coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v4))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'RwdAddr_216)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v4))))))
                     (coe
                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_RatifyState'46'constructor_11271
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_EnactState'46'constructor_9819
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'HSMap_50
                                             (let v6
                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))) in
                                              coe
                                                (let v7
                                                       = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                      (coe v6) (coe v7))))
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Rational_28))))
                                 (coe
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_cc_842
                                    (coe MAlonzo.Code.Ledger.Ratify.d_es_1920 (coe v5)))))
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                          (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                          (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                 (coe
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_constitution_844
                                    (coe MAlonzo.Code.Ledger.Ratify.d_es_1920 (coe v5)))))
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                 (coe
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_pv_846
                                    (coe MAlonzo.Code.Ledger.Ratify.d_es_1920 (coe v5)))))
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.du_pair'45'toFFI_92)
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_map_128
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.d_to_18
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PParams_398))
                                 (coe
                                    (\ v6 ->
                                       MAlonzo.Code.Foreign.Convertible.d_to_18
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                                 (coe
                                    MAlonzo.Code.Ledger.Enact.d_pparams_848
                                    (coe MAlonzo.Code.Ledger.Ratify.d_es_1920 (coe v5)))))
                           (coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'RwdAddr_216)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_withdrawals_850
                                       (coe MAlonzo.Code.Ledger.Ratify.d_es_1920 (coe v5)))))))
                        (coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSSet_48
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_to_18
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_96
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180)))
                              (MAlonzo.Code.Ledger.Ratify.d_removed_1922 (coe v5))))
                        (coe MAlonzo.Code.Ledger.Ratify.d_delay_1924 (coe v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_EpochState'46'constructor_11647 v1 v2 v3 v4 v5
                -> coe
                     MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2220
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Acnt'46'constructor_11507
                                          (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v6 ->
                                 case coe v6 of
                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Acnt'46'constructor_11507 v7 v8
                                     -> coe
                                          MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156
                                          (coe v7) (coe v8)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v1)
                     (coe
                        MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''738''738'_2196
                        (coe
                           MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2176
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                 (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                  coe
                                    (let v7 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                          (coe v6) (coe v7))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stake_934
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_mark_948
                                       (coe v2)))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                 (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                  coe
                                    (let v7 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                          (coe v6) (coe v7))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_delegations_936
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_mark_948
                                       (coe v2))))))
                        (coe
                           MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2176
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                 (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                  coe
                                    (let v7 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                          (coe v6) (coe v7))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stake_934
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_set_950
                                       (coe v2)))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                 (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                  coe
                                    (let v7 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                          (coe v6) (coe v7))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_delegations_936
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_set_950
                                       (coe v2))))))
                        (coe
                           MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''738'_2176
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                 (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                  coe
                                    (let v7 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                          (coe v6) (coe v7))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stake_934
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_go_952 (coe v2)))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                 (let v6 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                  coe
                                    (let v7 = MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                          (coe v6) (coe v7))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_delegations_936
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_go_952
                                       (coe v2))))))
                        (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_feeSS_954 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2062
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                              (coe
                                 (\ v6 ->
                                    case coe v6 of
                                      MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882 v7 v8 v9 v10
                                        -> coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_UTxOState'46'constructor_9733
                                             (coe
                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_MkHSMap_36
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_80
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                                         (coe
                                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                            (coe
                                                               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Addr_54)
                                                            (coe
                                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_76
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                           (coe
                                                                              (\ v11 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                           (coe
                                                                              (\ v11 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                           (coe
                                                                              (\ v11 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                           (coe
                                                                              (\ v11 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Script_84)))))))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v7))))
                                             (coe v8)
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe
                                 (\ v6 ->
                                    coe
                                      MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.d_from_20
                                         (coe
                                            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                            (coe
                                               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 ()
                                               erased () erased
                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Addr_54)
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                                  (coe
                                                     MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                        (coe
                                                           MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Either_76
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                              (coe
                                                                 (\ v7 ->
                                                                    coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                              (coe
                                                                 (\ v7 ->
                                                                    coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                           (coe
                                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                              (coe
                                                                 (\ v7 ->
                                                                    coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                              (coe
                                                                 (\ v7 ->
                                                                    coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))))
                                                     (coe
                                                        MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Script_84))))))
                                         (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_utxo_534
                                               (coe v6))))
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fees_536
                                         (coe v6))
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_564
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1458
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                      (let v7
                                             = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_tokenAlgebra_250 in
                                       coe
                                         (coe
                                            MAlonzo.Code.Algebra.Bundles.d_ε_984
                                            (coe
                                               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                                               (coe v7)))))))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_utxoSt_898 (coe v3)))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                           () erased
                           (MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180)))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govSt_900 (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                           (coe
                              MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                    (let v6
                                           = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                (coe v6)))))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'VDeleg_74))
                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_voteDelegs_740
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_dState_806
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_certState_902
                                             (coe v3))))))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                    (let v6
                                           = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                (coe v6)))))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                    (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_stakeDelegs_742
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_dState_806
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_certState_902
                                             (coe v3))))))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                    (let v6
                                           = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                (coe v6)))))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                    (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_rewards_744
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_dState_806
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_certState_902
                                             (coe v3)))))))
                           (coe
                              MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_916
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PoolParams_520))
                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pools_770
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pState_808
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_certState_902
                                             (coe v3))))))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_retiring_772
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pState_808
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_certState_902
                                             (coe v3)))))))
                           (coe
                              MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_928
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                    (let v6
                                           = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                (coe v6)))))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                    (coe MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d___10))
                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_dreps_780
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_gState_810
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_certState_902
                                             (coe v3))))))
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                    (let v6
                                           = MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850 in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                   (coe v6))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                (coe v6)))))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)))
                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccHotKeys_782
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_gState_810
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_certState_902
                                             (coe v3)))))))))
                     (coe
                        MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2097
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'HSMap_50
                                       (let v6
                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                     (coe
                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))) in
                                        coe
                                          (let v7
                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                     (coe
                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                        (coe
                                                           MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                (coe v6) (coe v7))))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Rational_28))))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esCC_550 (coe v4))))
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                    (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                    (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esConstitution_552
                                 (coe v4))))
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esPV_554 (coe v4))))
                        (coe
                           MAlonzo.Code.Data.Product.Base.du_map_128
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PParams_398))
                           (coe
                              (\ v6 ->
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                      (coe
                                         MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                           (coe
                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esPParams_556
                                 (coe v4))))
                        (coe
                           MAlonzo.Code.Foreign.Convertible.d_from_20
                           (coe
                              MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                              (let v6
                                     = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                         (coe
                                            MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                               coe
                                 (let v7
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_khs_200
                                               (coe
                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))) in
                                  coe
                                    (let v8
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                               (coe
                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                  (coe
                                                     MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                          (coe v6) (coe v7) (coe v8)))))
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'RwdAddr_216)
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                              (coe
                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esWithdrawals_558
                                 (coe v4)))))
                     (coe
                        MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1926
                        (coe
                           MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_2097
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'HSMap_50
                                          (let v6
                                                 = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                     (coe
                                                        MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))) in
                                           coe
                                             (let v7
                                                    = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                           (coe
                                                              MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                   (coe v6) (coe v7))))
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Credential_70)
                                          (coe
                                             MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Rational_28))))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esCC_550
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_es_862 (coe v5)))))
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                       (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       (coe (\ v6 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esConstitution_552
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_es_862 (coe v5)))))
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esPV_554
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_es_862 (coe v5)))))
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_from_20
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'PParams_398))
                              (coe
                                 (\ v6 ->
                                    MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                         (coe
                                            MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))))
                              (coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esPParams_556
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_es_862 (coe v5)))))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_92
                                 (let v6
                                        = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                            (coe
                                               MAlonzo.Code.Ledger.Types.GovStructure.d_globalConstants_1050
                                               (coe
                                                  MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                  coe
                                    (let v7
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                     (coe
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8))) in
                                     coe
                                       (let v8
                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_536
                                                     (coe
                                                        MAlonzo.Code.Ledger.Foreign.HSLedger.Enact.d_HSGovStructure_8)) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
                                             (coe v6) (coe v7) (coe v8)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'RwdAddr_216)
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_assocList_34
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_esWithdrawals_558
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_es_862
                                       (coe v5))))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_fromList_416
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1458
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Foreign.Convertible.d_from_20
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_96
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                    (coe
                                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_70
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'TxId_88)
                                       (coe
                                          MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98))
                                    (coe
                                       MAlonzo.Code.Ledger.Foreign.HSLedger.Gov.d_Convertible'45'GovActionState_180)))
                              (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_elems_46
                                 (coe
                                    MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_removed_864
                                    (coe v5)))))
                        (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_delay_866 (coe v5)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Epoch.epoch-step
epochStep ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_EpochState_956 ->
  Integer ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_Empty_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_EpochState_956
epochStep = coe d_epoch'45'step_154
d_epoch'45'step_154 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_EpochState_956 ->
  Integer ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_Empty_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_EpochState_956
d_epoch'45'step_154 ~v0 = du_epoch'45'step_154
du_epoch'45'step_154 ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_EpochState_956 ->
  Integer ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_ComputationResult_12
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_Empty_6
    MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_EpochState_956
du_epoch'45'step_154
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
         (coe d_Convertible'45'EpochState_152)
         (coe
            MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Fun_108
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45'Ix_98)
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.du_Convertible'45'ComputationResult_214
               (coe
                  MAlonzo.Code.Ledger.Foreign.HSLedger.BaseTypes.d_Convertible'45''8869'_16)
               (coe d_Convertible'45'EpochState_152))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
         (coe
            MAlonzo.Code.Ledger.Epoch.Properties.du_Computational'45'EPOCH_2066
            (coe
               MAlonzo.Code.Ledger.Foreign.HSLedger.Core.d_HSTransactionStructure_850))
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
