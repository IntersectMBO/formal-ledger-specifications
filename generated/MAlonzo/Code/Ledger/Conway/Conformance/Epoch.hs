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

module MAlonzo.Code.Ledger.Conway.Conformance.Epoch where

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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Enact
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Prelude

-- _.Acnt
d_Acnt_40 a0 = ()
-- _.CertState
d_CertState_66 a0 = ()
-- _.Credential
d_Credential_72 a0 = ()
-- _.DState
d_DState_86 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_118 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
            (coe v0)))
-- _.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
         (coe v0))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
            (coe v0)))
-- _.DepositPurpose
d_DepositPurpose_188 a0 = ()
-- _.Deposits
d_Deposits_190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Deposits_190 = erased
-- _.Epoch
d_Epoch_196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_196 = erased
-- _.GState
d_GState_208 a0 = ()
-- _.THash
d_THash_258 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_258 = erased
-- _.Number-Epoch
d_Number'45'Epoch_284 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Number'45'Epoch_256
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
         (coe v0))
-- _.PState
d_PState_308 a0 = ()
-- _.RwdAddr
d_RwdAddr_350 a0 = ()
-- _.TxOut
d_TxOut_452 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_452 = erased
-- _.UTxO
d_UTxO_458 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_458 = erased
-- _.VDeleg
d_VDeleg_464 a0 = ()
-- _.addEpoch
d_addEpoch_494 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_addEpoch_250
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
         (coe v0))
-- _.Acnt.reserves
d_reserves_752 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  Integer
d_reserves_752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_reserves_158
      (coe v0)
-- _.Acnt.treasury
d_treasury_754 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  Integer
d_treasury_754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
      (coe v0)
-- _.CertState.dState
d_dState_790 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924
d_dState_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968 (coe v0)
-- _.CertState.gState
d_gState_792 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944
d_gState_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972 (coe v0)
-- _.CertState.pState
d_pState_794 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860
d_pState_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970 (coe v0)
-- _.DState.deposits
d_deposits_820 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
      (coe v0)
-- _.DState.rewards
d_rewards_822 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938 (coe v0)
-- _.DState.stakeDelegs
d_stakeDelegs_824 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
      (coe v0)
-- _.DState.voteDelegs
d_voteDelegs_826 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
      (coe v0)
-- _.GState.ccHotKeys
d_ccHotKeys_868 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
      (coe v0)
-- _.GState.deposits
d_deposits_870 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
      (coe v0)
-- _.GState.dreps
d_dreps_872 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952 (coe v0)
-- _.GovernanceActions.VDeleg
d_VDeleg_1008 a0 = ()
-- _.PState.pools
d_pools_1316 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866 (coe v0)
-- _.PState.retiring
d_retiring_1318 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
      (coe v0)
-- _.RwdAddr.net
d_net_1408 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  AgdaAny
d_net_1408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_86 (coe v0)
-- _.RwdAddr.stake
d_stake_1410 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_stake_1410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GovState
d_GovState_1764 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  ()
d_GovState_1764 = erased
-- Ledger.Conway.Conformance.Epoch._.EnactState
d_EnactState_1868 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.ccCreds
d_ccCreds_1870 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20]
d_ccCreds_1870 ~v0 ~v1 = du_ccCreds_1870
du_ccCreds_1870 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20]
du_ccCreds_1870
  = coe MAlonzo.Code.Ledger.Conway.Conformance.Enact.du_ccCreds_878
-- Ledger.Conway.Conformance.Epoch._.EnactState.cc
d_cc_1904 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_cc_868 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.constitution
d_constitution_1906 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_constitution_870
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.pparams
d_pparams_1908 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pparams_874 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.pv
d_pv_1910 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_pv_872 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.withdrawals
d_withdrawals_1912 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Enact.d_withdrawals_876
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState
d_LState_1926 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.LState.certState
d_certState_1954 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState.govSt
d_govSt_1956 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2150 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2160 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState.utxoSt
d_utxoSt_1958 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
d_utxoSt_1958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1968 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyEnv_2000 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1968 = erased
-- Ledger.Conway.Conformance.Epoch._.RatifyState
d_RatifyState_1988 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.StakeDistrs
d_StakeDistrs_1990 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.RatifyState.delay
d_delay_2078 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  Bool
d_delay_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_delay_2034 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RatifyState.es
d_es_2080 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_es_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2030 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RatifyState.removed
d_removed_2082 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2032
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_2086 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1998
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.HasCoin-Map
d_HasCoin'45'Map_2106 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_2106 ~v0 ~v1 = du_HasCoin'45'Map_2106
du_HasCoin'45'Map_2106 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_2106 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_HasCoin'45'Map_1854
      v1
