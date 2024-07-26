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

module MAlonzo.Code.Ledger.Epoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Ext
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Utxo

-- _.Acnt
d_Acnt_32 a0 = ()
-- _.CertState
d_CertState_58 a0 = ()
-- _.Credential
d_Credential_64 a0 = ()
-- _.DState
d_DState_78 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_110 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_112 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_138 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_188
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))
-- _.DepositPurpose
d_DepositPurpose_178 a0 = ()
-- _.Deposits
d_Deposits_180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Deposits_180 = erased
-- _.Epoch
d_Epoch_186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_186 = erased
-- _.GState
d_GState_198 a0 = ()
-- _.THash
d_THash_244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_244 = erased
-- _.Number-Epoch
d_Number'45'Epoch_270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_270 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
-- _.PState
d_PState_294 a0 = ()
-- _.RwdAddr
d_RwdAddr_336 a0 = ()
-- _.TxOut
d_TxOut_402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_402 = erased
-- _.UTxO
d_UTxO_408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_408 = erased
-- _.VDeleg
d_VDeleg_414 a0 = ()
-- _.addEpoch
d_addEpoch_444 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_444 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
-- Ledger.Epoch._.GovState
d_GovState_1568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 -> ()
d_GovState_1568 = erased
-- Ledger.Epoch._.EnactState
d_EnactState_1668 a0 a1 = ()
-- Ledger.Epoch._.ccCreds
d_ccCreds_1670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_1670 ~v0 ~v1 = du_ccCreds_1670
du_ccCreds_1670 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_1670 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_806
-- Ledger.Epoch._.LState
d_LState_1726 a0 a1 = ()
-- Ledger.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1768 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1804 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1826 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1826 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1768 = erased
-- Ledger.Epoch._.RatifyState
d_RatifyState_1786 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs
d_StakeDistrs_1788 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_1884 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1884 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1802 (coe v0)
-- Ledger.Epoch._.HasCoin-Map
d_HasCoin'45'Map_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1904 ~v0 ~v1 = du_HasCoin'45'Map_1904
du_HasCoin'45'Map_1904 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1904 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1662 v1
-- Ledger.Epoch._.UTxOState
d_UTxOState_1924 a0 a1 = ()
-- Ledger.Epoch.RewardUpdate
d_RewardUpdate_2038 a0 a1 = ()
data T_RewardUpdate_2038
  = C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2064 Integer Integer
                                                     Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.RewardUpdate.Δt
d_Δt_2052 :: T_RewardUpdate_2038 -> Integer
d_Δt_2052 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2064 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δr
d_Δr_2054 :: T_RewardUpdate_2038 -> Integer
d_Δr_2054 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2064 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δf
d_Δf_2056 :: T_RewardUpdate_2038 -> Integer
d_Δf_2056 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2064 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.rs
d_rs_2058 ::
  T_RewardUpdate_2038 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2058 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2064 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.zeroSum
d_zeroSum_2062 ::
  T_RewardUpdate_2038 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zeroSum_2062 = erased
-- Ledger.Epoch.Snapshot
d_Snapshot_2066 a0 a1 = ()
data T_Snapshot_2066
  = C_'10214'_'44'_'10215''738'_2076 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.Snapshot.stake
d_stake_2072 ::
  T_Snapshot_2066 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2072 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2076 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshot.delegations
d_delegations_2074 ::
  T_Snapshot_2066 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2074 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2076 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots
d_Snapshots_2078 a0 a1 = ()
data T_Snapshots_2078
  = C_'10214'_'44'_'44'_'44'_'10215''738''738'_2096 T_Snapshot_2066
                                                    T_Snapshot_2066 T_Snapshot_2066 Integer
-- Ledger.Epoch.Snapshots.mark
d_mark_2088 :: T_Snapshots_2078 -> T_Snapshot_2066
d_mark_2088 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2096 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.set
d_set_2090 :: T_Snapshots_2078 -> T_Snapshot_2066
d_set_2090 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2096 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.go
d_go_2092 :: T_Snapshots_2078 -> T_Snapshot_2066
d_go_2092 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2096 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.feeSS
d_feeSS_2094 :: T_Snapshots_2078 -> Integer
d_feeSS_2094 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2096 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState
d_EpochState_2098 a0 a1 = ()
data T_EpochState_2098
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2120 MAlonzo.Code.Ledger.PParams.T_Acnt_132
                                                       T_Snapshots_2078
                                                       MAlonzo.Code.Ledger.Ledger.T_LState_1950
                                                       MAlonzo.Code.Ledger.Enact.T_EnactState_784
                                                       MAlonzo.Code.Ledger.Ratify.T_RatifyState_1826
