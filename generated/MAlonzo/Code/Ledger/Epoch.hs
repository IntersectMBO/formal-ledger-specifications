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
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude

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
-- _.Acnt.reserves
d_reserves_734 :: MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_reserves_734 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_154 (coe v0)
-- _.Acnt.treasury
d_treasury_736 :: MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_treasury_736 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_152 (coe v0)
-- _.CertState.dState
d_dState_774 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890
d_dState_774 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_938 (coe v0)
-- _.CertState.gState
d_gState_776 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_GState_918
d_gState_776 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_942 (coe v0)
-- _.CertState.pState
d_pState_778 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_778 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_940 (coe v0)
-- _.DState.rewards
d_rewards_804 ::
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_804 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_902 (coe v0)
-- _.DState.stakeDelegs
d_stakeDelegs_806 ::
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_806 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_900 (coe v0)
-- _.DState.voteDelegs
d_voteDelegs_808 ::
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_808 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_898 (coe v0)
-- _.GState.ccHotKeys
d_ccHotKeys_862 ::
  MAlonzo.Code.Ledger.Certs.T_GState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_862 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926 (coe v0)
-- _.GState.dreps
d_dreps_864 ::
  MAlonzo.Code.Ledger.Certs.T_GState_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_864 v0 = coe MAlonzo.Code.Ledger.Certs.d_dreps_924 (coe v0)
-- _.PState.pools
d_pools_1206 ::
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1206 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_912 (coe v0)
-- _.PState.retiring
d_retiring_1208 ::
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1208 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_914 (coe v0)
-- _.RwdAddr.net
d_net_1298 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1298 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_1300 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1300 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Epoch._.GovState
d_GovState_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 -> ()
d_GovState_1662 = erased
-- Ledger.Epoch._.EnactState
d_EnactState_1766 a0 a1 = ()
-- Ledger.Epoch._.ccCreds
d_ccCreds_1768 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_1768 ~v0 ~v1 = du_ccCreds_1768
du_ccCreds_1768 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_1768 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_852
-- Ledger.Epoch._.EnactState.cc
d_cc_1802 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1802 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v0)
-- Ledger.Epoch._.EnactState.constitution
d_constitution_1804 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1804 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_844 (coe v0)
-- Ledger.Epoch._.EnactState.pparams
d_pparams_1806 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1806 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v0)
-- Ledger.Epoch._.EnactState.pv
d_pv_1808 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1808 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_846 (coe v0)
-- Ledger.Epoch._.EnactState.withdrawals
d_withdrawals_1810 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1810 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v0)
-- Ledger.Epoch._.LState
d_LState_1824 a0 a1 = ()
-- Ledger.Epoch._.LState.certState
d_certState_1852 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2048 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_1852 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_certState_2060 (coe v0)
-- Ledger.Epoch._.LState.govSt
d_govSt_1854 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2048 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1854 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_govSt_2058 (coe v0)
-- Ledger.Epoch._.LState.utxoSt
d_utxoSt_1856 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2048 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_utxoSt_1856 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_2056 (coe v0)
-- Ledger.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1890 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1866 = erased
-- Ledger.Epoch._.RatifyState
d_RatifyState_1886 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs
d_StakeDistrs_1888 a0 a1 = ()
-- Ledger.Epoch._.RatifyState.delay
d_delay_1976 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912 -> Bool
d_delay_1976 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_delay_1924 (coe v0)
-- Ledger.Epoch._.RatifyState.es
d_es_1978 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_es_1978 v0 = coe MAlonzo.Code.Ledger.Ratify.d_es_1920 (coe v0)
-- Ledger.Epoch._.RatifyState.removed
d_removed_1980 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1980 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_removed_1922 (coe v0)
-- Ledger.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_1984 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1984 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1888 (coe v0)
-- Ledger.Epoch._.HasCoin-Map
d_HasCoin'45'Map_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_2004 ~v0 ~v1 = du_HasCoin'45'Map_2004
du_HasCoin'45'Map_2004 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_2004 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1748 v1
-- Ledger.Epoch._.UTxOState
d_UTxOState_2024 a0 a1 = ()
-- Ledger.Epoch._.UTxOState.deposits
d_deposits_2120 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2120 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1878 (coe v0)
-- Ledger.Epoch._.UTxOState.donations
d_donations_2122 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 -> Integer
d_donations_2122 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1880 (coe v0)
-- Ledger.Epoch._.UTxOState.fees
d_fees_2124 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 -> Integer
d_fees_2124 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1876 (coe v0)
-- Ledger.Epoch._.UTxOState.utxo
d_utxo_2126 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2126 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1874 (coe v0)
-- Ledger.Epoch.RewardUpdate
d_RewardUpdate_2138 a0 a1 = ()
data T_RewardUpdate_2138
  = C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2164 Integer Integer
                                                     Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.RewardUpdate.Δt
