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
d_DecEq'45'DepositPurpose_114 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_114 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_140 v0
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
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
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
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
-- Ledger.Epoch._.GovState
d_GovState_1590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 -> ()
d_GovState_1590 = erased
-- Ledger.Epoch._.EnactState
d_EnactState_1690 a0 a1 = ()
-- Ledger.Epoch._.ccCreds
d_ccCreds_1692 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_1692 ~v0 ~v1 = du_ccCreds_1692
du_ccCreds_1692 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_1692 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_806
-- Ledger.Epoch._.LState
d_LState_1748 a0 a1 = ()
-- Ledger.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1790 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1790 = erased
-- Ledger.Epoch._.RatifyState
d_RatifyState_1810 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs
d_StakeDistrs_1812 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_1908 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1908 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1824 (coe v0)
-- Ledger.Epoch._.HasCoin-Map
d_HasCoin'45'Map_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1928 ~v0 ~v1 = du_HasCoin'45'Map_1928
du_HasCoin'45'Map_1928 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1928 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1684 v1
-- Ledger.Epoch._.UTxOState
d_UTxOState_1948 a0 a1 = ()
-- Ledger.Epoch.RewardUpdate
d_RewardUpdate_2062 a0 a1 = ()
data T_RewardUpdate_2062
  = C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2088 Integer Integer
                                                     Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.RewardUpdate.Δt
d_Δt_2076 :: T_RewardUpdate_2062 -> Integer
d_Δt_2076 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2088 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δr
d_Δr_2078 :: T_RewardUpdate_2062 -> Integer
d_Δr_2078 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2088 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δf
d_Δf_2080 :: T_RewardUpdate_2062 -> Integer
d_Δf_2080 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2088 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.rs
d_rs_2082 ::
  T_RewardUpdate_2062 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2082 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2088 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.zeroSum
d_zeroSum_2086 ::
  T_RewardUpdate_2062 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zeroSum_2086 = erased
-- Ledger.Epoch.Snapshot
d_Snapshot_2090 a0 a1 = ()
data T_Snapshot_2090
  = C_'10214'_'44'_'10215''738'_2100 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.Snapshot.stake
d_stake_2096 ::
  T_Snapshot_2090 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2096 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2100 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshot.delegations
d_delegations_2098 ::
  T_Snapshot_2090 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2098 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2100 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots
d_Snapshots_2102 a0 a1 = ()
data T_Snapshots_2102
  = C_'10214'_'44'_'44'_'44'_'10215''738''738'_2120 T_Snapshot_2090
                                                    T_Snapshot_2090 T_Snapshot_2090 Integer
-- Ledger.Epoch.Snapshots.mark
d_mark_2112 :: T_Snapshots_2102 -> T_Snapshot_2090
d_mark_2112 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2120 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.set
d_set_2114 :: T_Snapshots_2102 -> T_Snapshot_2090
d_set_2114 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2120 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.go
d_go_2116 :: T_Snapshots_2102 -> T_Snapshot_2090
d_go_2116 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2120 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.feeSS
d_feeSS_2118 :: T_Snapshots_2102 -> Integer
d_feeSS_2118 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2120 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState
d_EpochState_2122 a0 a1 = ()
data T_EpochState_2122
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2144 MAlonzo.Code.Ledger.PParams.T_Acnt_132
                                                       T_Snapshots_2102
                                                       MAlonzo.Code.Ledger.Ledger.T_LState_1972
                                                       MAlonzo.Code.Ledger.Enact.T_EnactState_784
                                                       MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848
-- Ledger.Epoch.EpochState.acnt
d_acnt_2134 ::
  T_EpochState_2122 -> MAlonzo.Code.Ledger.PParams.T_Acnt_132
d_acnt_2134 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2144 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ss
d_ss_2136 :: T_EpochState_2122 -> T_Snapshots_2102
d_ss_2136 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2144 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ls
d_ls_2138 ::
  T_EpochState_2122 -> MAlonzo.Code.Ledger.Ledger.T_LState_1972
