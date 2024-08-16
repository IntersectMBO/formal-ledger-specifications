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
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_114 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_114 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_784
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_140 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1148 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_192
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0)))
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
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0))
-- _.PState
d_PState_298 a0 = ()
-- _.RwdAddr
d_RwdAddr_340 a0 = ()
-- _.TxOut
d_TxOut_406 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_406 = erased
-- _.UTxO
d_UTxO_412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_412 = erased
-- _.VDeleg
d_VDeleg_418 a0 = ()
-- _.addEpoch
d_addEpoch_448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_448 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1444 (coe v0))
-- Ledger.Epoch._.GovState
d_GovState_1594 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 -> ()
d_GovState_1594 = erased
-- Ledger.Epoch._.EnactState
d_EnactState_1694 a0 a1 = ()
-- Ledger.Epoch._.ccCreds
d_ccCreds_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_1696 ~v0 ~v1 = du_ccCreds_1696
du_ccCreds_1696 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_1696 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_810
-- Ledger.Epoch._.LState
d_LState_1752 a0 a1 = ()
-- Ledger.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1794 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1830 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1852 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1794 = erased
-- Ledger.Epoch._.RatifyState
d_RatifyState_1814 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs
d_StakeDistrs_1816 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_1912 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1824 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1912 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1828 (coe v0)
-- Ledger.Epoch._.HasCoin-Map
d_HasCoin'45'Map_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1932 ~v0 ~v1 = du_HasCoin'45'Map_1932
du_HasCoin'45'Map_1932 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1932 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1688 v1
-- Ledger.Epoch._.UTxOState
d_UTxOState_1952 a0 a1 = ()
-- Ledger.Epoch.RewardUpdate
d_RewardUpdate_2066 a0 a1 = ()
data T_RewardUpdate_2066
  = C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2092 Integer Integer
                                                     Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.RewardUpdate.Δt
d_Δt_2080 :: T_RewardUpdate_2066 -> Integer
d_Δt_2080 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2092 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δr
d_Δr_2082 :: T_RewardUpdate_2066 -> Integer
d_Δr_2082 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2092 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δf
d_Δf_2084 :: T_RewardUpdate_2066 -> Integer
d_Δf_2084 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2092 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.rs
d_rs_2086 ::
  T_RewardUpdate_2066 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2086 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2092 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.zeroSum
d_zeroSum_2090 ::
  T_RewardUpdate_2066 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zeroSum_2090 = erased
-- Ledger.Epoch.Snapshot
d_Snapshot_2094 a0 a1 = ()
data T_Snapshot_2094
  = C_'10214'_'44'_'10215''738'_2104 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.Snapshot.stake
d_stake_2100 ::
  T_Snapshot_2094 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2100 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2104 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshot.delegations
d_delegations_2102 ::
  T_Snapshot_2094 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2102 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2104 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots
d_Snapshots_2106 a0 a1 = ()
data T_Snapshots_2106
  = C_'10214'_'44'_'44'_'44'_'10215''738''738'_2124 T_Snapshot_2094
                                                    T_Snapshot_2094 T_Snapshot_2094 Integer
-- Ledger.Epoch.Snapshots.mark
d_mark_2116 :: T_Snapshots_2106 -> T_Snapshot_2094
d_mark_2116 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2124 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.set
d_set_2118 :: T_Snapshots_2106 -> T_Snapshot_2094
d_set_2118 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2124 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.go
d_go_2120 :: T_Snapshots_2106 -> T_Snapshot_2094
d_go_2120 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2124 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.feeSS
d_feeSS_2122 :: T_Snapshots_2106 -> Integer
d_feeSS_2122 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2124 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState
d_EpochState_2126 a0 a1 = ()
data T_EpochState_2126
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2148 MAlonzo.Code.Ledger.PParams.T_Acnt_132
                                                       T_Snapshots_2106
                                                       MAlonzo.Code.Ledger.Ledger.T_LState_1976
                                                       MAlonzo.Code.Ledger.Enact.T_EnactState_788
                                                       MAlonzo.Code.Ledger.Ratify.T_RatifyState_1852
-- Ledger.Epoch.EpochState.acnt
d_acnt_2138 ::
  T_EpochState_2126 -> MAlonzo.Code.Ledger.PParams.T_Acnt_132
d_acnt_2138 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2148 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ss
d_ss_2140 :: T_EpochState_2126 -> T_Snapshots_2106
d_ss_2140 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2148 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ls
d_ls_2142 ::
  T_EpochState_2126 -> MAlonzo.Code.Ledger.Ledger.T_LState_1976
