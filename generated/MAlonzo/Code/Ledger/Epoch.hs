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
import qualified MAlonzo.Code.Agda.Builtin.List
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
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.GeneralisedArithmetic
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
import qualified MAlonzo.Code.Ledger.Gov
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
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_118 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0))
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
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))
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
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
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
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1542 (coe v0))
-- _.Acnt.reserves
d_reserves_740 :: MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_reserves_740 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_154 (coe v0)
-- _.Acnt.treasury
d_treasury_742 :: MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_treasury_742 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_152 (coe v0)
-- _.CertState.dState
d_dState_780 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  MAlonzo.Code.Ledger.Certs.T_DState_912
d_dState_780 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_960 (coe v0)
-- _.CertState.gState
d_gState_782 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940
d_gState_782 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_964 (coe v0)
-- _.CertState.pState
d_pState_784 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  MAlonzo.Code.Ledger.Certs.T_PState_928
d_pState_784 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_962 (coe v0)
-- _.DState.rewards
d_rewards_810 ::
  MAlonzo.Code.Ledger.Certs.T_DState_912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_810 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_924 (coe v0)
-- _.DState.stakeDelegs
d_stakeDelegs_812 ::
  MAlonzo.Code.Ledger.Certs.T_DState_912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_812 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_922 (coe v0)
-- _.DState.voteDelegs
d_voteDelegs_814 ::
  MAlonzo.Code.Ledger.Certs.T_DState_912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_814 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_920 (coe v0)
-- _.GState.ccHotKeys
d_ccHotKeys_868 ::
  MAlonzo.Code.Ledger.Certs.T_GState_940 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_868 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_948 (coe v0)
-- _.GState.dreps
d_dreps_870 ::
  MAlonzo.Code.Ledger.Certs.T_GState_940 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_870 v0 = coe MAlonzo.Code.Ledger.Certs.d_dreps_946 (coe v0)
-- _.GovernanceActions.VDeleg
d_VDeleg_1014 a0 = ()
-- _.PState.pools
d_pools_1316 ::
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1316 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_934 (coe v0)
-- _.PState.retiring
d_retiring_1318 ::
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1318 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_936 (coe v0)
-- _.RwdAddr.net
d_net_1408 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1408 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_1410 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1410 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Epoch._.GovState
d_GovState_1764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 -> ()
d_GovState_1764 = erased
-- Ledger.Epoch._.EnactState
d_EnactState_1868 a0 a1 = ()
-- Ledger.Epoch._.ccCreds
d_ccCreds_1870 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_1870 ~v0 ~v1 = du_ccCreds_1870
du_ccCreds_1870 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_1870 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_874
-- Ledger.Epoch._.EnactState.cc
d_cc_1904 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1904 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v0)
-- Ledger.Epoch._.EnactState.constitution
d_constitution_1906 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1906 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_866 (coe v0)
-- Ledger.Epoch._.EnactState.pparams
d_pparams_1908 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1908 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v0)
-- Ledger.Epoch._.EnactState.pv
d_pv_1910 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1910 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_868 (coe v0)
-- Ledger.Epoch._.EnactState.withdrawals
d_withdrawals_1912 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1912 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_872 (coe v0)
-- Ledger.Epoch._.LState
d_LState_1926 a0 a1 = ()
-- Ledger.Epoch._.LState.certState
d_certState_1954 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2152 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952
d_certState_1954 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_certState_2164 (coe v0)
-- Ledger.Epoch._.LState.govSt
d_govSt_1956 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1956 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_govSt_2162 (coe v0)
-- Ledger.Epoch._.LState.utxoSt
d_utxoSt_1958 ::
  MAlonzo.Code.Ledger.Ledger.T_LState_2152 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