-- Ledger.Epoch.EpochState.acnt
d_acnt_2110 ::
  T_EpochState_2098 -> MAlonzo.Code.Ledger.PParams.T_Acnt_132
d_acnt_2110 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2120 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ss
d_ss_2112 :: T_EpochState_2098 -> T_Snapshots_2078
d_ss_2112 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2120 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ls
d_ls_2114 ::
  T_EpochState_2098 -> MAlonzo.Code.Ledger.Ledger.T_LState_1950
d_ls_2114 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2120 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.es
d_es_2116 ::
  T_EpochState_2098 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_es_2116 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2120 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.fut
d_fut_2118 ::
  T_EpochState_2098 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_1826
d_fut_2118 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2120 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState
d_NewEpochState_2122 a0 a1 = ()
data T_NewEpochState_2122
  = C_'10214'_'44'_'44'_'10215''8319''7497'_2136 AgdaAny
                                                 T_EpochState_2098 (Maybe T_RewardUpdate_2038)
-- Ledger.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2130 :: T_NewEpochState_2122 -> AgdaAny
d_lastEpoch_2130 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2136 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.epochState
d_epochState_2132 :: T_NewEpochState_2122 -> T_EpochState_2098
d_epochState_2132 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2136 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.ru
d_ru_2134 :: T_NewEpochState_2122 -> Maybe T_RewardUpdate_2038
d_ru_2134 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2136 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.toRwdAddr
d_toRwdAddr_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70
d_toRwdAddr_2184 v0 ~v1 v2 = du_toRwdAddr_2184 v0 v2
du_toRwdAddr_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70
du_toRwdAddr_2184 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_2437
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
      (coe v1)
-- Ledger.Epoch.getStakeCred
d_getStakeCred_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getStakeCred_2188 ~v0 ~v1 v2 = du_getStakeCred_2188 v2
du_getStakeCred_2188 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getStakeCred_2188 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    seq (coe v4)
                    (coe MAlonzo.Code.Ledger.Address.du_stakeCred_104 (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.applyRUpd
d_applyRUpd_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_RewardUpdate_2038 -> T_EpochState_2098 -> T_EpochState_2098
d_applyRUpd_2192 v0 ~v1 v2 v3 = du_applyRUpd_2192 v0 v2 v3
du_applyRUpd_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RewardUpdate_2038 -> T_EpochState_2098 -> T_EpochState_2098
du_applyRUpd_2192 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2064 v3 v4 v5 v6
        -> case coe v2 of
             C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2120 v8 v9 v10 v11 v12
               -> case coe v8 of
                    MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_142 v13 v14
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_1964 v15 v16 v17
                             -> case coe v15 of
                                  MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1796 v18 v19 v20 v21
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_898 v22 v23 v24
                                           -> case coe v22 of
                                                MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_858 v25 v26 v27
                                                  -> coe
                                                       C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2120
                                                       (coe
                                                          MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_142
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v13) (coe v3))
                                                                (coe
                                                                   du_unregRU''_2240 (coe v0)
                                                                   (coe v6) (coe v27))))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe v14) (coe v4))))
                                                       (coe v9)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_1964
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1796
                                                             (coe v18)
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v19) (coe v5)))
                                                             (coe v20) (coe v21))
                                                          (coe v16)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_898
                                                             (coe
                                                                MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_858
                                                                (coe v25) (coe v26)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__494
                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                   (coe
                                                                      MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                      (coe
                                                                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                                                            (coe v0))))
                                                                   v27
                                                                   (coe
                                                                      du_regRU_2236 (coe v0)
                                                                      (coe v6) (coe v27))))
                                                             (coe v23) (coe v24)))
                                                       (coe v11) (coe v12)
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch._.regRU
d_regRU_2236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2078 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_860 ->
  MAlonzo.Code.Ledger.Certs.T_GState_872 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_784 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_2236 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_regRU_2236 v0 v5 v17
du_regRU_2236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_2236 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_192
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_538
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546) (coe v2))
-- Ledger.Epoch._.unregRU
d_unregRU_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2078 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_860 ->
  MAlonzo.Code.Ledger.Certs.T_GState_872 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_784 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_2238 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU_2238 v0 v5 v17
du_unregRU_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_2238 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1262
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_192
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_538
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546) (coe v2))
-- Ledger.Epoch._.unregRU'
d_unregRU''_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2078 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_860 ->
  MAlonzo.Code.Ledger.Certs.T_GState_872 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_784 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1826 -> Integer
d_unregRU''_2240 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU''_2240 v0 v5 v17
du_unregRU''_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_2240 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1152
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_192
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
      (coe (\ v3 -> v3)) (coe du_unregRU_2238 (coe v0) (coe v1) (coe v2))
