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
d_Acnt_36 a0 = ()
-- _.CertState
d_CertState_62 a0 = ()
-- _.Credential
d_Credential_68 a0 = ()
-- _.DState
d_DState_82 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_116 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_118 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_144 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1210 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0)))
-- _.DepositPurpose
d_DepositPurpose_184 a0 = ()
-- _.Deposits
d_Deposits_186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Deposits_186 = erased
-- _.Epoch
d_Epoch_192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_192 = erased
-- _.GState
d_GState_204 a0 = ()
-- _.THash
d_THash_252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_252 = erased
-- _.Number-Epoch
d_Number'45'Epoch_278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_278 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1520 (coe v0))
-- _.PState
d_PState_302 a0 = ()
-- _.RwdAddr
d_RwdAddr_344 a0 = ()
-- _.TxOut
d_TxOut_446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_446 = erased
-- _.UTxO
d_UTxO_452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_452 = erased
-- _.VDeleg
d_VDeleg_458 a0 = ()
-- _.addEpoch
d_addEpoch_488 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_488 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1520 (coe v0))
-- Ledger.Epoch._.GovState
d_GovState_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 -> ()
d_GovState_1654 = erased
-- Ledger.Epoch._.EnactState
d_EnactState_1758 a0 a1 = ()
-- Ledger.Epoch._.ccCreds
d_ccCreds_1760 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_1760 ~v0 ~v1 = du_ccCreds_1760
du_ccCreds_1760 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_1760 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_852
-- Ledger.Epoch._.LState
d_LState_1816 a0 a1 = ()
-- Ledger.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1858 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1890 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1858 = erased
-- Ledger.Epoch._.RatifyState
d_RatifyState_1878 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs
d_StakeDistrs_1880 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_1976 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1976 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1888 (coe v0)
-- Ledger.Epoch._.HasCoin-Map
d_HasCoin'45'Map_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1996 ~v0 ~v1 = du_HasCoin'45'Map_1996
du_HasCoin'45'Map_1996 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1996 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1748 v1
-- Ledger.Epoch._.UTxOState
d_UTxOState_2016 a0 a1 = ()
-- Ledger.Epoch.RewardUpdate
d_RewardUpdate_2130 a0 a1 = ()
data T_RewardUpdate_2130
  = C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2156 Integer Integer
                                                     Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.RewardUpdate.Δt
d_Δt_2144 :: T_RewardUpdate_2130 -> Integer
d_Δt_2144 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2156 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δr
d_Δr_2146 :: T_RewardUpdate_2130 -> Integer
d_Δr_2146 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2156 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δf
d_Δf_2148 :: T_RewardUpdate_2130 -> Integer
d_Δf_2148 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2156 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.rs
d_rs_2150 ::
  T_RewardUpdate_2130 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2150 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2156 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.zeroSum
d_zeroSum_2154 ::
  T_RewardUpdate_2130 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zeroSum_2154 = erased
-- Ledger.Epoch.Snapshot
d_Snapshot_2158 a0 a1 = ()
data T_Snapshot_2158
  = C_'10214'_'44'_'10215''738'_2168 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.Snapshot.stake
d_stake_2164 ::
  T_Snapshot_2158 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2164 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2168 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshot.delegations
d_delegations_2166 ::
  T_Snapshot_2158 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2166 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2168 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots
d_Snapshots_2170 a0 a1 = ()
data T_Snapshots_2170
  = C_'10214'_'44'_'44'_'44'_'10215''738''738'_2188 T_Snapshot_2158
                                                    T_Snapshot_2158 T_Snapshot_2158 Integer
-- Ledger.Epoch.Snapshots.mark
d_mark_2180 :: T_Snapshots_2170 -> T_Snapshot_2158
d_mark_2180 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2188 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.set
d_set_2182 :: T_Snapshots_2170 -> T_Snapshot_2158
d_set_2182 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2188 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.go
d_go_2184 :: T_Snapshots_2170 -> T_Snapshot_2158
d_go_2184 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2188 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.feeSS
d_feeSS_2186 :: T_Snapshots_2170 -> Integer
d_feeSS_2186 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2188 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState
d_EpochState_2190 a0 a1 = ()
data T_EpochState_2190
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2212 MAlonzo.Code.Ledger.PParams.T_Acnt_146
                                                       T_Snapshots_2170
                                                       MAlonzo.Code.Ledger.Ledger.T_LState_2040
                                                       MAlonzo.Code.Ledger.Enact.T_EnactState_830
                                                       MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912