d_ls_2138 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2144 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.es
d_es_2140 ::
  T_EpochState_2122 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_es_2140 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2144 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.fut
d_fut_2142 ::
  T_EpochState_2122 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848
d_fut_2142 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2144 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState
d_NewEpochState_2146 a0 a1 = ()
data T_NewEpochState_2146
  = C_'10214'_'44'_'44'_'10215''8319''7497'_2160 AgdaAny
                                                 T_EpochState_2122 (Maybe T_RewardUpdate_2062)
-- Ledger.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2154 :: T_NewEpochState_2146 -> AgdaAny
d_lastEpoch_2154 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2160 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.epochState
d_epochState_2156 :: T_NewEpochState_2146 -> T_EpochState_2122
d_epochState_2156 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2160 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.ru
d_ru_2158 :: T_NewEpochState_2146 -> Maybe T_RewardUpdate_2062
d_ru_2158 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2160 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.toRwdAddr
d_toRwdAddr_2208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70
d_toRwdAddr_2208 v0 ~v1 v2 = du_toRwdAddr_2208 v0 v2
du_toRwdAddr_2208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70
du_toRwdAddr_2208 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_2437
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
      (coe v1)
-- Ledger.Epoch.getStakeCred
d_getStakeCred_2212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getStakeCred_2212 ~v0 ~v1 v2 = du_getStakeCred_2212 v2
du_getStakeCred_2212 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getStakeCred_2212 v0
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
d_applyRUpd_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_RewardUpdate_2062 -> T_EpochState_2122 -> T_EpochState_2122
d_applyRUpd_2216 v0 ~v1 v2 v3 = du_applyRUpd_2216 v0 v2 v3
du_applyRUpd_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RewardUpdate_2062 -> T_EpochState_2122 -> T_EpochState_2122
du_applyRUpd_2216 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2088 v3 v4 v5 v6
        -> case coe v2 of
             C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2144 v8 v9 v10 v11 v12
               -> case coe v8 of
                    MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_142 v13 v14
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_1986 v15 v16 v17
                             -> case coe v15 of
                                  MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1818 v18 v19 v20 v21
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_898 v22 v23 v24
                                           -> case coe v22 of
                                                MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_858 v25 v26 v27
                                                  -> coe
                                                       C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2144
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
                                                                   du_unregRU''_2264 (coe v0)
                                                                   (coe v6) (coe v27))))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe v14) (coe v4))))
                                                       (coe v9)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_1986
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1818
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
                                                                      du_regRU_2260 (coe v0)
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
d_regRU_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2102 ->
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
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_2260 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_regRU_2260 v0 v5 v17
du_regRU_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_2260 v0 v1 v2
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
d_unregRU_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2102 ->
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
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_2262 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU_2262 v0 v5 v17
du_unregRU_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_2262 v0 v1 v2
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
d_unregRU''_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2102 ->
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
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 -> Integer
d_unregRU''_2264 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU''_2264 v0 v5 v17
du_unregRU''_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_2264 v0 v1 v2
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
      (coe (\ v3 -> v3)) (coe du_unregRU_2262 (coe v0) (coe v1) (coe v2))
-- Ledger.Epoch.stakeDistr
d_stakeDistr_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_844 ->
  MAlonzo.Code.Ledger.Certs.T_PState_860 -> T_Snapshot_2090