d_ls_2142 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2148 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.es
d_es_2144 ::
  T_EpochState_2126 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
d_es_2144 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2148 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.fut
d_fut_2146 ::
  T_EpochState_2126 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_1852
d_fut_2146 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2148 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState
d_NewEpochState_2150 a0 a1 = ()
data T_NewEpochState_2150
  = C_'10214'_'44'_'44'_'10215''8319''7497'_2164 AgdaAny
                                                 T_EpochState_2126 (Maybe T_RewardUpdate_2066)
-- Ledger.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2158 :: T_NewEpochState_2150 -> AgdaAny
d_lastEpoch_2158 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2164 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.epochState
d_epochState_2160 :: T_NewEpochState_2150 -> T_EpochState_2126
d_epochState_2160 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2164 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.ru
d_ru_2162 :: T_NewEpochState_2150 -> Maybe T_RewardUpdate_2066
d_ru_2162 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2164 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.toRwdAddr
d_toRwdAddr_2212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_toRwdAddr_2212 v0 ~v1 v2 = du_toRwdAddr_2212 v0 v2
du_toRwdAddr_2212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
du_toRwdAddr_2212 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3251
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1148 (coe v0)))
      (coe v1)
-- Ledger.Epoch.getStakeCred
d_getStakeCred_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getStakeCred_2216 ~v0 ~v1 v2 = du_getStakeCred_2216 v2
du_getStakeCred_2216 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getStakeCred_2216 v0
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
d_applyRUpd_2220 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_RewardUpdate_2066 -> T_EpochState_2126 -> T_EpochState_2126
d_applyRUpd_2220 v0 ~v1 v2 v3 = du_applyRUpd_2220 v0 v2 v3
du_applyRUpd_2220 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RewardUpdate_2066 -> T_EpochState_2126 -> T_EpochState_2126
du_applyRUpd_2220 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2092 v3 v4 v5 v6
        -> case coe v2 of
             C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2148 v8 v9 v10 v11 v12
               -> case coe v8 of
                    MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_142 v13 v14
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_1990 v15 v16 v17
                             -> case coe v15 of
                                  MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1822 v18 v19 v20 v21
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_902 v22 v23 v24
                                           -> case coe v22 of
                                                MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_862 v25 v26 v27
                                                  -> coe
                                                       C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2148
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
                                                                   du_unregRU''_2268 (coe v0)
                                                                   (coe v6) (coe v27))))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe v14) (coe v4))))
                                                       (coe v9)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_1990
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1822
                                                             (coe v18)
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v19) (coe v5)))
                                                             (coe v20) (coe v21))
                                                          (coe v16)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_902
                                                             (coe
                                                                MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_862
                                                                (coe v25) (coe v26)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__494
                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                   (coe
                                                                      MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                      (coe
                                                                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                                                            (coe v0))))
                                                                   v27
                                                                   (coe
                                                                      du_regRU_2264 (coe v0)
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
d_regRU_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2106 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_864 ->
  MAlonzo.Code.Ledger.Certs.T_GState_876 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_2264 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_regRU_2264 v0 v5 v17
du_regRU_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_2264 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_192
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_538
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546) (coe v2))
-- Ledger.Epoch._.unregRU
d_unregRU_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2106 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_864 ->
  MAlonzo.Code.Ledger.Certs.T_GState_876 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_2266 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU_2266 v0 v5 v17
du_unregRU_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_2266 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1262
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_192
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_538
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546) (coe v2))
-- Ledger.Epoch._.unregRU'
d_unregRU''_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2106 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_864 ->
  MAlonzo.Code.Ledger.Certs.T_GState_876 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_788 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1852 -> Integer
d_unregRU''_2268 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU''_2268 v0 v5 v17
du_unregRU''_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_2268 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1152
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_192
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
      (coe (\ v3 -> v3)) (coe du_unregRU_2266 (coe v0) (coe v1) (coe v2))
-- Ledger.Epoch.stakeDistr
d_stakeDistr_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_848 ->
  MAlonzo.Code.Ledger.Certs.T_PState_864 -> T_Snapshot_2094