-- Ledger.Epoch.EpochState.acnt
d_acnt_2202 ::
  T_EpochState_2190 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_acnt_2202 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2212 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ss
d_ss_2204 :: T_EpochState_2190 -> T_Snapshots_2170
d_ss_2204 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2212 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ls
d_ls_2206 ::
  T_EpochState_2190 -> MAlonzo.Code.Ledger.Ledger.T_LState_2040
d_ls_2206 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2212 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.es
d_es_2208 ::
  T_EpochState_2190 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_es_2208 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2212 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.fut
d_fut_2210 ::
  T_EpochState_2190 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912
d_fut_2210 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2212 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState
d_NewEpochState_2214 a0 a1 = ()
data T_NewEpochState_2214
  = C_'10214'_'44'_'44'_'10215''8319''7497'_2228 AgdaAny
                                                 T_EpochState_2190 (Maybe T_RewardUpdate_2130)
-- Ledger.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2222 :: T_NewEpochState_2214 -> AgdaAny
d_lastEpoch_2222 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2228 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.epochState
d_epochState_2224 :: T_NewEpochState_2214 -> T_EpochState_2190
d_epochState_2224 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2228 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.ru
d_ru_2226 :: T_NewEpochState_2214 -> Maybe T_RewardUpdate_2130
d_ru_2226 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2228 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.toRwdAddr
d_toRwdAddr_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_toRwdAddr_2276 v0 ~v1 v2 = du_toRwdAddr_2276 v0 v2
du_toRwdAddr_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
du_toRwdAddr_2276 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3251
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1210 (coe v0)))
      (coe v1)
-- Ledger.Epoch.getStakeCred
d_getStakeCred_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getStakeCred_2280 ~v0 ~v1 v2 = du_getStakeCred_2280 v2
du_getStakeCred_2280 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getStakeCred_2280 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    seq (coe v4)
                    (coe MAlonzo.Code.Ledger.Address.du_stakeCred_110 (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.applyRUpd
d_applyRUpd_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_RewardUpdate_2130 -> T_EpochState_2190 -> T_EpochState_2190
d_applyRUpd_2284 v0 ~v1 v2 v3 = du_applyRUpd_2284 v0 v2 v3
du_applyRUpd_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RewardUpdate_2130 -> T_EpochState_2190 -> T_EpochState_2190
du_applyRUpd_2284 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2156 v3 v4 v5 v6
        -> case coe v2 of
             C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2212 v8 v9 v10 v11 v12
               -> case coe v8 of
                    MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156 v13 v14
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2054 v15 v16 v17
                             -> case coe v15 of
                                  MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882 v18 v19 v20 v21
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944 v22 v23 v24
                                           -> case coe v22 of
                                                MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904 v25 v26 v27
                                                  -> coe
                                                       C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2212
                                                       (coe
                                                          MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v13) (coe v3))
                                                                (coe
                                                                   du_unregRU''_2332 (coe v0)
                                                                   (coe v6) (coe v27))))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe v14) (coe v4))))
                                                       (coe v9)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2054
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882
                                                             (coe v18)
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v19) (coe v5)))
                                                             (coe v20) (coe v21))
                                                          (coe v16)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944
                                                             (coe
                                                                MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904
                                                                (coe v25) (coe v26)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                   (coe
                                                                      MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                      (coe
                                                                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                                                            (coe v0))))
                                                                   v27
                                                                   (coe
                                                                      du_regRU_2328 (coe v0)
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
d_regRU_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Ledger.Certs.T_GState_918 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_2328 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_regRU_2328 v0 v5 v17
du_regRU_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_2328 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1256
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_540
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2))
-- Ledger.Epoch._.unregRU
d_unregRU_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Ledger.Certs.T_GState_918 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_2330 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU_2330 v0 v5 v17
du_unregRU_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_2330 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1264
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1458
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1588
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_540
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2))
-- Ledger.Epoch._.unregRU'
d_unregRU''_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2170 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Ledger.Certs.T_GState_918 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912 -> Integer
d_unregRU''_2332 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU''_2332 v0 v5 v17
du_unregRU''_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_2332 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
      (coe (\ v3 -> v3)) (coe du_unregRU_2330 (coe v0) (coe v1) (coe v2))
