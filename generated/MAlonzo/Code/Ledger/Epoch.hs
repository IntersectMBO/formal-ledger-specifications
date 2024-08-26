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
d_DecEq'45'Credential_112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_112 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_114 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_114 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_820
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_140 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_250
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1204 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0)))
-- _.DepositPurpose
d_DepositPurpose_180 a0 = ()
-- _.Deposits
d_Deposits_182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Deposits_182 = erased
-- _.Epoch
d_Epoch_188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_188 = erased
-- _.GState
d_GState_200 a0 = ()
-- _.THash
d_THash_248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_248 = erased
-- _.Number-Epoch
d_Number'45'Epoch_274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_274 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_226
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0))
-- _.PState
d_PState_298 a0 = ()
-- _.RwdAddr
d_RwdAddr_340 a0 = ()
-- _.TxOut
d_TxOut_442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_442 = erased
-- _.UTxO
d_UTxO_448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_448 = erased
-- _.VDeleg
d_VDeleg_454 a0 = ()
-- _.addEpoch
d_addEpoch_484 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_484 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_220
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0))
-- Ledger.Epoch._.GovState
d_GovState_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 -> ()
d_GovState_1648 = erased
-- Ledger.Epoch._.EnactState
d_EnactState_1752 a0 a1 = ()
-- Ledger.Epoch._.ccCreds
d_ccCreds_1754 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_1754 ~v0 ~v1 = du_ccCreds_1754
du_ccCreds_1754 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_1754 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_846
-- Ledger.Epoch._.LState
d_LState_1810 a0 a1 = ()
-- Ledger.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1852 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1884 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1906 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1906 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1852 = erased
-- Ledger.Epoch._.RatifyState
d_RatifyState_1872 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs
d_StakeDistrs_1874 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_1970 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1878 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1970 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1882 (coe v0)
-- Ledger.Epoch._.HasCoin-Map
d_HasCoin'45'Map_1990 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1990 ~v0 ~v1 = du_HasCoin'45'Map_1990
du_HasCoin'45'Map_1990 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1990 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1742 v1
-- Ledger.Epoch._.UTxOState
d_UTxOState_2010 a0 a1 = ()
-- Ledger.Epoch.RewardUpdate
d_RewardUpdate_2124 a0 a1 = ()
data T_RewardUpdate_2124
  = C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2150 Integer Integer
                                                     Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.RewardUpdate.Δt
d_Δt_2138 :: T_RewardUpdate_2124 -> Integer
d_Δt_2138 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2150 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δr
d_Δr_2140 :: T_RewardUpdate_2124 -> Integer
d_Δr_2140 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2150 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δf
d_Δf_2142 :: T_RewardUpdate_2124 -> Integer
d_Δf_2142 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2150 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.rs
d_rs_2144 ::
  T_RewardUpdate_2124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2144 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2150 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.zeroSum
d_zeroSum_2148 ::
  T_RewardUpdate_2124 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zeroSum_2148 = erased
-- Ledger.Epoch.Snapshot
d_Snapshot_2152 a0 a1 = ()
data T_Snapshot_2152
  = C_'10214'_'44'_'10215''738'_2162 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.Snapshot.stake
d_stake_2158 ::
  T_Snapshot_2152 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2158 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2162 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshot.delegations
d_delegations_2160 ::
  T_Snapshot_2152 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2160 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2162 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots
d_Snapshots_2164 a0 a1 = ()
data T_Snapshots_2164
  = C_'10214'_'44'_'44'_'44'_'10215''738''738'_2182 T_Snapshot_2152
                                                    T_Snapshot_2152 T_Snapshot_2152 Integer
-- Ledger.Epoch.Snapshots.mark
d_mark_2174 :: T_Snapshots_2164 -> T_Snapshot_2152
d_mark_2174 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2182 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.set
d_set_2176 :: T_Snapshots_2164 -> T_Snapshot_2152
d_set_2176 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2182 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.go
d_go_2178 :: T_Snapshots_2164 -> T_Snapshot_2152
d_go_2178 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2182 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.feeSS
d_feeSS_2180 :: T_Snapshots_2164 -> Integer
d_feeSS_2180 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2182 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState
d_EpochState_2184 a0 a1 = ()
data T_EpochState_2184
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2206 MAlonzo.Code.Ledger.PParams.T_Acnt_142
                                                       T_Snapshots_2164
                                                       MAlonzo.Code.Ledger.Ledger.T_LState_2034
                                                       MAlonzo.Code.Ledger.Enact.T_EnactState_824
                                                       MAlonzo.Code.Ledger.Ratify.T_RatifyState_1906
