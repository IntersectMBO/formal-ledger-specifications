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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_118 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_146 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))
-- _.DepositPurpose
d_DepositPurpose_186 a0 = ()
-- _.Deposits
d_Deposits_188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Deposits_188 = erased
-- _.Epoch
d_Epoch_194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_194 = erased
-- _.GState
d_GState_206 a0 = ()
-- _.THash
d_THash_256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_256 = erased
-- _.Number-Epoch
d_Number'45'Epoch_282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_282 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0))
-- _.PState
d_PState_306 a0 = ()
-- _.RwdAddr
d_RwdAddr_348 a0 = ()
-- _.TxOut
d_TxOut_450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_450 = erased
-- _.UTxO
d_UTxO_456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_456 = erased
-- _.VDeleg
d_VDeleg_462 a0 = ()
-- _.addEpoch
d_addEpoch_492 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_492 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0))
-- _.Acnt.reserves
d_reserves_738 :: MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_reserves_738 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_152 (coe v0)
-- _.Acnt.treasury
d_treasury_740 :: MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_treasury_740 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_150 (coe v0)
-- _.CertState.dState
d_dState_778 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  MAlonzo.Code.Ledger.Certs.T_DState_888
d_dState_778 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_936 (coe v0)
-- _.CertState.gState
d_gState_780 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  MAlonzo.Code.Ledger.Certs.T_GState_916
d_gState_780 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_940 (coe v0)
-- _.CertState.pState
d_pState_782 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904
d_pState_782 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_938 (coe v0)
-- _.DState.rewards
d_rewards_808 ::
  MAlonzo.Code.Ledger.Certs.T_DState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_808 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_900 (coe v0)
-- _.DState.stakeDelegs
d_stakeDelegs_810 ::
  MAlonzo.Code.Ledger.Certs.T_DState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_810 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_898 (coe v0)
-- _.DState.voteDelegs
d_voteDelegs_812 ::
  MAlonzo.Code.Ledger.Certs.T_DState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_812 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_896 (coe v0)
-- _.GState.ccHotKeys
d_ccHotKeys_866 ::
  MAlonzo.Code.Ledger.Certs.T_GState_916 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_866 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_924 (coe v0)
-- _.GState.dreps
d_dreps_868 ::
  MAlonzo.Code.Ledger.Certs.T_GState_916 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_868 v0 = coe MAlonzo.Code.Ledger.Certs.d_dreps_922 (coe v0)
-- _.GovernanceActions.VDeleg
d_VDeleg_1012 a0 = ()
-- _.PState.pools
d_pools_1304 ::
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1304 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_910 (coe v0)
-- _.PState.retiring
d_retiring_1306 ::
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1306 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_912 (coe v0)
-- _.RwdAddr.net
d_net_1396 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1396 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_1398 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1398 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Epoch._.GovState
d_GovState_1750 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 -> ()
d_GovState_1750 = erased
-- Ledger.Epoch._.EnactState
d_EnactState_1854 a0 a1 = ()
-- Ledger.Epoch._.ccCreds
d_ccCreds_1856 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_1856 ~v0 ~v1 = du_ccCreds_1856
du_ccCreds_1856 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_1856 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_850
-- Ledger.Epoch._.EnactState.cc
d_cc_1890 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1890 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v0)
-- Ledger.Epoch._.EnactState.constitution
d_constitution_1892 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1892 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_842 (coe v0)
-- Ledger.Epoch._.EnactState.pparams
d_pparams_1894 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1894 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v0)
-- Ledger.Epoch._.EnactState.pv
d_pv_1896 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1896 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_844 (coe v0)
-- Ledger.Epoch._.EnactState.withdrawals
d_withdrawals_1898 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1898 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_848 (coe v0)
-- Ledger.Epoch._.LState
d_LState_1912 a0 a1 = ()
-- Ledger.Epoch._.LState.certState
d_certState_1940 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2136 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_928
d_certState_1940 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_certState_2148 (coe v0)
-- Ledger.Epoch._.LState.govSt
d_govSt_1942 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2136 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1942 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_govSt_2146 (coe v0)
-- Ledger.Epoch._.LState.utxoSt
d_utxoSt_1944 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2136 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952
d_utxoSt_1944 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_2144 (coe v0)
-- Ledger.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2000 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2000 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1954 = erased
-- Ledger.Epoch._.RatifyState
d_RatifyState_1974 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs
d_StakeDistrs_1976 a0 a1 = ()
-- Ledger.Epoch._.RatifyState.delay
d_delay_2064 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2000 -> Bool
d_delay_2064 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_delay_2012 (coe v0)
-- Ledger.Epoch._.RatifyState.es
d_es_2066 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2000 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_es_2066 v0 = coe MAlonzo.Code.Ledger.Ratify.d_es_2008 (coe v0)
-- Ledger.Epoch._.RatifyState.removed
d_removed_2068 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2000 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2068 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_removed_2010 (coe v0)
-- Ledger.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_2072 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2072 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1976 (coe v0)
-- Ledger.Epoch._.HasCoin-Map
d_HasCoin'45'Map_2092 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_2092 ~v0 ~v1 = du_HasCoin'45'Map_2092
du_HasCoin'45'Map_2092 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_2092 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1836 v1
-- Ledger.Epoch._.UTxOState
d_UTxOState_2112 a0 a1 = ()
-- Ledger.Epoch._.UTxOState.deposits
d_deposits_2208 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2208 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1966 (coe v0)
-- Ledger.Epoch._.UTxOState.donations
d_donations_2210 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952 -> Integer
d_donations_2210 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1968 (coe v0)
-- Ledger.Epoch._.UTxOState.fees
d_fees_2212 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952 -> Integer
d_fees_2212 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1964 (coe v0)
-- Ledger.Epoch._.UTxOState.utxo
d_utxo_2214 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2214 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1962 (coe v0)
-- Ledger.Epoch.RewardUpdate
d_RewardUpdate_2226 a0 a1 = ()
data T_RewardUpdate_2226
  = C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2252 Integer Integer
                                                     Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.RewardUpdate.Δt