d_utxoSt_1958 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160 (coe v0)
-- Ledger.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_2000 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1968 = erased
-- Ledger.Epoch._.RatifyState
d_RatifyState_1988 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs
d_StakeDistrs_1990 a0 a1 = ()
-- Ledger.Epoch._.RatifyState.delay
d_delay_2078 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022 -> Bool
d_delay_2078 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_delay_2034 (coe v0)
-- Ledger.Epoch._.RatifyState.es
d_es_2080 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_es_2080 v0 = coe MAlonzo.Code.Ledger.Ratify.d_es_2030 (coe v0)
-- Ledger.Epoch._.RatifyState.removed
d_removed_2082 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2082 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_removed_2032 (coe v0)
-- Ledger.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_2086 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2086 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1998 (coe v0)
-- Ledger.Epoch._.HasCoin-Map
d_HasCoin'45'Map_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_2106 ~v0 ~v1 = du_HasCoin'45'Map_2106
du_HasCoin'45'Map_2106 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_2106 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1854 v1
-- Ledger.Epoch._.UTxOState
d_UTxOState_2126 a0 a1 = ()
-- Ledger.Epoch._.UTxOState.deposits
d_deposits_2224 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2224 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1984 (coe v0)
-- Ledger.Epoch._.UTxOState.donations
d_donations_2226 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 -> Integer
d_donations_2226 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1986 (coe v0)
-- Ledger.Epoch._.UTxOState.fees
d_fees_2228 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 -> Integer
d_fees_2228 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1982 (coe v0)
-- Ledger.Epoch._.UTxOState.utxo
d_utxo_2230 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2230 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1980 (coe v0)
-- Ledger.Epoch.RewardUpdate
d_RewardUpdate_2242 a0 a1 = ()
data T_RewardUpdate_2242
  = C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2268 Integer Integer
                                                     Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.RewardUpdate.Δt
d_Δt_2256 :: T_RewardUpdate_2242 -> Integer
d_Δt_2256 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2268 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δr
d_Δr_2258 :: T_RewardUpdate_2242 -> Integer
d_Δr_2258 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2268 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.Δf
d_Δf_2260 :: T_RewardUpdate_2242 -> Integer
d_Δf_2260 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2268 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.rs
d_rs_2262 ::
  T_RewardUpdate_2242 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2262 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2268 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.RewardUpdate.zeroSum
d_zeroSum_2266 ::
  T_RewardUpdate_2242 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zeroSum_2266 = erased
-- Ledger.Epoch.Snapshot
d_Snapshot_2270 a0 a1 = ()
data T_Snapshot_2270
  = C_'10214'_'44'_'10215''738'_2280 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch.Snapshot.stake
d_stake_2276 ::
  T_Snapshot_2270 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2276 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2280 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshot.delegations
d_delegations_2278 ::
  T_Snapshot_2270 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2278 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2280 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots
d_Snapshots_2282 a0 a1 = ()
data T_Snapshots_2282
  = C_'10214'_'44'_'44'_'44'_'10215''738''738'_2300 T_Snapshot_2270
                                                    T_Snapshot_2270 T_Snapshot_2270 Integer
-- Ledger.Epoch.Snapshots.mark
d_mark_2292 :: T_Snapshots_2282 -> T_Snapshot_2270
d_mark_2292 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2300 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.set
d_set_2294 :: T_Snapshots_2282 -> T_Snapshot_2270
d_set_2294 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2300 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.go
d_go_2296 :: T_Snapshots_2282 -> T_Snapshot_2270
d_go_2296 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2300 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.Snapshots.feeSS
d_feeSS_2298 :: T_Snapshots_2282 -> Integer
d_feeSS_2298 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2300 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState
d_EpochState_2302 a0 a1 = ()
data T_EpochState_2302
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2324 MAlonzo.Code.Ledger.PParams.T_Acnt_146
                                                       T_Snapshots_2282
                                                       MAlonzo.Code.Ledger.Ledger.T_LState_2152
                                                       MAlonzo.Code.Ledger.Enact.T_EnactState_852
                                                       MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022
-- Ledger.Epoch.EpochState.acnt
d_acnt_2314 ::
  T_EpochState_2302 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_acnt_2314 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2324 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ss
d_ss_2316 :: T_EpochState_2302 -> T_Snapshots_2282
d_ss_2316 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2324 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ls
d_ls_2318 ::
  T_EpochState_2302 -> MAlonzo.Code.Ledger.Ledger.T_LState_2152
d_ls_2318 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2324 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.es
d_es_2320 ::
  T_EpochState_2302 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_es_2320 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2324 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.fut
d_fut_2322 ::
  T_EpochState_2302 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022
d_fut_2322 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2324 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState
d_NewEpochState_2326 a0 a1 = ()
data T_NewEpochState_2326
  = C_'10214'_'44'_'44'_'10215''8319''7497'_2340 AgdaAny
                                                 T_EpochState_2302 (Maybe T_RewardUpdate_2242)
-- Ledger.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2334 :: T_NewEpochState_2326 -> AgdaAny
d_lastEpoch_2334 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2340 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.epochState
d_epochState_2336 :: T_NewEpochState_2326 -> T_EpochState_2302
d_epochState_2336 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2340 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.ru
d_ru_2338 :: T_NewEpochState_2326 -> Maybe T_RewardUpdate_2242
d_ru_2338 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2340 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.toRwdAddr
d_toRwdAddr_2388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_toRwdAddr_2388 v0 ~v1 v2 = du_toRwdAddr_2388 v0 v2
du_toRwdAddr_2388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
du_toRwdAddr_2388 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3193
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232 (coe v0)))
      (coe v1)