-- Ledger.Epoch.EpochState.acnt
d_acnt_2196 ::
  T_EpochState_2184 -> MAlonzo.Code.Ledger.PParams.T_Acnt_142
d_acnt_2196 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2206 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ss
d_ss_2198 :: T_EpochState_2184 -> T_Snapshots_2164
d_ss_2198 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2206 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ls
d_ls_2200 ::
  T_EpochState_2184 -> MAlonzo.Code.Ledger.Ledger.T_LState_2034
d_ls_2200 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2206 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.es
d_es_2202 ::
  T_EpochState_2184 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_es_2202 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2206 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.fut
d_fut_2204 ::
  T_EpochState_2184 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_1906
d_fut_2204 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2206 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState
d_NewEpochState_2208 a0 a1 = ()
data T_NewEpochState_2208
  = C_'10214'_'44'_'44'_'10215''8319''7497'_2222 AgdaAny
                                                 T_EpochState_2184 (Maybe T_RewardUpdate_2124)
-- Ledger.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2216 :: T_NewEpochState_2208 -> AgdaAny
d_lastEpoch_2216 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2222 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.epochState
d_epochState_2218 :: T_NewEpochState_2208 -> T_EpochState_2184
d_epochState_2218 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2222 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.ru
d_ru_2220 :: T_NewEpochState_2208 -> Maybe T_RewardUpdate_2124
d_ru_2220 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2222 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.toRwdAddr
d_toRwdAddr_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_toRwdAddr_2270 v0 ~v1 v2 = du_toRwdAddr_2270 v0 v2
du_toRwdAddr_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
du_toRwdAddr_2270 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3251
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_262
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1204 (coe v0)))
      (coe v1)
-- Ledger.Epoch.getStakeCred
d_getStakeCred_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getStakeCred_2274 ~v0 ~v1 v2 = du_getStakeCred_2274 v2
du_getStakeCred_2274 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getStakeCred_2274 v0
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
d_applyRUpd_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_RewardUpdate_2124 -> T_EpochState_2184 -> T_EpochState_2184
d_applyRUpd_2278 v0 ~v1 v2 v3 = du_applyRUpd_2278 v0 v2 v3
du_applyRUpd_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RewardUpdate_2124 -> T_EpochState_2184 -> T_EpochState_2184
du_applyRUpd_2278 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2150 v3 v4 v5 v6
        -> case coe v2 of
             C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2206 v8 v9 v10 v11 v12
               -> case coe v8 of
                    MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_152 v13 v14
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2048 v15 v16 v17
                             -> case coe v15 of
                                  MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1876 v18 v19 v20 v21
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_938 v22 v23 v24
                                           -> case coe v22 of
                                                MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_898 v25 v26 v27
                                                  -> coe
                                                       C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2206
                                                       (coe
                                                          MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_152
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v13) (coe v3))
                                                                (coe
                                                                   du_unregRU''_2326 (coe v0)
                                                                   (coe v6) (coe v27))))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe v14) (coe v4))))
                                                       (coe v9)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2048
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1876
                                                             (coe v18)
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v19) (coe v5)))
                                                             (coe v20) (coe v21))
                                                          (coe v16)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_938
                                                             (coe
                                                                MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_898
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
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                                                            (coe v0))))
                                                                   v27
                                                                   (coe
                                                                      du_regRU_2322 (coe v0)
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
d_regRU_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2164 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_900 ->
  MAlonzo.Code.Ledger.Certs.T_GState_912 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_2322 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_regRU_2322 v0 v5 v17
du_regRU_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_2322 v0 v1 v2
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
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_540
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2))
-- Ledger.Epoch._.unregRU
d_unregRU_2324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2164 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_900 ->
  MAlonzo.Code.Ledger.Certs.T_GState_912 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_2324 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU_2324 v0 v5 v17
du_unregRU_2324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_2324 v0 v1 v2
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
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_540
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2))
-- Ledger.Epoch._.unregRU'
d_unregRU''_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2164 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_900 ->
  MAlonzo.Code.Ledger.Certs.T_GState_912 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_824 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1906 -> Integer
d_unregRU''_2326 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU''_2326 v0 v5 v17
du_unregRU''_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_2326 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
      (coe (\ v3 -> v3)) (coe du_unregRU_2324 (coe v0) (coe v1) (coe v2))