-- Ledger.Epoch.stakeDistr
d_stakeDistr_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 -> T_Snapshot_2158
d_stakeDistr_2336 v0 ~v1 v2 v3 ~v4 = du_stakeDistr_2336 v0 v2 v3
du_stakeDistr_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890 -> T_Snapshot_2158
du_stakeDistr_2336 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904 v3 v4 v5
        -> coe
             C_'10214'_'44'_'10215''738'_2168
             (coe
                MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_498
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1122
                   (coe du_stakeRelation_2356 (coe v0) (coe v1) (coe v5))))
             (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch._.m
d_m_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_m_2350 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 = du_m_2350 v0 v2 v5
du_m_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_m_2350 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_map_386
         (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
              (coe
                 MAlonzo.Code.Ledger.Utxo.du_cbalance_1906 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Set.Theory.du__'8739''94'''__1154 (coe v1)
                    (coe
                       (\ v5 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                            (coe
                               MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                               (coe
                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                  (coe
                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1234
                                           (coe v0))))))
                            (coe du_getStakeCred_2280 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))))))
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_540
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2)))
-- Ledger.Epoch._.stakeRelation
d_stakeRelation_2356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeRelation_2356 v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_stakeRelation_2356 v0 v2 v5
du_stakeRelation_2356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeRelation_2356 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
         (coe du_m_2350 (coe v0) (coe v1) (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Ledger.Epoch.gaDepositStake
d_gaDepositStake_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gaDepositStake_2358 v0 ~v1 v2 v3
  = du_gaDepositStake_2358 v0 v2 v3
du_gaDepositStake_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gaDepositStake_2358 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1180
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194 (coe v0))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1210 (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_386
         (MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
              (coe
                 MAlonzo.Code.Ledger.Address.d_stake_84
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_govSt''_2368 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1176
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1552
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1458
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_822
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_822
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v4
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v2)))))))
         (coe du_govSt''_2368 (coe v1)))
-- Ledger.Epoch._.govSt'
d_govSt''_2368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2368 ~v0 ~v1 v2 ~v3 = du_govSt''_2368 v2
du_govSt''_2368 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2368 v0
  = let v1
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_map_386
         (MAlonzo.Code.Axiom.Set.d_th_1458 (coe v1))
         (coe
            MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
            (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
            (coe
               (\ v2 ->
                  MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_794 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_416
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe v0)))
-- Ledger.Epoch.mkStakeDistrs
d_mkStakeDistrs_2380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_Snapshot_2158 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1884
d_mkStakeDistrs_2380 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_2380 v0 v2 v3 v4 v5
du_mkStakeDistrs_2380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_Snapshot_2158 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1884
du_mkStakeDistrs_2380 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11099
      (case coe v1 of
         C_'10214'_'44'_'10215''738'_2168 v5 v6
           -> coe
                MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1180
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2350 (coe v0)))
                (coe
                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                   (coe
                      MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                   (coe
                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                         (coe
                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1234 (coe v0))))
                   v5 (coe du_gaDepositStake_2358 (coe v0) (coe v2) (coe v3)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Epoch._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2390 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2390 = C_SNAP_2420
-- Ledger.Epoch._.certState
d_certState_2394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_21305 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_2394 ~v0 ~v1 v2 = du_certState_2394 v2
du_certState_2394 ::
  T_GeneralizeTel_21305 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
du_certState_2394 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_certState_2052
      (coe d_'46'generalizedField'45'lstate_21295 v0)
-- Ledger.Epoch._.utxoSt
d_utxoSt_2398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_21305 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_utxoSt_2398 ~v0 ~v1 v2 = du_utxoSt_2398 v2
du_utxoSt_2398 ::
  T_GeneralizeTel_21305 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
du_utxoSt_2398 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_utxoSt_2048
      (coe d_'46'generalizedField'45'lstate_21295 v0)
-- Ledger.Epoch._.fees
d_fees_2406 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_21305 -> Integer
d_fees_2406 ~v0 ~v1 v2 = du_fees_2406 v2
du_fees_2406 :: T_GeneralizeTel_21305 -> Integer
du_fees_2406 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1876
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2048
         (coe d_'46'generalizedField'45'lstate_21295 v0))
-- Ledger.Epoch._.utxo
d_utxo_2408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_21305 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2408 ~v0 ~v1 v2 = du_utxo_2408 v2
du_utxo_2408 ::
  T_GeneralizeTel_21305 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2408 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1874
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2048
         (coe d_'46'generalizedField'45'lstate_21295 v0))