-- Ledger.Epoch.getStakeCred
d_getStakeCred_2392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getStakeCred_2392 ~v0 ~v1 v2 = du_getStakeCred_2392 v2
du_getStakeCred_2392 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getStakeCred_2392 v0
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
d_applyRUpd_2396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_RewardUpdate_2242 -> T_EpochState_2302 -> T_EpochState_2302
d_applyRUpd_2396 v0 ~v1 v2 v3 = du_applyRUpd_2396 v0 v2 v3
du_applyRUpd_2396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RewardUpdate_2242 -> T_EpochState_2302 -> T_EpochState_2302
du_applyRUpd_2396 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2268 v3 v4 v5 v6
        -> case coe v2 of
             C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2324 v8 v9 v10 v11 v12
               -> case coe v8 of
                    MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156 v13 v14
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2166 v15 v16 v17
                             -> case coe v15 of
                                  MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1988 v18 v19 v20 v21
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_966 v22 v23 v24
                                           -> case coe v22 of
                                                MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_926 v25 v26 v27
                                                  -> coe
                                                       C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2324
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
                                                                   du_unregRU''_2444 (coe v0)
                                                                   (coe v6) (coe v27))))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe v14) (coe v4))))
                                                       (coe v9)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_2166
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1988
                                                             (coe v18)
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v19) (coe v5)))
                                                             (coe v20) (coe v21))
                                                          (coe v16)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_966
                                                             (coe
                                                                MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_926
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
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                                                            (coe v0))))
                                                                   v27
                                                                   (coe
                                                                      du_regRU_2440 (coe v0)
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
d_regRU_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_2440 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_regRU_2440 v0 v5 v17
du_regRU_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_2440 v0 v1 v2
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
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_540
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2))
-- Ledger.Epoch._.unregRU
d_unregRU_2442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_2442 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU_2442 v0 v5 v17
du_unregRU_2442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_2442 v0 v1 v2
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
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_540
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2))
-- Ledger.Epoch._.unregRU'
d_unregRU''_2444 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  MAlonzo.Code.Ledger.Certs.T_GState_940 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022 -> Integer
d_unregRU''_2444 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU''_2444 v0 v5 v17
du_unregRU''_2444 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_2444 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v3 -> v3)) (coe du_unregRU_2442 (coe v0) (coe v1) (coe v2))
-- Ledger.Epoch.getOrphans
d_getOrphans_2448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getOrphans_2448 v0 ~v1 v2 v3 = du_getOrphans_2448 v0 v2 v3
du_getOrphans_2448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getOrphans_2448 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Data.Nat.GeneralisedArithmetic.du_iterate_22
         (coe du_step_2458 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v2))
         (coe MAlonzo.Code.Data.List.Base.du_length_284 v2))
-- Ledger.Epoch._.step
d_step_2458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_step_2458 v0 ~v1 v2 ~v3 v4 = du_step_2458 v0 v2 v4
du_step_2458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_step_2458 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v3)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Data.List.Base.du_partition_696
                      (coe
                         (\ v5 ->
                            coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_70
                              (coe
                                 MAlonzo.Code.Ledger.Gov.d_hasParent'63'_1346 (coe v0) (coe v1)
                                 (coe v4)
                                 (coe
                                    MAlonzo.Code.Ledger.GovernanceActions.d_action_820
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                 (coe
                                    MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_822
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
                      (coe v4))))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe
                   MAlonzo.Code.Data.List.Base.du_partition_696
                   (coe
                      (\ v5 ->
                         coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_70
                           (coe
                              MAlonzo.Code.Ledger.Gov.d_hasParent'63'_1346 (coe v0) (coe v1)
                              (coe v4)
                              (coe
                                 MAlonzo.Code.Ledger.GovernanceActions.d_action_820
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                              (coe
                                 MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_822
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
                   (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.stakeDistr
d_stakeDistr_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_912 ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 -> T_Snapshot_2270
d_stakeDistr_2480 v0 ~v1 v2 v3 ~v4 = du_stakeDistr_2480 v0 v2 v3
du_stakeDistr_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_DState_912 -> T_Snapshot_2270
du_stakeDistr_2480 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_926 v3 v4 v5
        -> coe
             C_'10214'_'44'_'10215''738'_2280
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
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1122
                   (coe du_stakeRelation_2500 (coe v0) (coe v1) (coe v5))))
             (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch._.m
d_m_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_m_2494 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 = du_m_2494 v0 v2 v5
du_m_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_m_2494 v0 v1 v2
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
                 MAlonzo.Code.Ledger.Utxo.du_cbalance_2012 (coe v0)
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
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1256
                                           (coe v0))))))
                            (coe du_getStakeCred_2392 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))))))
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_540
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2)))
-- Ledger.Epoch._.stakeRelation
d_stakeRelation_2500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_928 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeRelation_2500 v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_stakeRelation_2500 v0 v2 v5
du_stakeRelation_2500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeRelation_2500 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
         (coe du_m_2494 (coe v0) (coe v1) (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Ledger.Epoch.gaDepositStake
d_gaDepositStake_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gaDepositStake_2502 v0 ~v1 v2 v3
  = du_gaDepositStake_2502 v0 v2 v3
du_gaDepositStake_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gaDepositStake_2502 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1180
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1216 (coe v0))
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1232 (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
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
         (coe du_govSt''_2512 (coe v1)))
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
                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v4
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v2)))))))
         (coe du_govSt''_2512 (coe v1)))