d_Δt_2240 :: T_RewardUpdate_2226 -> Integer
d_Δt_2240 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2252 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δr
d_Δr_2242 :: T_RewardUpdate_2226 -> Integer
d_Δr_2242 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2252 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δf
d_Δf_2244 :: T_RewardUpdate_2226 -> Integer
d_Δf_2244 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2252 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.rs
d_rs_2246 ::
  T_RewardUpdate_2226 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2246 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2252 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.zeroSum
d_zeroSum_2250 ::
  T_RewardUpdate_2226 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zeroSum_2250 = erased
-- Ledger.Epoch.Snapshot
d_Snapshot_2254 a0 a1 = ()
data T_Snapshot_2254
  = C_'10214'_'44'_'10215''738'_2264 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.Snapshot.stake
d_stake_2260 ::
  T_Snapshot_2254 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2260 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2264 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshot.delegations
d_delegations_2262 ::
  T_Snapshot_2254 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2262 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2264 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots
d_Snapshots_2266 a0 a1 = ()
data T_Snapshots_2266
  = C_'10214'_'44'_'44'_'44'_'10215''738''738'_2284 T_Snapshot_2254
                                                    T_Snapshot_2254 T_Snapshot_2254 Integer
-- Ledger.Epoch.Snapshots.mark
d_mark_2276 :: T_Snapshots_2266 -> T_Snapshot_2254
d_mark_2276 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2284 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.set
d_set_2278 :: T_Snapshots_2266 -> T_Snapshot_2254
d_set_2278 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2284 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.go
d_go_2280 :: T_Snapshots_2266 -> T_Snapshot_2254
d_go_2280 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2284 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.feeSS
d_feeSS_2282 :: T_Snapshots_2266 -> Integer
d_feeSS_2282 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2284 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState
d_EpochState_2286 a0 a1 = ()
data T_EpochState_2286
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2308 MAlonzo.Code.Ledger.PParams.T_Acnt_144
                                                       T_Snapshots_2266
                                                       MAlonzo.Code.Ledger.Ledger.T_LState_2136
                                                       MAlonzo.Code.Ledger.Enact.T_EnactState_828
                                                       MAlonzo.Code.Ledger.Ratify.T_RatifyState_2000
-- Ledger.Epoch.EpochState.acnt
d_acnt_2298 ::
  T_EpochState_2286 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_acnt_2298 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2308 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ss
d_ss_2300 :: T_EpochState_2286 -> T_Snapshots_2266
d_ss_2300 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2308 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ls
d_ls_2302 ::
  T_EpochState_2286 -> MAlonzo.Code.Ledger.Ledger.T_LState_2136
d_ls_2302 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2308 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.es
d_es_2304 ::
  T_EpochState_2286 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_es_2304 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2308 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.fut
d_fut_2306 ::
  T_EpochState_2286 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_2000