-- Ledger.Epoch.stakeDistr
d_stakeDistr_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_884 ->
  MAlonzo.Code.Ledger.Certs.T_PState_900 -> T_Snapshot_2152
d_stakeDistr_2330 v0 ~v1 v2 v3 ~v4 = du_stakeDistr_2330 v0 v2 v3
du_stakeDistr_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_884 -> T_Snapshot_2152
du_stakeDistr_2330 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_898 v3 v4 v5
        -> coe
             C_'10214'_'44'_'10215''738'_2162
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
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1122
                   (coe du_stakeRelation_2350 (coe v0) (coe v1) (coe v5))))
             (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch._.m
d_m_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_900 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_m_2344 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 = du_m_2344 v0 v2 v5
du_m_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_m_2344 v0 v1 v2
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
                 MAlonzo.Code.Ledger.Utxo.du_cbalance_1900 (coe v0)
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
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1226
                                           (coe v0))))))
                            (coe du_getStakeCred_2274 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))))))
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_540
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2)))
-- Ledger.Epoch._.stakeRelation
d_stakeRelation_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_900 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeRelation_2350 v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_stakeRelation_2350 v0 v2 v5
du_stakeRelation_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeRelation_2350 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
         (coe du_m_2344 (coe v0) (coe v1) (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Ledger.Epoch.gaDepositStake
d_gaDepositStake_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gaDepositStake_2352 v0 ~v1 v2 v3
  = du_gaDepositStake_2352 v0 v2 v3
du_gaDepositStake_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gaDepositStake_2352 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1180
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188 (coe v0))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_250
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1204 (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
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
         (coe du_govSt''_2362 (coe v1)))
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
                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_816
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_820
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_816
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v4
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v2)))))))
         (coe du_govSt''_2362 (coe v1)))
-- Ledger.Epoch._.govSt'
d_govSt''_2362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2362 ~v0 ~v1 v2 ~v3 = du_govSt''_2362 v2
du_govSt''_2362 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2362 v0
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
                  MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_788 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_416
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe v0)))
-- Ledger.Epoch.mkStakeDistrs
d_mkStakeDistrs_2374 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_Snapshot_2152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1878
d_mkStakeDistrs_2374 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_2374 v0 v2 v3 v4 v5
du_mkStakeDistrs_2374 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_Snapshot_2152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1878
du_mkStakeDistrs_2374 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11085
      (case coe v1 of
         C_'10214'_'44'_'10215''738'_2162 v5 v6
           -> coe
                MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1180
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0)))
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
                            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
                   v5 (coe du_gaDepositStake_2352 (coe v0) (coe v2) (coe v3)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Epoch._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2384 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2384 = C_SNAP_2414
-- Ledger.Epoch._.certState
d_certState_2388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_21291 -> MAlonzo.Code.Ledger.Certs.T_CertState_924
d_certState_2388 ~v0 ~v1 v2 = du_certState_2388 v2
du_certState_2388 ::
  T_GeneralizeTel_21291 -> MAlonzo.Code.Ledger.Certs.T_CertState_924
du_certState_2388 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_certState_2046
      (coe d_'46'generalizedField'45'lstate_21281 v0)
-- Ledger.Epoch._.utxoSt
d_utxoSt_2392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_21291 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
d_utxoSt_2392 ~v0 ~v1 v2 = du_utxoSt_2392 v2
du_utxoSt_2392 ::
  T_GeneralizeTel_21291 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1858
du_utxoSt_2392 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_utxoSt_2042
      (coe d_'46'generalizedField'45'lstate_21281 v0)
-- Ledger.Epoch._.fees
d_fees_2400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_21291 -> Integer
d_fees_2400 ~v0 ~v1 v2 = du_fees_2400 v2
du_fees_2400 :: T_GeneralizeTel_21291 -> Integer
du_fees_2400 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1870
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2042
         (coe d_'46'generalizedField'45'lstate_21281 v0))
-- Ledger.Epoch._.utxo
d_utxo_2402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_21291 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2402 ~v0 ~v1 v2 = du_utxo_2402 v2
du_utxo_2402 ::
  T_GeneralizeTel_21291 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2402 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1868
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2042
         (coe d_'46'generalizedField'45'lstate_21281 v0))
-- Ledger.Epoch._.dState
d_dState_2406 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_21291 -> MAlonzo.Code.Ledger.Certs.T_DState_884
d_dState_2406 ~v0 ~v1 v2 = du_dState_2406 v2
du_dState_2406 ::
  T_GeneralizeTel_21291 -> MAlonzo.Code.Ledger.Certs.T_DState_884