d_stakeDistr_2272 v0 ~v1 v2 v3 ~v4 = du_stakeDistr_2272 v0 v2 v3
du_stakeDistr_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_848 -> T_Snapshot_2094
du_stakeDistr_2272 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_862 v3 v4 v5
        -> coe
             C_'10214'_'44'_'10215''738'_2104
             (coe
                MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_496
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1114
                   (coe du_stakeRelation_2292 (coe v0) (coe v1) (coe v5))))
             (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch._.m
d_m_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_864 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_m_2286 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 = du_m_2286 v0 v2 v5
du_m_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_m_2286 v0 v1 v2
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
                 MAlonzo.Code.Ledger.Utxo.du_cbalance_1846 (coe v0)
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
                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_khs_192
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1168
                                           (coe v0))))))
                            (coe du_getStakeCred_2216 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))))))
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_538
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546) (coe v2)))
-- Ledger.Epoch._.stakeRelation
d_stakeRelation_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_864 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeRelation_2292 v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_stakeRelation_2292 v0 v2 v5
du_stakeRelation_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeRelation_2292 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v3))
         (coe du_m_2286 (coe v0) (coe v1) (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Ledger.Epoch.gaDepositStake
d_gaDepositStake_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gaDepositStake_2294 v0 ~v1 v2 v3
  = du_gaDepositStake_2294 v0 v2 v3
du_gaDepositStake_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gaDepositStake_2294 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1172
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
            (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1134 (coe v0))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1148 (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_192
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_192
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
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
                 MAlonzo.Code.Ledger.Address.d_stake_84
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_govSt''_2304 (coe v1)))
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
                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_780
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_784
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_780
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1430
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v4
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v2)))))))
         (coe du_govSt''_2304 (coe v1)))
-- Ledger.Epoch._.govSt'
d_govSt''_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2304 ~v0 ~v1 v2 ~v3 = du_govSt''_2304 v2
du_govSt''_2304 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2304 v0
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
                  MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_752 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_410
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe v0)))
-- Ledger.Epoch.mkStakeDistrs
d_mkStakeDistrs_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_Snapshot_2094 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1824
d_mkStakeDistrs_2316 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_2316 v0 v2 v3 v4 v5
du_mkStakeDistrs_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_Snapshot_2094 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1824
du_mkStakeDistrs_2316 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11043
      (case coe v1 of
         C_'10214'_'44'_'10215''738'_2104 v5 v6
           -> coe
                MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1172
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_764
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2230 (coe v0)))
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
                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                         (coe
                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1168 (coe v0))))
                   v5 (coe du_gaDepositStake_2294 (coe v0) (coe v2) (coe v3)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Epoch._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2326 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2326 = C_SNAP_2356
-- Ledger.Epoch._.certState
d_certState_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_21235 -> MAlonzo.Code.Ledger.Certs.T_CertState_888
d_certState_2330 ~v0 ~v1 v2 = du_certState_2330 v2
du_certState_2330 ::
  T_GeneralizeTel_21235 -> MAlonzo.Code.Ledger.Certs.T_CertState_888
du_certState_2330 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_certState_1988
      (coe d_'46'generalizedField'45'lstate_21225 v0)
-- Ledger.Epoch._.utxoSt
d_utxoSt_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_21235 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
d_utxoSt_2334 ~v0 ~v1 v2 = du_utxoSt_2334 v2
du_utxoSt_2334 ::
  T_GeneralizeTel_21235 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1804
du_utxoSt_2334 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_utxoSt_1984
      (coe d_'46'generalizedField'45'lstate_21225 v0)
-- Ledger.Epoch._.fees
d_fees_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_21235 -> Integer
d_fees_2342 ~v0 ~v1 v2 = du_fees_2342 v2
du_fees_2342 :: T_GeneralizeTel_21235 -> Integer
du_fees_2342 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1816
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1984
         (coe d_'46'generalizedField'45'lstate_21225 v0))
-- Ledger.Epoch._.utxo
d_utxo_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_21235 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2344 ~v0 ~v1 v2 = du_utxo_2344 v2
du_utxo_2344 ::
  T_GeneralizeTel_21235 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2344 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1814
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1984
         (coe d_'46'generalizedField'45'lstate_21225 v0))
-- Ledger.Epoch._.dState
d_dState_2348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_21235 -> MAlonzo.Code.Ledger.Certs.T_DState_848
d_dState_2348 ~v0 ~v1 v2 = du_dState_2348 v2
du_dState_2348 ::
  T_GeneralizeTel_21235 -> MAlonzo.Code.Ledger.Certs.T_DState_848
du_dState_2348 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dState_896
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1988
         (coe d_'46'generalizedField'45'lstate_21225 v0))