-- Ledger.Epoch._.govSt'
d_govSt''_2512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2512 ~v0 ~v1 v2 ~v3 = du_govSt''_2512 v2
du_govSt''_2512 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2512 v0
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
                  MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_416
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe v0)))
-- Ledger.Epoch.mkStakeDistrs
d_mkStakeDistrs_2524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_Snapshot_2270 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1994
d_mkStakeDistrs_2524 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_2524 v0 v2 v3 v4 v5
du_mkStakeDistrs_2524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_Snapshot_2270 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1994
du_mkStakeDistrs_2524 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11425
      (case coe v1 of
         C_'10214'_'44'_'10215''738'_2280 v5 v6
           -> coe
                MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1180
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2394 (coe v0)))
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
                            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1256 (coe v0))))
                   v5 (coe du_gaDepositStake_2502 (coe v0) (coe v2) (coe v3)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Epoch._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2534 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2534 = C_SNAP_2564
-- Ledger.Epoch._.certState
d_certState_2538 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_25051 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
d_certState_2538 ~v0 ~v1 v2 = du_certState_2538 v2
du_certState_2538 ::
  T_GeneralizeTel_25051 -> MAlonzo.Code.Ledger.Certs.T_CertState_952
du_certState_2538 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_certState_2164
      (coe d_'46'generalizedField'45'lstate_25041 (coe v0))
-- Ledger.Epoch._.utxoSt
d_utxoSt_2542 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_25051 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
d_utxoSt_2542 ~v0 ~v1 v2 = du_utxoSt_2542 v2
du_utxoSt_2542 ::
  T_GeneralizeTel_25051 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1970
du_utxoSt_2542 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
      (coe d_'46'generalizedField'45'lstate_25041 (coe v0))
-- Ledger.Epoch._.fees
d_fees_2550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_25051 -> Integer
d_fees_2550 ~v0 ~v1 v2 = du_fees_2550 v2
du_fees_2550 :: T_GeneralizeTel_25051 -> Integer
du_fees_2550 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1982
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
         (coe d_'46'generalizedField'45'lstate_25041 (coe v0)))
-- Ledger.Epoch._.utxo
d_utxo_2552 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_25051 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2552 ~v0 ~v1 v2 = du_utxo_2552 v2
du_utxo_2552 ::
  T_GeneralizeTel_25051 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2552 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1980
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_2160
         (coe d_'46'generalizedField'45'lstate_25041 (coe v0)))
-- Ledger.Epoch._.dState
d_dState_2556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_25051 -> MAlonzo.Code.Ledger.Certs.T_DState_912
d_dState_2556 ~v0 ~v1 v2 = du_dState_2556 v2
du_dState_2556 ::
  T_GeneralizeTel_25051 -> MAlonzo.Code.Ledger.Certs.T_DState_912
du_dState_2556 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dState_960
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_2164
         (coe d_'46'generalizedField'45'lstate_25041 (coe v0)))
-- Ledger.Epoch._.pState
d_pState_2560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_25051 -> MAlonzo.Code.Ledger.Certs.T_PState_928
d_pState_2560 ~v0 ~v1 v2 = du_pState_2560 v2
du_pState_2560 ::
  T_GeneralizeTel_25051 -> MAlonzo.Code.Ledger.Certs.T_PState_928
du_pState_2560 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_pState_962
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_2164
         (coe d_'46'generalizedField'45'lstate_25041 (coe v0)))