du_dState_2406 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dState_932
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_2046
         (coe d_'46'generalizedField'45'lstate_21281 v0))
-- Ledger.Epoch._.pState
d_pState_2410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_21291 -> MAlonzo.Code.Ledger.Certs.T_PState_900
d_pState_2410 ~v0 ~v1 v2 = du_pState_2410 v2
du_pState_2410 ::
  T_GeneralizeTel_21291 -> MAlonzo.Code.Ledger.Certs.T_PState_900
du_pState_2410 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_pState_934
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_2046
         (coe d_'46'generalizedField'45'lstate_21281 v0))
-- Ledger.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2416 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__2416
  = C_EPOCH_2486 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
                 T__'8866'_'8640''10631'_'44'SNAP'10632'__2384
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_2482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_28193 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2482 ~v0 ~v1 v2 = du_ccHotKeys_2482 v2
du_ccHotKeys_2482 ::
  T_GeneralizeTel_28193 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2482 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_920
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_936
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_2046
            (coe d_'46'generalizedField'45'ls_28179 v0)))
-- Ledger.Epoch._.dreps
d_dreps_2484 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  T_GeneralizeTel_28193 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2484 ~v0 ~v1 v2 = du_dreps_2484 v2
du_dreps_2484 ::
  T_GeneralizeTel_28193 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2484 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_918
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_936
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_2046
            (coe d_'46'generalizedField'45'ls_28179 v0)))
-- Ledger.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2488 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2488
  = C_NEWEPOCH'45'New_2492 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_2494 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_2496 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch..generalizedField-lstate
d_'46'generalizedField'45'lstate_21281 ::
  T_GeneralizeTel_21291 -> MAlonzo.Code.Ledger.Ledger.T_LState_2034
d_'46'generalizedField'45'lstate_21281
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-mark
d_'46'generalizedField'45'mark_21283 ::
  T_GeneralizeTel_21291 -> T_Snapshot_2152
d_'46'generalizedField'45'mark_21283
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-set
d_'46'generalizedField'45'set_21285 ::
  T_GeneralizeTel_21291 -> T_Snapshot_2152
d_'46'generalizedField'45'set_21285
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-go
d_'46'generalizedField'45'go_21287 ::
  T_GeneralizeTel_21291 -> T_Snapshot_2152
d_'46'generalizedField'45'go_21287
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_21289 ::
  T_GeneralizeTel_21291 -> Integer
d_'46'generalizedField'45'feeSS_21289
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_21291 a0 a1 = ()
data T_GeneralizeTel_21291
  = C_mkGeneralizeTel_21293 MAlonzo.Code.Ledger.Ledger.T_LState_2034
                            T_Snapshot_2152 T_Snapshot_2152 T_Snapshot_2152 Integer
-- Ledger.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_28177 ::
  T_GeneralizeTel_28193 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1906
d_'46'generalizedField'45'fut_28177
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_28179 ::
  T_GeneralizeTel_28193 -> MAlonzo.Code.Ledger.Ledger.T_LState_2034
d_'46'generalizedField'45'ls_28179
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-e
d_'46'generalizedField'45'e_28181 ::
  T_GeneralizeTel_28193 -> AgdaAny
d_'46'generalizedField'45'e_28181 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_28183 ::
  T_GeneralizeTel_28193 -> MAlonzo.Code.Ledger.PParams.T_Acnt_142
d_'46'generalizedField'45'acnt_28183
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_28185 ::
  T_GeneralizeTel_28193 -> T_Snapshots_2164
d_'46'generalizedField'45'ss''_28185
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_28187 ::
  T_GeneralizeTel_28193 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1906
d_'46'generalizedField'45'fut''_28187
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_28189 ::
  T_GeneralizeTel_28193 -> T_Snapshots_2164
d_'46'generalizedField'45'ss_28189
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_28191 ::
  T_GeneralizeTel_28193 -> MAlonzo.Code.Ledger.Enact.T_EnactState_824
d_'46'generalizedField'45'es'8320'_28191
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_28193 a0 a1 = ()
data T_GeneralizeTel_28193
  = C_mkGeneralizeTel_28195 MAlonzo.Code.Ledger.Ratify.T_RatifyState_1906
                            MAlonzo.Code.Ledger.Ledger.T_LState_2034 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_Acnt_142 T_Snapshots_2164
                            MAlonzo.Code.Ledger.Ratify.T_RatifyState_1906 T_Snapshots_2164
                            MAlonzo.Code.Ledger.Enact.T_EnactState_824