d_fut_2306 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2308 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState
d_NewEpochState_2310 a0 a1 = ()
data T_NewEpochState_2310
  = C_'10214'_'44'_'44'_'10215''8319''7497'_2324 AgdaAny
                                                 T_EpochState_2286 (Maybe T_RewardUpdate_2226)
-- Ledger.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2318 :: T_NewEpochState_2310 -> AgdaAny
d_lastEpoch_2318 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2324 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.epochState
d_epochState_2320 :: T_NewEpochState_2310 -> T_EpochState_2286
d_epochState_2320 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2324 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.ru
d_ru_2322 :: T_NewEpochState_2310 -> Maybe T_RewardUpdate_2226
d_ru_2322 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2324 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.toRwdAddr
d_toRwdAddr_2372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_toRwdAddr_2372 v0 ~v1 v2 = du_toRwdAddr_2372 v0 v2
du_toRwdAddr_2372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
du_toRwdAddr_2372 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3193
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
      (coe v1)
-- Ledger.Epoch.getStakeCred
d_getStakeCred_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getStakeCred_2376 ~v0 ~v1 v2 = du_getStakeCred_2376 v2
du_getStakeCred_2376 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getStakeCred_2376 v0
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
d_applyRUpd_2380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_RewardUpdate_2226 -> T_EpochState_2286 -> T_EpochState_2286
d_applyRUpd_2380 v0 ~v1 v2 v3 = du_applyRUpd_2380 v0 v2 v3
du_applyRUpd_2380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RewardUpdate_2226 -> T_EpochState_2286 -> T_EpochState_2286
du_applyRUpd_2380 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2252 v3 v4 v5 v6
        -> case coe v2 of
             C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2308 v8 v9 v10 v11 v12
               -> case coe v8 of
                    MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_154 v13 v14
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2150 v15 v16 v17
                             -> case coe v15 of
                                  MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1970 v18 v19 v20 v21
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_942 v22 v23 v24
                                           -> case coe v22 of
                                                MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_902 v25 v26 v27
                                                  -> coe
                                                       C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2308
                                                       (coe
                                                          MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_154
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v13) (coe v3))
                                                                (coe
                                                                   du_unregRU''_2428 (coe v0)
                                                                   (coe v6) (coe v27))))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe v14) (coe v4))))
                                                       (coe v9)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2150
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1970
                                                             (coe v18)
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v19) (coe v5)))
                                                             (coe v20) (coe v21))
                                                          (coe v16)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_942
                                                             (coe
                                                                MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_902
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
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                                                            (coe v0))))
                                                                   v27
                                                                   (coe
                                                                      du_regRU_2424 (coe v0)
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
d_regRU_2424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Ledger.Certs.T_GState_916 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_2424 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_regRU_2424 v0 v5 v17
du_regRU_2424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_2424 v0 v1 v2
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
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_540
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2))
-- Ledger.Epoch._.unregRU
d_unregRU_2426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Ledger.Certs.T_GState_916 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_2426 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU_2426 v0 v5 v17
du_unregRU_2426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_2426 v0 v1 v2
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
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_540
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2))
-- Ledger.Epoch._.unregRU'
d_unregRU''_2428 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Ledger.Certs.T_GState_916 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2000 -> Integer
d_unregRU''_2428 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU''_2428 v0 v5 v17
du_unregRU''_2428 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_2428 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v3 -> v3)) (coe du_unregRU_2426 (coe v0) (coe v1) (coe v2))
-- Ledger.Epoch.stakeDistr
d_stakeDistr_2432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_888 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904 -> T_Snapshot_2254
d_stakeDistr_2432 v0 ~v1 v2 v3 ~v4 = du_stakeDistr_2432 v0 v2 v3
du_stakeDistr_2432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_888 -> T_Snapshot_2254
du_stakeDistr_2432 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_902 v3 v4 v5
        -> coe
             C_'10214'_'44'_'10215''738'_2264
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
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1122
                   (coe du_stakeRelation_2452 (coe v0) (coe v1) (coe v5))))
             (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch._.m
d_m_2446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_m_2446 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 = du_m_2446 v0 v2 v5
du_m_2446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_m_2446 v0 v1 v2
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
                 MAlonzo.Code.Ledger.Utxo.du_cbalance_1994 (coe v0)
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
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1242
                                           (coe v0))))))
                            (coe du_getStakeCred_2376 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))))))
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_540
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2)))
-- Ledger.Epoch._.stakeRelation
d_stakeRelation_2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeRelation_2452 v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_stakeRelation_2452 v0 v2 v5
du_stakeRelation_2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeRelation_2452 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
         (coe du_m_2446 (coe v0) (coe v1) (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Ledger.Epoch.gaDepositStake
d_gaDepositStake_2454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gaDepositStake_2454 v0 ~v1 v2 v3
  = du_gaDepositStake_2454 v0 v2 v3
du_gaDepositStake_2454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gaDepositStake_2454 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1180
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202 (coe v0))
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
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
         (coe du_govSt''_2464 (coe v1)))
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
                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_820
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_820
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v4
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v2)))))))
         (coe du_govSt''_2464 (coe v1)))