d_Δt_2152 :: T_RewardUpdate_2138 -> Integer
d_Δt_2152 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2164 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δr
d_Δr_2154 :: T_RewardUpdate_2138 -> Integer
d_Δr_2154 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2164 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δf
d_Δf_2156 :: T_RewardUpdate_2138 -> Integer
d_Δf_2156 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2164 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.rs
d_rs_2158 ::
  T_RewardUpdate_2138 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2158 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2164 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.zeroSum
d_zeroSum_2162 ::
  T_RewardUpdate_2138 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zeroSum_2162 = erased
-- Ledger.Epoch.Snapshot
d_Snapshot_2166 a0 a1 = ()
data T_Snapshot_2166
  = C_'10214'_'44'_'10215''738'_2176 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.Snapshot.stake
d_stake_2172 ::
  T_Snapshot_2166 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2172 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2176 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshot.delegations
d_delegations_2174 ::
  T_Snapshot_2166 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2174 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2176 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots
d_Snapshots_2178 a0 a1 = ()
data T_Snapshots_2178
  = C_'10214'_'44'_'44'_'44'_'10215''738''738'_2196 T_Snapshot_2166
                                                    T_Snapshot_2166 T_Snapshot_2166 Integer
-- Ledger.Epoch.Snapshots.mark
d_mark_2188 :: T_Snapshots_2178 -> T_Snapshot_2166
d_mark_2188 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2196 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.set
d_set_2190 :: T_Snapshots_2178 -> T_Snapshot_2166
d_set_2190 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2196 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.go
d_go_2192 :: T_Snapshots_2178 -> T_Snapshot_2166
d_go_2192 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2196 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.feeSS
d_feeSS_2194 :: T_Snapshots_2178 -> Integer
d_feeSS_2194 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2196 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState
d_EpochState_2198 a0 a1 = ()
data T_EpochState_2198
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2220 MAlonzo.Code.Ledger.PParams.T_Acnt_146
                                                       T_Snapshots_2178
                                                       MAlonzo.Code.Ledger.Ledger.T_LState_2048
                                                       MAlonzo.Code.Ledger.Enact.T_EnactState_830
                                                       MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912
-- Ledger.Epoch.EpochState.acnt
d_acnt_2210 ::
  T_EpochState_2198 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_acnt_2210 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2220 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ss
d_ss_2212 :: T_EpochState_2198 -> T_Snapshots_2178
d_ss_2212 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2220 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ls
d_ls_2214 ::
  T_EpochState_2198 -> MAlonzo.Code.Ledger.Ledger.T_LState_2048
d_ls_2214 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2220 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.es
d_es_2216 ::
  T_EpochState_2198 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_es_2216 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2220 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.fut
d_fut_2218 ::
  T_EpochState_2198 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912
d_fut_2218 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2220 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState
d_NewEpochState_2222 a0 a1 = ()
data T_NewEpochState_2222
  = C_'10214'_'44'_'44'_'10215''8319''7497'_2236 AgdaAny
                                                 T_EpochState_2198 (Maybe T_RewardUpdate_2138)