-- Ledger.Epoch.stakeDistr
d_stakeDistr_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_844 ->
  MAlonzo.Code.Ledger.Certs.T_PState_860 -> T_Snapshot_2066
d_stakeDistr_2244 v0 ~v1 v2 v3 ~v4 = du_stakeDistr_2244 v0 v2 v3
du_stakeDistr_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_844 -> T_Snapshot_2066
du_stakeDistr_2244 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_858 v3 v4 v5
        -> coe
             C_'10214'_'44'_'10215''738'_2076
             (coe
                MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_496
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1114
                   (coe du_stakeRelation_2264 (coe v0) (coe v1) (coe v5))))
             (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch._.m
d_m_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_860 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_m_2258 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 = du_m_2258 v0 v2 v5
du_m_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_m_2258 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380
         (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v3))
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
              (coe
                 MAlonzo.Code.Ledger.Utxo.du_cbalance_1820 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Set.Theory.du__'8739''94'''__1146 (coe v1)
                    (coe
                       (\ v5 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                            (coe
                               MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                               (coe
                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                  (coe
                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_khs_192
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1164
                                           (coe v0))))))
                            (coe du_getStakeCred_2188 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))))))
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_538
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546) (coe v2)))
-- Ledger.Epoch._.stakeRelation
d_stakeRelation_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_860 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeRelation_2264 v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_stakeRelation_2264 v0 v2 v5
du_stakeRelation_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeRelation_2264 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v3))
         (coe du_m_2258 (coe v0) (coe v1) (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Ledger.Epoch.gaDepositStake
d_gaDepositStake_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gaDepositStake_2266 v0 ~v1 v2 v3
  = du_gaDepositStake_2266 v0 v2 v3
du_gaDepositStake_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gaDepositStake_2266 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1172
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130 (coe v0))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_188
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_192
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_192
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380
         (MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
              (coe
                 MAlonzo.Code.Ledger.Address.d_stake_78
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_govSt''_2276 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1174
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1550
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_776
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_776
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1430
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v4
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v2)))))))
         (coe du_govSt''_2276 (coe v1)))
-- Ledger.Epoch._.govSt'
d_govSt''_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2276 ~v0 ~v1 v2 ~v3 = du_govSt''_2276 v2
du_govSt''_2276 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2276 v0
  = let v1
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380
         (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v1))
         (coe
            MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
            (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
            (coe
               (\ v2 ->
                  MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_748 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_410
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe v0)))
-- Ledger.Epoch.mkStakeDistrs
d_mkStakeDistrs_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_Snapshot_2066 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1798
d_mkStakeDistrs_2288 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_2288 v0 v2 v3 v4 v5
du_mkStakeDistrs_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_Snapshot_2066 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1798
du_mkStakeDistrs_2288 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11009
      (case coe v1 of
         C_'10214'_'44'_'10215''738'_2076 v5 v6
           -> coe
                MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1172
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
                (coe
                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__494
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                   (coe
                      MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                   (coe
                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                         (coe
                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
                   v5 (coe du_gaDepositStake_2266 (coe v0) (coe v2) (coe v3)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Epoch._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2298 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2298 = C_SNAP_2328
-- Ledger.Epoch._.certState
d_certState_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_21201 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
d_certState_2302 ~v0 ~v1 v2 = du_certState_2302 v2
du_certState_2302 ::
  T_GeneralizeTel_21201 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
du_certState_2302 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_certState_1962
      (coe d_'46'generalizedField'45'lstate_21191 v0)
-- Ledger.Epoch._.utxoSt
d_utxoSt_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_21201 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
d_utxoSt_2306 ~v0 ~v1 v2 = du_utxoSt_2306 v2
du_utxoSt_2306 ::
  T_GeneralizeTel_21201 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1778
du_utxoSt_2306 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_utxoSt_1958
      (coe d_'46'generalizedField'45'lstate_21191 v0)
-- Ledger.Epoch._.fees
d_fees_2314 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_21201 -> Integer
d_fees_2314 ~v0 ~v1 v2 = du_fees_2314 v2
du_fees_2314 :: T_GeneralizeTel_21201 -> Integer
du_fees_2314 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1790
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1958
         (coe d_'46'generalizedField'45'lstate_21191 v0))
-- Ledger.Epoch._.utxo
d_utxo_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_21201 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2316 ~v0 ~v1 v2 = du_utxo_2316 v2
du_utxo_2316 ::
  T_GeneralizeTel_21201 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2316 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1788
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1958
         (coe d_'46'generalizedField'45'lstate_21191 v0))
-- Ledger.Epoch._.dState
d_dState_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_21201 -> MAlonzo.Code.Ledger.Certs.T_DState_844
d_dState_2320 ~v0 ~v1 v2 = du_dState_2320 v2
du_dState_2320 ::
  T_GeneralizeTel_21201 -> MAlonzo.Code.Ledger.Certs.T_DState_844
du_dState_2320 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dState_892
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1962
         (coe d_'46'generalizedField'45'lstate_21191 v0))
-- Ledger.Epoch._.pState
d_pState_2324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_21201 -> MAlonzo.Code.Ledger.Certs.T_PState_860
d_pState_2324 ~v0 ~v1 v2 = du_pState_2324 v2
du_pState_2324 ::
  T_GeneralizeTel_21201 -> MAlonzo.Code.Ledger.Certs.T_PState_860
du_pState_2324 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_pState_894
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1962
         (coe d_'46'generalizedField'45'lstate_21191 v0))
-- Ledger.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2330 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__2330
  = C_EPOCH_2400 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
                 T__'8866'_'8640''10631'_'44'SNAP'10632'__2298
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_2396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_28103 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2396 ~v0 ~v1 v2 = du_ccHotKeys_2396 v2
du_ccHotKeys_2396 ::
  T_GeneralizeTel_28103 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2396 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_880
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_896
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1962
            (coe d_'46'generalizedField'45'ls_28089 v0)))
-- Ledger.Epoch._.dreps
d_dreps_2398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  T_GeneralizeTel_28103 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2398 ~v0 ~v1 v2 = du_dreps_2398 v2
du_dreps_2398 ::
  T_GeneralizeTel_28103 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2398 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_878
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_896
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1962
            (coe d_'46'generalizedField'45'ls_28089 v0)))