-- Ledger.Epoch._.govSt'
d_govSt''_2464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2464 ~v0 ~v1 v2 ~v3 = du_govSt''_2464 v2
du_govSt''_2464 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2464 v0
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
                  MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_792 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_416
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe v0)))
-- Ledger.Epoch.mkStakeDistrs
d_mkStakeDistrs_2476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_Snapshot_2254 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1972
d_mkStakeDistrs_2476 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_2476 v0 v2 v3 v4 v5
du_mkStakeDistrs_2476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_Snapshot_2254 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1972
du_mkStakeDistrs_2476 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11339
      (case coe v1 of
         C_'10214'_'44'_'10215''738'_2264 v5 v6
           -> coe
                MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1180
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0)))
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
                            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
                   v5 (coe du_gaDepositStake_2454 (coe v0) (coe v2) (coe v3)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Epoch._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2486 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2486 = C_SNAP_2516
-- Ledger.Epoch._.certState
d_certState_2490 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_22935 -> MAlonzo.Code.Ledger.Certs.T_CertState_928
d_certState_2490 ~v0 ~v1 v2 = du_certState_2490 v2
du_certState_2490 ::
  T_GeneralizeTel_22935 -> MAlonzo.Code.Ledger.Certs.T_CertState_928
du_certState_2490 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_certState_2148
      (coe d_'46'generalizedField'45'lstate_22925 (coe v0))
-- Ledger.Epoch._.utxoSt
d_utxoSt_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_22935 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952
d_utxoSt_2494 ~v0 ~v1 v2 = du_utxoSt_2494 v2
du_utxoSt_2494 ::
  T_GeneralizeTel_22935 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1952
du_utxoSt_2494 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_utxoSt_2144
      (coe d_'46'generalizedField'45'lstate_22925 (coe v0))
-- Ledger.Epoch._.fees
d_fees_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_22935 -> Integer
d_fees_2502 ~v0 ~v1 v2 = du_fees_2502 v2
du_fees_2502 :: T_GeneralizeTel_22935 -> Integer
du_fees_2502 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1964
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2144
         (coe d_'46'generalizedField'45'lstate_22925 (coe v0)))
-- Ledger.Epoch._.utxo
d_utxo_2504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_22935 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2504 ~v0 ~v1 v2 = du_utxo_2504 v2
du_utxo_2504 ::
  T_GeneralizeTel_22935 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2504 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1962
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2144
         (coe d_'46'generalizedField'45'lstate_22925 (coe v0)))
-- Ledger.Epoch._.dState
d_dState_2508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_22935 -> MAlonzo.Code.Ledger.Certs.T_DState_888
d_dState_2508 ~v0 ~v1 v2 = du_dState_2508 v2
du_dState_2508 ::
  T_GeneralizeTel_22935 -> MAlonzo.Code.Ledger.Certs.T_DState_888
du_dState_2508 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dState_936
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_2148
         (coe d_'46'generalizedField'45'lstate_22925 (coe v0)))
-- Ledger.Epoch._.pState
d_pState_2512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_22935 -> MAlonzo.Code.Ledger.Certs.T_PState_904
d_pState_2512 ~v0 ~v1 v2 = du_pState_2512 v2
du_pState_2512 ::
  T_GeneralizeTel_22935 -> MAlonzo.Code.Ledger.Certs.T_PState_904
du_pState_2512 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_pState_938
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_2148
         (coe d_'46'generalizedField'45'lstate_22925 (coe v0)))
-- Ledger.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2518 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__2518
  = C_EPOCH_2588 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
                 T__'8866'_'8640''10631'_'44'SNAP'10632'__2486
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_2584 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_29809 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2584 ~v0 ~v1 v2 = du_ccHotKeys_2584 v2
du_ccHotKeys_2584 ::
  T_GeneralizeTel_29809 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2584 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_924
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_940
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_2148
            (coe d_'46'generalizedField'45'ls_29795 (coe v0))))