-- Ledger.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2230 :: T_NewEpochState_2222 -> AgdaAny
d_lastEpoch_2230 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2236 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.epochState
d_epochState_2232 :: T_NewEpochState_2222 -> T_EpochState_2198
d_epochState_2232 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2236 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.ru
d_ru_2234 :: T_NewEpochState_2222 -> Maybe T_RewardUpdate_2138
d_ru_2234 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2236 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.toRwdAddr
d_toRwdAddr_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_toRwdAddr_2284 v0 ~v1 v2 = du_toRwdAddr_2284 v0 v2
du_toRwdAddr_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
du_toRwdAddr_2284 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3193
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1210 (coe v0)))
      (coe v1)
-- Ledger.Epoch.getStakeCred
d_getStakeCred_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getStakeCred_2288 ~v0 ~v1 v2 = du_getStakeCred_2288 v2
du_getStakeCred_2288 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getStakeCred_2288 v0
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
d_applyRUpd_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_RewardUpdate_2138 -> T_EpochState_2198 -> T_EpochState_2198
d_applyRUpd_2292 v0 ~v1 v2 v3 = du_applyRUpd_2292 v0 v2 v3
du_applyRUpd_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RewardUpdate_2138 -> T_EpochState_2198 -> T_EpochState_2198
du_applyRUpd_2292 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2164 v3 v4 v5 v6
        -> case coe v2 of
             C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2220 v8 v9 v10 v11 v12
               -> case coe v8 of
                    MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156 v13 v14
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2062 v15 v16 v17
                             -> case coe v15 of
                                  MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1882 v18 v19 v20 v21
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_944 v22 v23 v24
                                           -> case coe v22 of
                                                MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904 v25 v26 v27
                                                  -> coe
                                                       C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2220
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
                                                                   du_unregRU''_2340 (coe v0)
                                                                   (coe v6) (coe v27))))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe v14) (coe v4))))
                                                       (coe v9)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2062
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
                                                                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
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
                                                                      du_regRU_2336 (coe v0)
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
d_regRU_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2178 ->
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
d_regRU_2336 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_regRU_2336 v0 v5 v17
du_regRU_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_2336 v0 v1 v2
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
d_unregRU_2338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2178 ->
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
d_unregRU_2338 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU_2338 v0 v5 v17
du_unregRU_2338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_2338 v0 v1 v2
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
d_unregRU''_2340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2178 ->
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
d_unregRU''_2340 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU''_2340 v0 v5 v17
du_unregRU''_2340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_2340 v0 v1 v2
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
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v3 -> v3)) (coe du_unregRU_2338 (coe v0) (coe v1) (coe v2))
-- Ledger.Epoch.stakeDistr
d_stakeDistr_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 -> T_Snapshot_2166
d_stakeDistr_2344 v0 ~v1 v2 v3 ~v4 = du_stakeDistr_2344 v0 v2 v3
du_stakeDistr_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_890 -> T_Snapshot_2166
du_stakeDistr_2344 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_904 v3 v4 v5
        -> coe
             C_'10214'_'44'_'10215''738'_2176
             (coe
                MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_498
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
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
                   (coe du_stakeRelation_2364 (coe v0) (coe v1) (coe v5))))
             (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch._.m
d_m_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_m_2358 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 = du_m_2358 v0 v2 v5
du_m_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_m_2358 v0 v1 v2
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
                            (coe du_getStakeCred_2288 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))))))
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_540
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2)))
-- Ledger.Epoch._.stakeRelation
d_stakeRelation_2364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeRelation_2364 v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_stakeRelation_2364 v0 v2 v5
du_stakeRelation_2364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeRelation_2364 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
         (coe du_m_2358 (coe v0) (coe v1) (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Ledger.Epoch.gaDepositStake
d_gaDepositStake_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gaDepositStake_2366 v0 ~v1 v2 v3
  = du_gaDepositStake_2366 v0 v2 v3
du_gaDepositStake_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gaDepositStake_2366 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1180
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1194 (coe v0))
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
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
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
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
         (coe du_govSt''_2376 (coe v1)))
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
         (coe du_govSt''_2376 (coe v1)))