-- Ledger.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2402 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2402
  = C_NEWEPOCH'45'New_2406 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_2408 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_2410 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch..generalizedField-lstate
d_'46'generalizedField'45'lstate_21191 ::
  T_GeneralizeTel_21201 -> MAlonzo.Code.Ledger.Ledger.T_LState_1950
d_'46'generalizedField'45'lstate_21191
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-mark
d_'46'generalizedField'45'mark_21193 ::
  T_GeneralizeTel_21201 -> T_Snapshot_2066
d_'46'generalizedField'45'mark_21193
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-set
d_'46'generalizedField'45'set_21195 ::
  T_GeneralizeTel_21201 -> T_Snapshot_2066
d_'46'generalizedField'45'set_21195
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-go
d_'46'generalizedField'45'go_21197 ::
  T_GeneralizeTel_21201 -> T_Snapshot_2066
d_'46'generalizedField'45'go_21197
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_21199 ::
  T_GeneralizeTel_21201 -> Integer
d_'46'generalizedField'45'feeSS_21199
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_21201 a0 a1 = ()
data T_GeneralizeTel_21201
  = C_mkGeneralizeTel_21203 MAlonzo.Code.Ledger.Ledger.T_LState_1950
                            T_Snapshot_2066 T_Snapshot_2066 T_Snapshot_2066 Integer
-- Ledger.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_28087 ::
  T_GeneralizeTel_28103 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1826
d_'46'generalizedField'45'fut_28087
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_28089 ::
  T_GeneralizeTel_28103 -> MAlonzo.Code.Ledger.Ledger.T_LState_1950
d_'46'generalizedField'45'ls_28089
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-e
d_'46'generalizedField'45'e_28091 ::
  T_GeneralizeTel_28103 -> AgdaAny
d_'46'generalizedField'45'e_28091 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_28093 ::
  T_GeneralizeTel_28103 -> MAlonzo.Code.Ledger.PParams.T_Acnt_132
d_'46'generalizedField'45'acnt_28093
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_28095 ::
  T_GeneralizeTel_28103 -> T_Snapshots_2078
d_'46'generalizedField'45'ss''_28095
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_28097 ::
  T_GeneralizeTel_28103 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1826
d_'46'generalizedField'45'fut''_28097
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_28099 ::
  T_GeneralizeTel_28103 -> T_Snapshots_2078
d_'46'generalizedField'45'ss_28099
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_28101 ::
  T_GeneralizeTel_28103 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_'46'generalizedField'45'es'8320'_28101
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_28103 a0 a1 = ()
data T_GeneralizeTel_28103
  = C_mkGeneralizeTel_28105 MAlonzo.Code.Ledger.Ratify.T_RatifyState_1826
                            MAlonzo.Code.Ledger.Ledger.T_LState_1950 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_Acnt_132 T_Snapshots_2078
                            MAlonzo.Code.Ledger.Ratify.T_RatifyState_1826 T_Snapshots_2078
                            MAlonzo.Code.Ledger.Enact.T_EnactState_784