-- Ledger.Epoch._.pState
d_pState_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_21235 -> MAlonzo.Code.Ledger.Certs.T_PState_864
d_pState_2352 ~v0 ~v1 v2 = du_pState_2352 v2
du_pState_2352 ::
  T_GeneralizeTel_21235 -> MAlonzo.Code.Ledger.Certs.T_PState_864
du_pState_2352 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_pState_898
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1988
         (coe d_'46'generalizedField'45'lstate_21225 v0))
-- Ledger.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2358 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__2358
  = C_EPOCH_2428 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
                 T__'8866'_'8640''10631'_'44'SNAP'10632'__2326
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_2424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_28137 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2424 ~v0 ~v1 v2 = du_ccHotKeys_2424 v2
du_ccHotKeys_2424 ::
  T_GeneralizeTel_28137 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2424 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_884
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_900
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1988
            (coe d_'46'generalizedField'45'ls_28123 v0)))
-- Ledger.Epoch._.dreps
d_dreps_2426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1590 ->
  T_GeneralizeTel_28137 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2426 ~v0 ~v1 v2 = du_dreps_2426 v2
du_dreps_2426 ::
  T_GeneralizeTel_28137 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2426 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_882
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_900
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1988
            (coe d_'46'generalizedField'45'ls_28123 v0)))
-- Ledger.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2430 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2430
  = C_NEWEPOCH'45'New_2434 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_2436 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_2438 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch..generalizedField-lstate
d_'46'generalizedField'45'lstate_21225 ::
  T_GeneralizeTel_21235 -> MAlonzo.Code.Ledger.Ledger.T_LState_1976
d_'46'generalizedField'45'lstate_21225
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-mark
d_'46'generalizedField'45'mark_21227 ::
  T_GeneralizeTel_21235 -> T_Snapshot_2094
d_'46'generalizedField'45'mark_21227
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-set
d_'46'generalizedField'45'set_21229 ::
  T_GeneralizeTel_21235 -> T_Snapshot_2094
d_'46'generalizedField'45'set_21229
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-go
d_'46'generalizedField'45'go_21231 ::
  T_GeneralizeTel_21235 -> T_Snapshot_2094
d_'46'generalizedField'45'go_21231
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_21233 ::
  T_GeneralizeTel_21235 -> Integer
d_'46'generalizedField'45'feeSS_21233
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_21235 a0 a1 = ()
data T_GeneralizeTel_21235
  = C_mkGeneralizeTel_21237 MAlonzo.Code.Ledger.Ledger.T_LState_1976
                            T_Snapshot_2094 T_Snapshot_2094 T_Snapshot_2094 Integer
-- Ledger.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_28121 ::
  T_GeneralizeTel_28137 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1852
d_'46'generalizedField'45'fut_28121
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_28123 ::
  T_GeneralizeTel_28137 -> MAlonzo.Code.Ledger.Ledger.T_LState_1976
d_'46'generalizedField'45'ls_28123
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-e
d_'46'generalizedField'45'e_28125 ::
  T_GeneralizeTel_28137 -> AgdaAny
d_'46'generalizedField'45'e_28125 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_28127 ::
  T_GeneralizeTel_28137 -> MAlonzo.Code.Ledger.PParams.T_Acnt_132
d_'46'generalizedField'45'acnt_28127
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_28129 ::
  T_GeneralizeTel_28137 -> T_Snapshots_2106
d_'46'generalizedField'45'ss''_28129
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_28131 ::
  T_GeneralizeTel_28137 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1852
d_'46'generalizedField'45'fut''_28131
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_28133 ::
  T_GeneralizeTel_28137 -> T_Snapshots_2106
d_'46'generalizedField'45'ss_28133
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_28135 ::
  T_GeneralizeTel_28137 -> MAlonzo.Code.Ledger.Enact.T_EnactState_788
d_'46'generalizedField'45'es'8320'_28135
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_28137 a0 a1 = ()
data T_GeneralizeTel_28137
  = C_mkGeneralizeTel_28139 MAlonzo.Code.Ledger.Ratify.T_RatifyState_1852
                            MAlonzo.Code.Ledger.Ledger.T_LState_1976 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_Acnt_132 T_Snapshots_2106
                            MAlonzo.Code.Ledger.Ratify.T_RatifyState_1852 T_Snapshots_2106
                            MAlonzo.Code.Ledger.Enact.T_EnactState_788