-- Ledger.Conway.Conformance.Epoch._.UTxOState
d_UTxOState_2126 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.UTxOState.deposits
d_deposits_2222 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1988
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.UTxOState.donations
d_donations_2224 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974 ->
  Integer
d_donations_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1990
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.UTxOState.fees
d_fees_2226 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974 ->
  Integer
d_fees_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1986 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.UTxOState.utxo
d_utxo_2228 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984 (coe v0)
-- Ledger.Conway.Conformance.Epoch.RewardUpdate
d_RewardUpdate_2240 a0 a1 = ()
data T_RewardUpdate_2240
  = C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2266 Integer Integer
                                                     Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δt
d_Δt_2254 :: T_RewardUpdate_2240 -> Integer
d_Δt_2254 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2266 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δr
d_Δr_2256 :: T_RewardUpdate_2240 -> Integer
d_Δr_2256 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2266 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δf
d_Δf_2258 :: T_RewardUpdate_2240 -> Integer
d_Δf_2258 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2266 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.rs
d_rs_2260 ::
  T_RewardUpdate_2240 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2260 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2266 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.zeroSum
d_zeroSum_2264 ::
  T_RewardUpdate_2240 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zeroSum_2264 = erased
-- Ledger.Conway.Conformance.Epoch.Snapshot
d_Snapshot_2268 a0 a1 = ()
data T_Snapshot_2268
  = C_'10214'_'44'_'10215''738'_2278 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch.Snapshot.stake
d_stake_2274 ::
  T_Snapshot_2268 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2274 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2278 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshot.delegations
d_delegations_2276 ::
  T_Snapshot_2268 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2276 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2278 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots
d_Snapshots_2280 a0 a1 = ()
data T_Snapshots_2280
  = C_'10214'_'44'_'44'_'44'_'10215''738''738'_2298 T_Snapshot_2268
                                                    T_Snapshot_2268 T_Snapshot_2268 Integer
-- Ledger.Conway.Conformance.Epoch.Snapshots.mark
d_mark_2290 :: T_Snapshots_2280 -> T_Snapshot_2268
d_mark_2290 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2298 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.set
d_set_2292 :: T_Snapshots_2280 -> T_Snapshot_2268
d_set_2292 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2298 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.go
d_go_2294 :: T_Snapshots_2280 -> T_Snapshot_2268
d_go_2294 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2298 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.feeSS
d_feeSS_2296 :: T_Snapshots_2280 -> Integer
d_feeSS_2296 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2298 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState
d_EpochState_2300 a0 a1 = ()
data T_EpochState_2300
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2322 MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150
                                                       T_Snapshots_2280
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2150
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022
-- Ledger.Conway.Conformance.Epoch.EpochState.acnt
d_acnt_2312 ::
  T_EpochState_2300 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150
d_acnt_2312 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2322 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.ss
d_ss_2314 :: T_EpochState_2300 -> T_Snapshots_2280
d_ss_2314 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2322 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.ls
d_ls_2316 ::
  T_EpochState_2300 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2150
d_ls_2316 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2322 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.es
d_es_2318 ::
  T_EpochState_2300 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_es_2318 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2322 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.fut
d_fut_2320 ::
  T_EpochState_2300 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022
d_fut_2320 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2322 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState
d_NewEpochState_2324 a0 a1 = ()
data T_NewEpochState_2324
  = C_'10214'_'44'_'44'_'10215''8319''7497'_2338 AgdaAny
                                                 T_EpochState_2300 (Maybe T_RewardUpdate_2240)