-- Ledger.Epoch._.dState
d_dState_2412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_21305 -> MAlonzo.Code.Ledger.Certs.T_DState_890
d_dState_2412 ~v0 ~v1 v2 = du_dState_2412 v2
du_dState_2412 ::
  T_GeneralizeTel_21305 -> MAlonzo.Code.Ledger.Certs.T_DState_890
du_dState_2412 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dState_938
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_2052
         (coe d_'46'generalizedField'45'lstate_21295 v0))
-- Ledger.Epoch._.pState
d_pState_2416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_21305 -> MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_2416 ~v0 ~v1 v2 = du_pState_2416 v2
du_pState_2416 ::
  T_GeneralizeTel_21305 -> MAlonzo.Code.Ledger.Certs.T_PState_906
du_pState_2416 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_pState_940
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_2052
         (coe d_'46'generalizedField'45'lstate_21295 v0))
-- Ledger.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2422 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__2422
  = C_EPOCH_2492 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
                 T__'8866'_'8640''10631'_'44'SNAP'10632'__2390
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_2488 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_28207 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2488 ~v0 ~v1 v2 = du_ccHotKeys_2488 v2
du_ccHotKeys_2488 ::
  T_GeneralizeTel_28207 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2488 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_942
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_2052
            (coe d_'46'generalizedField'45'ls_28193 v0)))
-- Ledger.Epoch._.dreps
d_dreps_2490 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_28207 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2490 ~v0 ~v1 v2 = du_dreps_2490 v2
du_dreps_2490 ::
  T_GeneralizeTel_28207 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2490 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_924
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_942
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_2052
            (coe d_'46'generalizedField'45'ls_28193 v0)))
-- Ledger.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2494 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2494
  = C_NEWEPOCH'45'New_2498 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_2500 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_2502 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch..generalizedField-lstate
d_'46'generalizedField'45'lstate_21295 ::
  T_GeneralizeTel_21305 -> MAlonzo.Code.Ledger.Ledger.T_LState_2040
d_'46'generalizedField'45'lstate_21295
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-mark
d_'46'generalizedField'45'mark_21297 ::
  T_GeneralizeTel_21305 -> T_Snapshot_2158
d_'46'generalizedField'45'mark_21297
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-set
d_'46'generalizedField'45'set_21299 ::
  T_GeneralizeTel_21305 -> T_Snapshot_2158
d_'46'generalizedField'45'set_21299
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-go
d_'46'generalizedField'45'go_21301 ::
  T_GeneralizeTel_21305 -> T_Snapshot_2158
d_'46'generalizedField'45'go_21301
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_21303 ::
  T_GeneralizeTel_21305 -> Integer
d_'46'generalizedField'45'feeSS_21303
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_21305 a0 a1 = ()
data T_GeneralizeTel_21305
  = C_mkGeneralizeTel_21307 MAlonzo.Code.Ledger.Ledger.T_LState_2040
                            T_Snapshot_2158 T_Snapshot_2158 T_Snapshot_2158 Integer
-- Ledger.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_28191 ::
  T_GeneralizeTel_28207 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912
d_'46'generalizedField'45'fut_28191
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_28193 ::
  T_GeneralizeTel_28207 -> MAlonzo.Code.Ledger.Ledger.T_LState_2040
d_'46'generalizedField'45'ls_28193
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-e
d_'46'generalizedField'45'e_28195 ::
  T_GeneralizeTel_28207 -> AgdaAny
d_'46'generalizedField'45'e_28195 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_28197 ::
  T_GeneralizeTel_28207 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_'46'generalizedField'45'acnt_28197
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_28199 ::
  T_GeneralizeTel_28207 -> T_Snapshots_2170
d_'46'generalizedField'45'ss''_28199
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_28201 ::
  T_GeneralizeTel_28207 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912
d_'46'generalizedField'45'fut''_28201
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_28203 ::
  T_GeneralizeTel_28207 -> T_Snapshots_2170
d_'46'generalizedField'45'ss_28203
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_28205 ::
  T_GeneralizeTel_28207 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_'46'generalizedField'45'es'8320'_28205
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_28207 a0 a1 = ()
data T_GeneralizeTel_28207
  = C_mkGeneralizeTel_28209 MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912
                            MAlonzo.Code.Ledger.Ledger.T_LState_2040 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_Acnt_146 T_Snapshots_2170
                            MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912 T_Snapshots_2170
                            MAlonzo.Code.Ledger.Enact.T_EnactState_830