-- Ledger.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2566 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__2566
  = C_EPOCH_2644 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
                 T__'8866'_'8640''10631'_'44'SNAP'10632'__2534
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_2640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_32725 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2640 ~v0 ~v1 v2 = du_ccHotKeys_2640 v2
du_ccHotKeys_2640 ::
  T_GeneralizeTel_32725 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2640 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_948
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_964
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_2164
            (coe d_'46'generalizedField'45'ls_32711 (coe v0))))
-- Ledger.Epoch._.dreps
d_dreps_2642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_32725 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2642 ~v0 ~v1 v2 = du_dreps_2642 v2
du_dreps_2642 ::
  T_GeneralizeTel_32725 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2642 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_946
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_964
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_2164
            (coe d_'46'generalizedField'45'ls_32711 (coe v0))))
-- Ledger.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2646 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2646
  = C_NEWEPOCH'45'New_2650 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_2652 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_2654 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Epoch..generalizedField-lstate
d_'46'generalizedField'45'lstate_25041 ::
  T_GeneralizeTel_25051 -> MAlonzo.Code.Ledger.Ledger.T_LState_2152
d_'46'generalizedField'45'lstate_25041 v0
  = case coe v0 of
      C_mkGeneralizeTel_25053 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-mark
d_'46'generalizedField'45'mark_25043 ::
  T_GeneralizeTel_25051 -> T_Snapshot_2270
d_'46'generalizedField'45'mark_25043 v0
  = case coe v0 of
      C_mkGeneralizeTel_25053 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-set
d_'46'generalizedField'45'set_25045 ::
  T_GeneralizeTel_25051 -> T_Snapshot_2270
d_'46'generalizedField'45'set_25045 v0
  = case coe v0 of
      C_mkGeneralizeTel_25053 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-go
d_'46'generalizedField'45'go_25047 ::
  T_GeneralizeTel_25051 -> T_Snapshot_2270
d_'46'generalizedField'45'go_25047 v0
  = case coe v0 of
      C_mkGeneralizeTel_25053 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_25049 ::
  T_GeneralizeTel_25051 -> Integer
d_'46'generalizedField'45'feeSS_25049 v0
  = case coe v0 of
      C_mkGeneralizeTel_25053 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_25051 a0 a1 = ()
data T_GeneralizeTel_25051
  = C_mkGeneralizeTel_25053 MAlonzo.Code.Ledger.Ledger.T_LState_2152
                            T_Snapshot_2270 T_Snapshot_2270 T_Snapshot_2270 Integer
-- Ledger.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_32709 ::
  T_GeneralizeTel_32725 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022
d_'46'generalizedField'45'fut_32709 v0
  = case coe v0 of
      C_mkGeneralizeTel_32727 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_32711 ::
  T_GeneralizeTel_32725 -> MAlonzo.Code.Ledger.Ledger.T_LState_2152
d_'46'generalizedField'45'ls_32711 v0
  = case coe v0 of
      C_mkGeneralizeTel_32727 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-e
d_'46'generalizedField'45'e_32713 ::
  T_GeneralizeTel_32725 -> AgdaAny
d_'46'generalizedField'45'e_32713 v0
  = case coe v0 of
      C_mkGeneralizeTel_32727 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_32715 ::
  T_GeneralizeTel_32725 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_'46'generalizedField'45'acnt_32715 v0
  = case coe v0 of
      C_mkGeneralizeTel_32727 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_32717 ::
  T_GeneralizeTel_32725 -> T_Snapshots_2282
d_'46'generalizedField'45'ss''_32717 v0
  = case coe v0 of
      C_mkGeneralizeTel_32727 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_32719 ::
  T_GeneralizeTel_32725 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022
d_'46'generalizedField'45'fut''_32719 v0
  = case coe v0 of
      C_mkGeneralizeTel_32727 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_32721 ::
  T_GeneralizeTel_32725 -> T_Snapshots_2282
d_'46'generalizedField'45'ss_32721 v0
  = case coe v0 of
      C_mkGeneralizeTel_32727 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_32723 ::
  T_GeneralizeTel_32725 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_'46'generalizedField'45'es'8320'_32723 v0
  = case coe v0 of
      C_mkGeneralizeTel_32727 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_32725 a0 a1 = ()
data T_GeneralizeTel_32725
  = C_mkGeneralizeTel_32727 MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022
                            MAlonzo.Code.Ledger.Ledger.T_LState_2152 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_Acnt_146 T_Snapshots_2282
                            MAlonzo.Code.Ledger.Ratify.T_RatifyState_2022 T_Snapshots_2282
                            MAlonzo.Code.Ledger.Enact.T_EnactState_852