-- Ledger.Conway.Conformance.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2332 :: T_NewEpochState_2324 -> AgdaAny
d_lastEpoch_2332 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2338 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.epochState
d_epochState_2334 :: T_NewEpochState_2324 -> T_EpochState_2300
d_epochState_2334 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2338 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.ru
d_ru_2336 :: T_NewEpochState_2324 -> Maybe T_RewardUpdate_2240
d_ru_2336 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2338 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.toRwdAddr
d_toRwdAddr_2386 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_toRwdAddr_2386 v0 ~v1 v2 = du_toRwdAddr_2386 v0 v2
du_toRwdAddr_2386 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
du_toRwdAddr_2386 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.C_RwdAddr'46'constructor_3193
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_NetworkId_292
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
            (coe v0)))
      (coe v1)
-- Ledger.Conway.Conformance.Epoch.getStakeCred
d_getStakeCred_2390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_getStakeCred_2390 ~v0 ~v1 v2 = du_getStakeCred_2390 v2
du_getStakeCred_2390 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
du_getStakeCred_2390 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    seq (coe v4)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Address.du_stakeCred_114
                       (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.applyRUpd
d_applyRUpd_2394 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_RewardUpdate_2240 -> T_EpochState_2300 -> T_EpochState_2300
d_applyRUpd_2394 v0 ~v1 v2 v3 = du_applyRUpd_2394 v0 v2 v3
du_applyRUpd_2394 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_RewardUpdate_2240 -> T_EpochState_2300 -> T_EpochState_2300
du_applyRUpd_2394 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2266 v3 v4 v5 v6
        -> case coe v2 of
             C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2322 v8 v9 v10 v11 v12
               -> case coe v8 of
                    MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_'10214'_'44'_'10215''7491'_160 v13 v14
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2164 v15 v16 v17
                             -> case coe v15 of
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1992 v18 v19 v20 v21
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974 v22 v23 v24
                                           -> case coe v22 of
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942 v25 v26 v27 v28
                                                  -> coe
                                                       C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2322
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_'10214'_'44'_'10215''7491'_160
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
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2164
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1992
                                                             (coe v18)
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v19) (coe v5)))
                                                             (coe v20) (coe v21))
                                                          (coe v16)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_974
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942
                                                                (coe v25) (coe v26)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__496
                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                   (coe
                                                                      MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                      (coe
                                                                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                                                            (coe v0))))
                                                                   v27
                                                                   (coe
                                                                      du_regRU_2440 (coe v0)
                                                                      (coe v6) (coe v27)))
                                                                (coe v28))
                                                             (coe v23) (coe v24)))
                                                       (coe v11) (coe v12)
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch._.regRU
d_regRU_2440 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_2440 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21 ~v22
  = du_regRU_2440 v0 v5 v17
du_regRU_2440 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
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
            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                  (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_540
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2))
-- Ledger.Conway.Conformance.Epoch._.unregRU
d_unregRU_2442 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_2442 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21 ~v22
  = du_unregRU_2442 v0 v5 v17
du_unregRU_2442 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
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
            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                  (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_540
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1458
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2))
-- Ledger.Conway.Conformance.Epoch._.unregRU'
d_unregRU''_2444 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022 ->
  Integer
d_unregRU''_2444 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21 ~v22
  = du_unregRU''_2444 v0 v5 v17
du_unregRU''_2444 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_2444 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1160
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
               (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v3 -> v3)) (coe du_unregRU_2442 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Epoch.stakeDistr
d_stakeDistr_2448 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  T_Snapshot_2268
d_stakeDistr_2448 v0 ~v1 v2 v3 ~v4 = du_stakeDistr_2448 v0 v2 v3
du_stakeDistr_2448 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  T_Snapshot_2268
du_stakeDistr_2448 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_942 v3 v4 v5 v6
        -> coe
             C_'10214'_'44'_'10215''738'_2278
             (coe
                MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_498
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                         (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1122
                   (coe du_stakeRelation_2468 (coe v0) (coe v1) (coe v5))))
             (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch._.m
d_m_2462 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_m_2462 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 ~v7 = du_m_2462 v0 v2 v5
du_m_2462 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_m_2462 v0 v1 v2
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
                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_cbalance_2112
                 (coe v0)
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
                                     MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                                           (coe v0))))))
                            (coe du_getStakeCred_2390 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))))))
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_540
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_548) (coe v2)))
-- Ledger.Conway.Conformance.Epoch._.stakeRelation
d_stakeRelation_2468 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeRelation_2468 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 ~v7
  = du_stakeRelation_2468 v0 v2 v5