d_stakeDistr_2268 v0 ~v1 v2 v3 ~v4 = du_stakeDistr_2268 v0 v2 v3
du_stakeDistr_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_844 -> T_Snapshot_2090
du_stakeDistr_2268 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_858 v3 v4 v5
        -> coe
             C_'10214'_'44'_'10215''738'_2100
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
                   (coe du_stakeRelation_2288 (coe v0) (coe v1) (coe v5))))
             (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch._.m
d_m_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_860 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_m_2282 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 = du_m_2282 v0 v2 v5
du_m_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_m_2282 v0 v1 v2
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
                 MAlonzo.Code.Ledger.Utxo.du_cbalance_1842 (coe v0)
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
                            (coe du_getStakeCred_2212 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))))))
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_538
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546) (coe v2)))
-- Ledger.Epoch._.stakeRelation
d_stakeRelation_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_860 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeRelation_2288 v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_stakeRelation_2288 v0 v2 v5
du_stakeRelation_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeRelation_2288 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v3))
         (coe du_m_2282 (coe v0) (coe v1) (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Ledger.Epoch.gaDepositStake
d_gaDepositStake_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gaDepositStake_2290 v0 ~v1 v2 v3
  = du_gaDepositStake_2290 v0 v2 v3
du_gaDepositStake_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gaDepositStake_2290 v0 v1 v2
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
         (coe du_govSt''_2300 (coe v1)))
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
         (coe du_govSt''_2300 (coe v1)))
-- Ledger.Epoch._.govSt'
d_govSt''_2300 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2300 ~v0 ~v1 v2 ~v3 = du_govSt''_2300 v2
du_govSt''_2300 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2300 v0
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
d_mkStakeDistrs_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_Snapshot_2090 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1820
d_mkStakeDistrs_2312 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_2312 v0 v2 v3 v4 v5
du_mkStakeDistrs_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_Snapshot_2090 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1820
du_mkStakeDistrs_2312 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11039
      (case coe v1 of
         C_'10214'_'44'_'10215''738'_2100 v5 v6
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
                   v5 (coe du_gaDepositStake_2290 (coe v0) (coe v2) (coe v3)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Epoch._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2322 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2322 = C_SNAP_2352
-- Ledger.Epoch._.certState
d_certState_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_21231 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
d_certState_2326 ~v0 ~v1 v2 = du_certState_2326 v2
du_certState_2326 ::
  T_GeneralizeTel_21231 -> MAlonzo.Code.Ledger.Certs.T_CertState_884
du_certState_2326 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_certState_1984
      (coe d_'46'generalizedField'45'lstate_21221 v0)
-- Ledger.Epoch._.utxoSt
d_utxoSt_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_21231 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800
d_utxoSt_2330 ~v0 ~v1 v2 = du_utxoSt_2330 v2
du_utxoSt_2330 ::
  T_GeneralizeTel_21231 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1800
du_utxoSt_2330 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_utxoSt_1980
      (coe d_'46'generalizedField'45'lstate_21221 v0)
-- Ledger.Epoch._.fees
d_fees_2338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_21231 -> Integer
d_fees_2338 ~v0 ~v1 v2 = du_fees_2338 v2
du_fees_2338 :: T_GeneralizeTel_21231 -> Integer
du_fees_2338 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1812
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1980
         (coe d_'46'generalizedField'45'lstate_21221 v0))
-- Ledger.Epoch._.utxo
d_utxo_2340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_21231 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2340 ~v0 ~v1 v2 = du_utxo_2340 v2
du_utxo_2340 ::
  T_GeneralizeTel_21231 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2340 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1810
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1980
         (coe d_'46'generalizedField'45'lstate_21221 v0))
-- Ledger.Epoch._.dState
d_dState_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_21231 -> MAlonzo.Code.Ledger.Certs.T_DState_844
d_dState_2344 ~v0 ~v1 v2 = du_dState_2344 v2
du_dState_2344 ::
  T_GeneralizeTel_21231 -> MAlonzo.Code.Ledger.Certs.T_DState_844
du_dState_2344 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dState_892
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1984
         (coe d_'46'generalizedField'45'lstate_21221 v0))
-- Ledger.Epoch._.pState
d_pState_2348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_21231 -> MAlonzo.Code.Ledger.Certs.T_PState_860
d_pState_2348 ~v0 ~v1 v2 = du_pState_2348 v2
du_pState_2348 ::
  T_GeneralizeTel_21231 -> MAlonzo.Code.Ledger.Certs.T_PState_860