-- Ledger.Epoch._.govSt'
d_govSt''_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2376 ~v0 ~v1 v2 ~v3 = du_govSt''_2376 v2
du_govSt''_2376 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2376 v0
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
d_mkStakeDistrs_2388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_Snapshot_2166 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1884
d_mkStakeDistrs_2388 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_2388 v0 v2 v3 v4 v5
du_mkStakeDistrs_2388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_Snapshot_2166 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1884
du_mkStakeDistrs_2388 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11247
      (case coe v1 of
         C_'10214'_'44'_'10215''738'_2176 v5 v6
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
                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                   (coe
                      MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
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
                   v5 (coe du_gaDepositStake_2366 (coe v0) (coe v2) (coe v3)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Epoch._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2398 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2398 = C_SNAP_2428
-- Ledger.Epoch._.certState
d_certState_2402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_22843 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_2402 ~v0 ~v1 v2 = du_certState_2402 v2
du_certState_2402 ::
  T_GeneralizeTel_22843 -> MAlonzo.Code.Ledger.Certs.T_CertState_930
du_certState_2402 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_certState_2060
      (coe d_'46'generalizedField'45'lstate_22833 (coe v0))
-- Ledger.Epoch._.utxoSt
d_utxoSt_2406 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_22843 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
d_utxoSt_2406 ~v0 ~v1 v2 = du_utxoSt_2406 v2
du_utxoSt_2406 ::
  T_GeneralizeTel_22843 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1864
du_utxoSt_2406 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_utxoSt_2056
      (coe d_'46'generalizedField'45'lstate_22833 (coe v0))
-- Ledger.Epoch._.fees
d_fees_2414 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_22843 -> Integer
d_fees_2414 ~v0 ~v1 v2 = du_fees_2414 v2
du_fees_2414 :: T_GeneralizeTel_22843 -> Integer
du_fees_2414 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1876
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2056
         (coe d_'46'generalizedField'45'lstate_22833 (coe v0)))
-- Ledger.Epoch._.utxo
d_utxo_2416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_22843 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2416 ~v0 ~v1 v2 = du_utxo_2416 v2
du_utxo_2416 ::
  T_GeneralizeTel_22843 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2416 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1874
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2056
         (coe d_'46'generalizedField'45'lstate_22833 (coe v0)))
-- Ledger.Epoch._.dState
d_dState_2420 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_22843 -> MAlonzo.Code.Ledger.Certs.T_DState_890
d_dState_2420 ~v0 ~v1 v2 = du_dState_2420 v2
du_dState_2420 ::
  T_GeneralizeTel_22843 -> MAlonzo.Code.Ledger.Certs.T_DState_890
du_dState_2420 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dState_938
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_2060
         (coe d_'46'generalizedField'45'lstate_22833 (coe v0)))
-- Ledger.Epoch._.pState
d_pState_2424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_22843 -> MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_2424 ~v0 ~v1 v2 = du_pState_2424 v2
du_pState_2424 ::
  T_GeneralizeTel_22843 -> MAlonzo.Code.Ledger.Certs.T_PState_906
du_pState_2424 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_pState_940
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_2060
         (coe d_'46'generalizedField'45'lstate_22833 (coe v0)))
-- Ledger.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2430 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__2430
  = C_EPOCH_2500 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
                 T__'8866'_'8640''10631'_'44'SNAP'10632'__2398
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_2496 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_29717 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2496 ~v0 ~v1 v2 = du_ccHotKeys_2496 v2
du_ccHotKeys_2496 ::
  T_GeneralizeTel_29717 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2496 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_926
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_942
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_2060
            (coe d_'46'generalizedField'45'ls_29703 (coe v0))))
-- Ledger.Epoch._.dreps
d_dreps_2498 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1650 ->
  T_GeneralizeTel_29717 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2498 ~v0 ~v1 v2 = du_dreps_2498 v2