du_stakeRelation_2468 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeRelation_2468 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668
         (coe MAlonzo.Code.Axiom.Set.d_th_1458 (coe v3))
         (coe du_m_2462 (coe v0) (coe v1) (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Ledger.Conway.Conformance.Epoch.gaDepositStake
d_gaDepositStake_2470 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gaDepositStake_2470 v0 ~v1 v2 v3
  = du_gaDepositStake_2470 v0 v2 v3
du_gaDepositStake_2470 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gaDepositStake_2470 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1180
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1232
               (coe v0))
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                     (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                  (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
               (coe v0))))
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
                 MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_govSt''_2480 (coe v1)))
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
                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_GovActionDeposit_848
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1458
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v4
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_534 (coe v2)))))))
         (coe du_govSt''_2480 (coe v1)))
-- Ledger.Conway.Conformance.Epoch._.govSt'
d_govSt''_2480 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2480 ~v0 ~v1 v2 ~v3 = du_govSt''_2480 v2
du_govSt''_2480 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2480 v0
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
                  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
                    (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_416
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1458
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe v0)))
-- Ledger.Conway.Conformance.Epoch.mkStakeDistrs
d_mkStakeDistrs_2492 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_Snapshot_2268 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1994
d_mkStakeDistrs_2492 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_2492 v0 v2 v3 v4 v5
du_mkStakeDistrs_2492 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  T_Snapshot_2268 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1994
du_mkStakeDistrs_2492 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11429
      (case coe v1 of
         C_'10214'_'44'_'10215''738'_2278 v5 v6
           -> coe
                MAlonzo.Code.Ledger.Set.Theory.du_aggregateBy_1180
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                            (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                         (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
                      (coe v0)))
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
                      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
                            (coe
                               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                               (coe v0))))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
                         (coe
                            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                            (coe v0))))
                   v5 (coe du_gaDepositStake_2470 (coe v0) (coe v2) (coe v3)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2502 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2502 = C_SNAP_2532
-- Ledger.Conway.Conformance.Epoch._.certState
d_certState_2506 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_23473 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
d_certState_2506 ~v0 ~v1 v2 = du_certState_2506 v2
du_certState_2506 ::
  T_GeneralizeTel_23473 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960
du_certState_2506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
      (coe d_'46'generalizedField'45'lstate_23463 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.utxoSt
d_utxoSt_2510 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_23473 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
d_utxoSt_2510 ~v0 ~v1 v2 = du_utxoSt_2510 v2
du_utxoSt_2510 ::
  T_GeneralizeTel_23473 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1974
du_utxoSt_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
      (coe d_'46'generalizedField'45'lstate_23463 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.fees
d_fees_2518 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_23473 -> Integer
d_fees_2518 ~v0 ~v1 v2 = du_fees_2518 v2
du_fees_2518 :: T_GeneralizeTel_23473 -> Integer
du_fees_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1986
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
         (coe d_'46'generalizedField'45'lstate_23463 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.utxo
d_utxo_2520 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_23473 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2520 ~v0 ~v1 v2 = du_utxo_2520 v2
du_utxo_2520 ::
  T_GeneralizeTel_23473 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1984
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2158
         (coe d_'46'generalizedField'45'lstate_23463 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.dState
d_dState_2524 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_23473 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924
d_dState_2524 ~v0 ~v1 v2 = du_dState_2524 v2
du_dState_2524 ::
  T_GeneralizeTel_23473 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924
du_dState_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
         (coe d_'46'generalizedField'45'lstate_23463 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.pState
d_pState_2528 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_23473 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860
d_pState_2528 ~v0 ~v1 v2 = du_pState_2528 v2
du_pState_2528 ::
  T_GeneralizeTel_23473 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860
du_pState_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
         (coe d_'46'generalizedField'45'lstate_23463 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2534 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__2534
  = C_EPOCH_2608 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
                 T__'8866'_'8640''10631'_'44'SNAP'10632'__2502
-- Ledger.Conway.Conformance.Epoch._.ccHotKeys
d_ccHotKeys_2602 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_30411 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2602 ~v0 ~v1 v2 = du_ccHotKeys_2602 v2
du_ccHotKeys_2602 ::
  T_GeneralizeTel_30411 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
            (coe d_'46'generalizedField'45'ls_30397 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._.dreps
d_dreps_2606 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_30411 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2606 ~v0 ~v1 v2 = du_dreps_2606 v2
du_dreps_2606 ::
  T_GeneralizeTel_30411 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2162
            (coe d_'46'generalizedField'45'ls_30397 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2610 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2610
  = C_NEWEPOCH'45'New_2614 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_2616 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_2618 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch..generalizedField-lstate
d_'46'generalizedField'45'lstate_23463 ::
  T_GeneralizeTel_23473 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2150
d_'46'generalizedField'45'lstate_23463 v0
  = case coe v0 of
      C_mkGeneralizeTel_23475 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-mark
d_'46'generalizedField'45'mark_23465 ::
  T_GeneralizeTel_23473 -> T_Snapshot_2268
d_'46'generalizedField'45'mark_23465 v0
  = case coe v0 of
      C_mkGeneralizeTel_23475 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-set
d_'46'generalizedField'45'set_23467 ::
  T_GeneralizeTel_23473 -> T_Snapshot_2268
d_'46'generalizedField'45'set_23467 v0
  = case coe v0 of
      C_mkGeneralizeTel_23475 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-go
d_'46'generalizedField'45'go_23469 ::
  T_GeneralizeTel_23473 -> T_Snapshot_2268
d_'46'generalizedField'45'go_23469 v0
  = case coe v0 of
      C_mkGeneralizeTel_23475 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_23471 ::
  T_GeneralizeTel_23473 -> Integer
d_'46'generalizedField'45'feeSS_23471 v0
  = case coe v0 of
      C_mkGeneralizeTel_23475 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.GeneralizeTel
d_GeneralizeTel_23473 a0 a1 = ()
data T_GeneralizeTel_23473
  = C_mkGeneralizeTel_23475 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2150
                            T_Snapshot_2268 T_Snapshot_2268 T_Snapshot_2268 Integer
-- Ledger.Conway.Conformance.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_30395 ::
  T_GeneralizeTel_30411 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022
d_'46'generalizedField'45'fut_30395 v0
  = case coe v0 of
      C_mkGeneralizeTel_30413 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_30397 ::
  T_GeneralizeTel_30411 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2150
d_'46'generalizedField'45'ls_30397 v0
  = case coe v0 of
      C_mkGeneralizeTel_30413 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-e
d_'46'generalizedField'45'e_30399 ::
  T_GeneralizeTel_30411 -> AgdaAny
d_'46'generalizedField'45'e_30399 v0
  = case coe v0 of
      C_mkGeneralizeTel_30413 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_30401 ::
  T_GeneralizeTel_30411 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150
d_'46'generalizedField'45'acnt_30401 v0
  = case coe v0 of
      C_mkGeneralizeTel_30413 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_30403 ::
  T_GeneralizeTel_30411 -> T_Snapshots_2280
d_'46'generalizedField'45'ss''_30403 v0
  = case coe v0 of
      C_mkGeneralizeTel_30413 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_30405 ::
  T_GeneralizeTel_30411 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022
d_'46'generalizedField'45'fut''_30405 v0
  = case coe v0 of
      C_mkGeneralizeTel_30413 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_30407 ::
  T_GeneralizeTel_30411 -> T_Snapshots_2280
d_'46'generalizedField'45'ss_30407 v0
  = case coe v0 of
      C_mkGeneralizeTel_30413 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_30409 ::
  T_GeneralizeTel_30411 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
d_'46'generalizedField'45'es'8320'_30409 v0
  = case coe v0 of
      C_mkGeneralizeTel_30413 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.GeneralizeTel
d_GeneralizeTel_30411 a0 a1 = ()
data T_GeneralizeTel_30411
  = C_mkGeneralizeTel_30413 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2150 AgdaAny
                            MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150
                            T_Snapshots_2280
                            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2022
                            T_Snapshots_2280
                            MAlonzo.Code.Ledger.Conway.Conformance.Enact.T_EnactState_856