-- Ledger.Epoch._.dreps
d_dreps_2586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  T_GeneralizeTel_29809 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2586 ~v0 ~v1 v2 = du_dreps_2586 v2
du_dreps_2586 ::
  T_GeneralizeTel_29809 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2586 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_922
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_940
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_2148
            (coe d_'46'generalizedField'45'ls_29795 (coe v0))))
-- Ledger.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2590 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2590
  = C_NEWEPOCH'45'New_2594 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_2596 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_2598 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch..generalizedField-lstate
d_'46'generalizedField'45'lstate_22925 ::
  T_GeneralizeTel_22935 -> MAlonzo.Code.Ledger.Ledger.T_LState_2136
d_'46'generalizedField'45'lstate_22925 v0
  = case coe v0 of
      C_mkGeneralizeTel_22937 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-mark
d_'46'generalizedField'45'mark_22927 ::
  T_GeneralizeTel_22935 -> T_Snapshot_2254
d_'46'generalizedField'45'mark_22927 v0
  = case coe v0 of
      C_mkGeneralizeTel_22937 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-set
d_'46'generalizedField'45'set_22929 ::
  T_GeneralizeTel_22935 -> T_Snapshot_2254
d_'46'generalizedField'45'set_22929 v0
  = case coe v0 of
      C_mkGeneralizeTel_22937 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-go
d_'46'generalizedField'45'go_22931 ::
  T_GeneralizeTel_22935 -> T_Snapshot_2254
d_'46'generalizedField'45'go_22931 v0
  = case coe v0 of
      C_mkGeneralizeTel_22937 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_22933 ::
  T_GeneralizeTel_22935 -> Integer
d_'46'generalizedField'45'feeSS_22933 v0
  = case coe v0 of
      C_mkGeneralizeTel_22937 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_22935 a0 a1 = ()
data T_GeneralizeTel_22935
  = C_mkGeneralizeTel_22937 MAlonzo.Code.Ledger.Ledger.T_LState_2136
                            T_Snapshot_2254 T_Snapshot_2254 T_Snapshot_2254 Integer
-- Ledger.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_29793 ::
  T_GeneralizeTel_29809 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2000
d_'46'generalizedField'45'fut_29793 v0
  = case coe v0 of
      C_mkGeneralizeTel_29811 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_29795 ::
  T_GeneralizeTel_29809 -> MAlonzo.Code.Ledger.Ledger.T_LState_2136
d_'46'generalizedField'45'ls_29795 v0
  = case coe v0 of
      C_mkGeneralizeTel_29811 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-e
d_'46'generalizedField'45'e_29797 ::
  T_GeneralizeTel_29809 -> AgdaAny
d_'46'generalizedField'45'e_29797 v0
  = case coe v0 of
      C_mkGeneralizeTel_29811 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_29799 ::
  T_GeneralizeTel_29809 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_'46'generalizedField'45'acnt_29799 v0
  = case coe v0 of
      C_mkGeneralizeTel_29811 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_29801 ::
  T_GeneralizeTel_29809 -> T_Snapshots_2266
d_'46'generalizedField'45'ss''_29801 v0
  = case coe v0 of
      C_mkGeneralizeTel_29811 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_29803 ::
  T_GeneralizeTel_29809 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2000
d_'46'generalizedField'45'fut''_29803 v0
  = case coe v0 of
      C_mkGeneralizeTel_29811 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_29805 ::
  T_GeneralizeTel_29809 -> T_Snapshots_2266
d_'46'generalizedField'45'ss_29805 v0
  = case coe v0 of
      C_mkGeneralizeTel_29811 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_29807 ::
  T_GeneralizeTel_29809 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_'46'generalizedField'45'es'8320'_29807 v0
  = case coe v0 of
      C_mkGeneralizeTel_29811 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_29809 a0 a1 = ()
data T_GeneralizeTel_29809
  = C_mkGeneralizeTel_29811 MAlonzo.Code.Ledger.Ratify.T_RatifyState_2000
                            MAlonzo.Code.Ledger.Ledger.T_LState_2136 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_Acnt_144 T_Snapshots_2266
                            MAlonzo.Code.Ledger.Ratify.T_RatifyState_2000 T_Snapshots_2266
                            MAlonzo.Code.Ledger.Enact.T_EnactState_828