du_dreps_2498 ::
  T_GeneralizeTel_29717 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2498 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_924
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_942
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_2060
            (coe d_'46'generalizedField'45'ls_29703 (coe v0))))
-- Ledger.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2502 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2502
  = C_NEWEPOCH'45'New_2506 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_2508 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_2510 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch..generalizedField-lstate
d_'46'generalizedField'45'lstate_22833 ::
  T_GeneralizeTel_22843 -> MAlonzo.Code.Ledger.Ledger.T_LState_2048
d_'46'generalizedField'45'lstate_22833 v0
  = case coe v0 of
      C_mkGeneralizeTel_22845 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-mark
d_'46'generalizedField'45'mark_22835 ::
  T_GeneralizeTel_22843 -> T_Snapshot_2166
d_'46'generalizedField'45'mark_22835 v0
  = case coe v0 of
      C_mkGeneralizeTel_22845 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-set
d_'46'generalizedField'45'set_22837 ::
  T_GeneralizeTel_22843 -> T_Snapshot_2166
d_'46'generalizedField'45'set_22837 v0
  = case coe v0 of
      C_mkGeneralizeTel_22845 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-go
d_'46'generalizedField'45'go_22839 ::
  T_GeneralizeTel_22843 -> T_Snapshot_2166
d_'46'generalizedField'45'go_22839 v0
  = case coe v0 of
      C_mkGeneralizeTel_22845 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_22841 ::
  T_GeneralizeTel_22843 -> Integer
d_'46'generalizedField'45'feeSS_22841 v0
  = case coe v0 of
      C_mkGeneralizeTel_22845 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_22843 a0 a1 = ()
data T_GeneralizeTel_22843
  = C_mkGeneralizeTel_22845 MAlonzo.Code.Ledger.Ledger.T_LState_2048
                            T_Snapshot_2166 T_Snapshot_2166 T_Snapshot_2166 Integer
-- Ledger.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_29701 ::
  T_GeneralizeTel_29717 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912
d_'46'generalizedField'45'fut_29701 v0
  = case coe v0 of
      C_mkGeneralizeTel_29719 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_29703 ::
  T_GeneralizeTel_29717 -> MAlonzo.Code.Ledger.Ledger.T_LState_2048
d_'46'generalizedField'45'ls_29703 v0
  = case coe v0 of
      C_mkGeneralizeTel_29719 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-e
d_'46'generalizedField'45'e_29705 ::
  T_GeneralizeTel_29717 -> AgdaAny
d_'46'generalizedField'45'e_29705 v0
  = case coe v0 of
      C_mkGeneralizeTel_29719 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_29707 ::
  T_GeneralizeTel_29717 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_'46'generalizedField'45'acnt_29707 v0
  = case coe v0 of
      C_mkGeneralizeTel_29719 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_29709 ::
  T_GeneralizeTel_29717 -> T_Snapshots_2178
d_'46'generalizedField'45'ss''_29709 v0
  = case coe v0 of
      C_mkGeneralizeTel_29719 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_29711 ::
  T_GeneralizeTel_29717 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912
d_'46'generalizedField'45'fut''_29711 v0
  = case coe v0 of
      C_mkGeneralizeTel_29719 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_29713 ::
  T_GeneralizeTel_29717 -> T_Snapshots_2178
d_'46'generalizedField'45'ss_29713 v0
  = case coe v0 of
      C_mkGeneralizeTel_29719 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_29715 ::
  T_GeneralizeTel_29717 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_'46'generalizedField'45'es'8320'_29715 v0
  = case coe v0 of
      C_mkGeneralizeTel_29719 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_29717 a0 a1 = ()
data T_GeneralizeTel_29717
  = C_mkGeneralizeTel_29719 MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912
                            MAlonzo.Code.Ledger.Ledger.T_LState_2048 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_Acnt_146 T_Snapshots_2178
                            MAlonzo.Code.Ledger.Ratify.T_RatifyState_1912 T_Snapshots_2178
                            MAlonzo.Code.Ledger.Enact.T_EnactState_830