du_pState_2348 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_pState_894
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1984
         (coe d_'46'generalizedField'45'lstate_21221 v0))
-- Ledger.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2354 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__2354
  = C_EPOCH_2424 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
                 T__'8866'_'8640''10631'_'44'SNAP'10632'__2322
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_2420 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_28133 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2420 ~v0 ~v1 v2 = du_ccHotKeys_2420 v2
du_ccHotKeys_2420 ::
  T_GeneralizeTel_28133 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2420 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_880
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_896
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1984
            (coe d_'46'generalizedField'45'ls_28119 v0)))
-- Ledger.Epoch._.dreps
d_dreps_2422 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  T_GeneralizeTel_28133 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2422 ~v0 ~v1 v2 = du_dreps_2422 v2
du_dreps_2422 ::
  T_GeneralizeTel_28133 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2422 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_878
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_896
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1984
            (coe d_'46'generalizedField'45'ls_28119 v0)))
-- Ledger.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2426 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2426
  = C_NEWEPOCH'45'New_2430 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_2432 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_2434 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch..generalizedField-lstate
d_'46'generalizedField'45'lstate_21221 ::
  T_GeneralizeTel_21231 -> MAlonzo.Code.Ledger.Ledger.T_LState_1972
d_'46'generalizedField'45'lstate_21221
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-mark
d_'46'generalizedField'45'mark_21223 ::
  T_GeneralizeTel_21231 -> T_Snapshot_2090
d_'46'generalizedField'45'mark_21223
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-set
d_'46'generalizedField'45'set_21225 ::
  T_GeneralizeTel_21231 -> T_Snapshot_2090
d_'46'generalizedField'45'set_21225
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-go
d_'46'generalizedField'45'go_21227 ::
  T_GeneralizeTel_21231 -> T_Snapshot_2090
d_'46'generalizedField'45'go_21227
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_21229 ::
  T_GeneralizeTel_21231 -> Integer
d_'46'generalizedField'45'feeSS_21229
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_21231 a0 a1 = ()
data T_GeneralizeTel_21231
  = C_mkGeneralizeTel_21233 MAlonzo.Code.Ledger.Ledger.T_LState_1972
                            T_Snapshot_2090 T_Snapshot_2090 T_Snapshot_2090 Integer
-- Ledger.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_28117 ::
  T_GeneralizeTel_28133 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848
d_'46'generalizedField'45'fut_28117
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_28119 ::
  T_GeneralizeTel_28133 -> MAlonzo.Code.Ledger.Ledger.T_LState_1972
d_'46'generalizedField'45'ls_28119
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-e
d_'46'generalizedField'45'e_28121 ::
  T_GeneralizeTel_28133 -> AgdaAny
d_'46'generalizedField'45'e_28121 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_28123 ::
  T_GeneralizeTel_28133 -> MAlonzo.Code.Ledger.PParams.T_Acnt_132
d_'46'generalizedField'45'acnt_28123
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_28125 ::
  T_GeneralizeTel_28133 -> T_Snapshots_2102
d_'46'generalizedField'45'ss''_28125
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_28127 ::
  T_GeneralizeTel_28133 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848
d_'46'generalizedField'45'fut''_28127
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_28129 ::
  T_GeneralizeTel_28133 -> T_Snapshots_2102
d_'46'generalizedField'45'ss_28129
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_28131 ::
  T_GeneralizeTel_28133 -> MAlonzo.Code.Ledger.Enact.T_EnactState_784
d_'46'generalizedField'45'es'8320'_28131
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_28133 a0 a1 = ()
data T_GeneralizeTel_28133
  = C_mkGeneralizeTel_28135 MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848
                            MAlonzo.Code.Ledger.Ledger.T_LState_1972 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_Acnt_132 T_Snapshots_2102
                            MAlonzo.Code.Ledger.Ratify.T_RatifyState_1848 T_Snapshots_2102
                            MAlonzo.Code.Ledger.Enact.T_EnactState_784
