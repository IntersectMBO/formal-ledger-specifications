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
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Ext
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Acnt
d_Acnt_28 a0 = ()
-- _.Credential
d_Credential_48 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_108 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
-- _.Epoch
d_Epoch_150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_150 = erased
-- _.THash
d_THash_196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_196 = erased
-- _.Number-Epoch
d_Number'45'Epoch_222 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_222 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
-- _.RwdAddr
d_RwdAddr_274 a0 = ()
-- _.TxOut
d_TxOut_376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_376 = erased
-- _.UTxO
d_UTxO_382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_382 = erased
-- _.VDeleg
d_VDeleg_388 a0 = ()
-- _.addEpoch
d_addEpoch_416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_416 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
-- _.Acnt.reserves
d_reserves_606 :: MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_reserves_606 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_154 (coe v0)
-- _.Acnt.treasury
d_treasury_608 :: MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_treasury_608 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_152 (coe v0)
-- _.GovernanceActions.VDeleg
d_VDeleg_794 a0 = ()
-- _.RwdAddr.net
d_net_1178 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1178 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_1180 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1180 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GovState
d_GovState_1532 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 -> ()
d_GovState_1532 = erased
-- Ledger.Conway.Conformance.Epoch._.EnactState
d_EnactState_1640 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.ccCreds
d_ccCreds_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_1642 ~v0 ~v1 = du_ccCreds_1642
du_ccCreds_1642 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_1642 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_874
-- Ledger.Conway.Conformance.Epoch._.EnactState.cc
d_cc_1676 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1676 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_864 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.constitution
d_constitution_1678 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1678 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_866 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.pparams
d_pparams_1680 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1680 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_870 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.pv
d_pv_1682 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1682 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_868 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.withdrawals
d_withdrawals_1684 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1684 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_872 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState
d_LState_1700 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.LState.certState
d_certState_1732 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2176
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState.govSt
d_govSt_1734 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2174 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState.utxoSt
d_utxoSt_1736 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
d_utxoSt_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2172
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyEnv_1978 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2008 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2008 ->
  ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1746 = erased
-- Ledger.Conway.Conformance.Epoch._.RatifyState
d_RatifyState_1766 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.StakeDistrs
d_StakeDistrs_1768 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.RatifyState.delay
d_delay_1844 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2008 ->
  Bool
d_delay_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_delay_2020 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RatifyState.es
d_es_1846 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2008 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_es_1846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_es_2016 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RatifyState.removed
d_removed_1848 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2008 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_removed_2018
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_1852 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1972 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.d_stakeDistr_1976
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.UTxOState
d_UTxOState_1890 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.UTxOState.deposits
d_deposits_1986 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1994
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.UTxOState.donations
d_donations_1988 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  Integer
d_donations_1988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1996
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.UTxOState.fees
d_fees_1990 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  Integer
d_fees_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1992 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.UTxOState.utxo
d_utxo_1992 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.CertState
d_CertState_2036 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.DState
d_DState_2052 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2054 v0 ~v1
  = du_DecEq'45'DepositPurpose_2054 v0
du_DecEq'45'DepositPurpose_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2054 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848 (coe v1))
-- Ledger.Conway.Conformance.Epoch._.DepositPurpose
d_DepositPurpose_2058 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.Deposits
d_Deposits_2060 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 -> ()
d_Deposits_2060 = erased
-- Ledger.Conway.Conformance.Epoch._.GState
d_GState_2074 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.PState
d_PState_2090 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.CertState.dState
d_dState_2180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050
d_dState_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.CertState.gState
d_gState_2182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1070
d_gState_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1098 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.CertState.pState
d_pState_2184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Certs.T_PState_924
d_pState_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1096 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.deposits
d_deposits_2204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1066
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.rewards
d_rewards_2206 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1064
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.stakeDelegs
d_stakeDelegs_2208 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1062
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.voteDelegs
d_voteDelegs_2210 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1060
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GState.ccHotKeys
d_ccHotKeys_2232 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1070 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1080
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GState.deposits
d_deposits_2234 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1070 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1082
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GState.dreps
d_dreps_2236 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1070 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1078 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.PState.pools
d_pools_2240 ::
  MAlonzo.Code.Ledger.Certs.T_PState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2240 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_930 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.PState.retiring
d_retiring_2242 ::
  MAlonzo.Code.Ledger.Certs.T_PState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2242 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_932 (coe v0)
-- Ledger.Conway.Conformance.Epoch.RewardUpdate
d_RewardUpdate_2248 a0 a1 = ()
data T_RewardUpdate_2248
  = C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2274 Integer Integer
                                                     Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δt
d_Δt_2262 :: T_RewardUpdate_2248 -> Integer
d_Δt_2262 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2274 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δr
d_Δr_2264 :: T_RewardUpdate_2248 -> Integer
d_Δr_2264 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2274 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δf
d_Δf_2266 :: T_RewardUpdate_2248 -> Integer
d_Δf_2266 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2274 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.rs
d_rs_2268 ::
  T_RewardUpdate_2248 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2268 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2274 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.zeroSum
d_zeroSum_2272 ::
  T_RewardUpdate_2248 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zeroSum_2272 = erased
-- Ledger.Conway.Conformance.Epoch.Snapshot
d_Snapshot_2276 a0 a1 = ()
data T_Snapshot_2276
  = C_'10214'_'44'_'10215''738'_2286 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch.Snapshot.stake
d_stake_2282 ::
  T_Snapshot_2276 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2282 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2286 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshot.delegations
d_delegations_2284 ::
  T_Snapshot_2276 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2284 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2286 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots
d_Snapshots_2288 a0 a1 = ()
data T_Snapshots_2288
  = C_'10214'_'44'_'44'_'44'_'10215''738''738'_2306 T_Snapshot_2276
                                                    T_Snapshot_2276 T_Snapshot_2276 Integer
-- Ledger.Conway.Conformance.Epoch.Snapshots.mark
d_mark_2298 :: T_Snapshots_2288 -> T_Snapshot_2276
d_mark_2298 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2306 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.set
d_set_2300 :: T_Snapshots_2288 -> T_Snapshot_2276
d_set_2300 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2306 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.go
d_go_2302 :: T_Snapshots_2288 -> T_Snapshot_2276
d_go_2302 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2306 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.feeSS
d_feeSS_2304 :: T_Snapshots_2288 -> Integer
d_feeSS_2304 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2306 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState
d_EpochState_2308 a0 a1 = ()
data T_EpochState_2308
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2330 MAlonzo.Code.Ledger.PParams.T_Acnt_146
                                                       T_Snapshots_2288
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164
                                                       MAlonzo.Code.Ledger.Enact.T_EnactState_852
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2008
-- Ledger.Conway.Conformance.Epoch.EpochState.acnt
d_acnt_2320 ::
  T_EpochState_2308 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_acnt_2320 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2330 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.ss
d_ss_2322 :: T_EpochState_2308 -> T_Snapshots_2288
d_ss_2322 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2330 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.ls
d_ls_2324 ::
  T_EpochState_2308 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164
d_ls_2324 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2330 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.es
d_es_2326 ::
  T_EpochState_2308 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_es_2326 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2330 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.fut
d_fut_2328 ::
  T_EpochState_2308 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2008
d_fut_2328 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2330 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState
d_NewEpochState_2332 a0 a1 = ()
data T_NewEpochState_2332
  = C_'10214'_'44'_'44'_'10215''8319''7497'_2346 AgdaAny
                                                 T_EpochState_2308 (Maybe T_RewardUpdate_2248)
-- Ledger.Conway.Conformance.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2340 :: T_NewEpochState_2332 -> AgdaAny
d_lastEpoch_2340 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2346 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.epochState
d_epochState_2342 :: T_NewEpochState_2332 -> T_EpochState_2308
d_epochState_2342 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2346 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.ru
d_ru_2344 :: T_NewEpochState_2332 -> Maybe T_RewardUpdate_2248
d_ru_2344 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2346 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.toRwdAddr
d_toRwdAddr_2394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_toRwdAddr_2394 v0 ~v1 v2 = du_toRwdAddr_2394 v0 v2
du_toRwdAddr_2394 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
du_toRwdAddr_2394 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3193
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
      (coe v1)
-- Ledger.Conway.Conformance.Epoch.getStakeCred
d_getStakeCred_2398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getStakeCred_2398 ~v0 ~v1 v2 = du_getStakeCred_2398 v2
du_getStakeCred_2398 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getStakeCred_2398 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    seq (coe v4)
                    (coe MAlonzo.Code.Ledger.Address.du_stakeCred_110 (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.applyRUpd
d_applyRUpd_2402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_RewardUpdate_2248 -> T_EpochState_2308 -> T_EpochState_2308
d_applyRUpd_2402 v0 ~v1 v2 v3 = du_applyRUpd_2402 v0 v2 v3
du_applyRUpd_2402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RewardUpdate_2248 -> T_EpochState_2308 -> T_EpochState_2308
du_applyRUpd_2402 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2274 v3 v4 v5 v6
        -> case coe v2 of
             C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2330 v8 v9 v10 v11 v12
               -> case coe v8 of
                    MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156 v13 v14
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2178 v15 v16 v17
                             -> case coe v15 of
                                  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1998 v18 v19 v20 v21
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1100 v22 v23 v24
                                           -> case coe v22 of
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1068 v25 v26 v27 v28
                                                  -> coe
                                                       C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2330
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
                                                                   du_unregRU''_2452 (coe v0)
                                                                   (coe v6) (coe v27))))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe v14) (coe v4))))
                                                       (coe v9)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2178
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1998
                                                             (coe v18)
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v19) (coe v5)))
                                                             (coe v20) (coe v21))
                                                          (coe v16)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1100
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1068
                                                                (coe v25) (coe v26)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                   (coe
                                                                      MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                                                                      (coe
                                                                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                                                            (coe v0))))
                                                                   v27
                                                                   (coe
                                                                      du_regRU_2448 (coe v0)
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
d_regRU_2448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_924 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1070 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_2448 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21 ~v22
  = du_regRU_2448 v0 v5 v17
du_regRU_2448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_2448 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2))
-- Ledger.Conway.Conformance.Epoch._.unregRU
d_unregRU_2450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_924 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1070 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_2450 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21 ~v22
  = du_unregRU_2450 v0 v5 v17
du_unregRU_2450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_2450 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2))
-- Ledger.Conway.Conformance.Epoch._.unregRU'
d_unregRU''_2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_924 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1070 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2008 ->
  Integer
d_unregRU''_2452 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21 ~v22
  = du_unregRU''_2452 v0 v5 v17
du_unregRU''_2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_2452 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v3 -> v3)) (coe du_unregRU_2450 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Epoch.stakeDistr
d_stakeDistr_2456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050 ->
  MAlonzo.Code.Ledger.Certs.T_PState_924 -> T_Snapshot_2276
d_stakeDistr_2456 v0 ~v1 v2 v3 ~v4 = du_stakeDistr_2456 v0 v2 v3
du_stakeDistr_2456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050 ->
  T_Snapshot_2276
du_stakeDistr_2456 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1068 v3 v4 v5 v6
        -> coe
             C_'10214'_'44'_'10215''738'_2286
             (coe
                MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_504
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                (coe
                   MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1152
                   (coe du_stakeRelation_2476 (coe v0) (coe v1) (coe v5))))
             (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch._.m
d_m_2470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_924 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_m_2470 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 ~v7 = du_m_2470 v0 v2 v5
du_m_2470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_m_2470 v0 v1 v2
  = let v3
          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_map_398
         (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_cbalance_2118
                 (coe v0)
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'8739''94'''__1184
                    (coe v1)
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
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1248
                                           (coe v0))))))
                            (coe du_getStakeCred_2398 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))))))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_548
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2)))
-- Ledger.Conway.Conformance.Epoch._.stakeRelation
d_stakeRelation_2476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_924 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeRelation_2476 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 ~v7
  = du_stakeRelation_2476 v0 v2 v5
du_stakeRelation_2476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeRelation_2476 v0 v1 v2
  = let v3
          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
         (coe du_m_2470 (coe v0) (coe v1) (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Ledger.Conway.Conformance.Epoch.gaDepositStake
d_gaDepositStake_2478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gaDepositStake_2478 v0 ~v1 v2 v3
  = du_gaDepositStake_2478 v0 v2 v3
du_gaDepositStake_2478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gaDepositStake_2478 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1218
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_398
         (MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
              (coe
                 MAlonzo.Code.Ledger.Address.d_stake_84
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_govSt''_2488 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1260
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased
                       (let v4
                              = MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0) in
                        coe
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                             (coe v4))))
                    (coe
                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v4
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v2)))))))
         (coe du_govSt''_2488 (coe v1)))
-- Ledger.Conway.Conformance.Epoch._.govSt'
d_govSt''_2488 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2488 ~v0 ~v1 v2 ~v3 = du_govSt''_2488 v2
du_govSt''_2488 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2488 v0
  = let v1
          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_map_398
         (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v1))
         (coe
            MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
            (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
            (coe
               (\ v2 ->
                  MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Conformance.Epoch.mkStakeDistrs
d_mkStakeDistrs_2500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_Snapshot_2276 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1972
d_mkStakeDistrs_2500 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_2500 v0 v2 v3 v4 v5
du_mkStakeDistrs_2500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_Snapshot_2276 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_StakeDistrs_1972
du_mkStakeDistrs_2500 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ratify.C_StakeDistrs'46'constructor_11371
      (case coe v1 of
         C_'10214'_'44'_'10215''738'_2286 v5 v6
           -> coe
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1218
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
                (coe
                   MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                (coe
                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                   (coe
                      MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                   (coe
                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                         (coe
                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
                   v5 (coe du_gaDepositStake_2478 (coe v0) (coe v2) (coe v3)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2510 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2510 = C_SNAP_2540
-- Ledger.Conway.Conformance.Epoch._.certState
d_certState_2514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_23877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_2514 ~v0 ~v1 v2 = du_certState_2514 v2
du_certState_2514 ::
  T_GeneralizeTel_23877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
du_certState_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2176
      (coe d_'46'generalizedField'45'lstate_23867 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.utxoSt
d_utxoSt_2518 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_23877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
d_utxoSt_2518 ~v0 ~v1 v2 = du_utxoSt_2518 v2
du_utxoSt_2518 ::
  T_GeneralizeTel_23877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
du_utxoSt_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2172
      (coe d_'46'generalizedField'45'lstate_23867 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.fees
d_fees_2526 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_23877 -> Integer
d_fees_2526 ~v0 ~v1 v2 = du_fees_2526 v2
du_fees_2526 :: T_GeneralizeTel_23877 -> Integer
du_fees_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1992
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2172
         (coe d_'46'generalizedField'45'lstate_23867 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.utxo
d_utxo_2528 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_23877 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2528 ~v0 ~v1 v2 = du_utxo_2528 v2
du_utxo_2528 ::
  T_GeneralizeTel_23877 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2172
         (coe d_'46'generalizedField'45'lstate_23867 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.dState
d_dState_2532 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_23877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050
d_dState_2532 ~v0 ~v1 v2 = du_dState_2532 v2
du_dState_2532 ::
  T_GeneralizeTel_23877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050
du_dState_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2176
         (coe d_'46'generalizedField'45'lstate_23867 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.pState
d_pState_2536 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_23877 -> MAlonzo.Code.Ledger.Certs.T_PState_924
d_pState_2536 ~v0 ~v1 v2 = du_pState_2536 v2
du_pState_2536 ::
  T_GeneralizeTel_23877 -> MAlonzo.Code.Ledger.Certs.T_PState_924
du_pState_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1096
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2176
         (coe d_'46'generalizedField'45'lstate_23867 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2542 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__2542
  = C_EPOCH_2616 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
                 T__'8866'_'8640''10631'_'44'SNAP'10632'__2510
-- Ledger.Conway.Conformance.Epoch._.ccHotKeys
d_ccHotKeys_2610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_31005 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2610 ~v0 ~v1 v2 = du_ccHotKeys_2610 v2
du_ccHotKeys_2610 ::
  T_GeneralizeTel_31005 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1080
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1098
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2176
            (coe d_'46'generalizedField'45'ls_30991 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._.dreps
d_dreps_2614 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  T_GeneralizeTel_31005 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2614 ~v0 ~v1 v2 = du_dreps_2614 v2
du_dreps_2614 ::
  T_GeneralizeTel_31005 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1078
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1098
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2176
            (coe d_'46'generalizedField'45'ls_30991 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2618 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2618
  = C_NEWEPOCH'45'New_2622 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_2624 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_2626 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch..generalizedField-lstate
d_'46'generalizedField'45'lstate_23867 ::
  T_GeneralizeTel_23877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164
d_'46'generalizedField'45'lstate_23867 v0
  = case coe v0 of
      C_mkGeneralizeTel_23879 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-mark
d_'46'generalizedField'45'mark_23869 ::
  T_GeneralizeTel_23877 -> T_Snapshot_2276
d_'46'generalizedField'45'mark_23869 v0
  = case coe v0 of
      C_mkGeneralizeTel_23879 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-set
d_'46'generalizedField'45'set_23871 ::
  T_GeneralizeTel_23877 -> T_Snapshot_2276
d_'46'generalizedField'45'set_23871 v0
  = case coe v0 of
      C_mkGeneralizeTel_23879 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-go
d_'46'generalizedField'45'go_23873 ::
  T_GeneralizeTel_23877 -> T_Snapshot_2276
d_'46'generalizedField'45'go_23873 v0
  = case coe v0 of
      C_mkGeneralizeTel_23879 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_23875 ::
  T_GeneralizeTel_23877 -> Integer
d_'46'generalizedField'45'feeSS_23875 v0
  = case coe v0 of
      C_mkGeneralizeTel_23879 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.GeneralizeTel
d_GeneralizeTel_23877 a0 a1 = ()
data T_GeneralizeTel_23877
  = C_mkGeneralizeTel_23879 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164
                            T_Snapshot_2276 T_Snapshot_2276 T_Snapshot_2276 Integer
-- Ledger.Conway.Conformance.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_30989 ::
  T_GeneralizeTel_31005 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2008
d_'46'generalizedField'45'fut_30989 v0
  = case coe v0 of
      C_mkGeneralizeTel_31007 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_30991 ::
  T_GeneralizeTel_31005 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164
d_'46'generalizedField'45'ls_30991 v0
  = case coe v0 of
      C_mkGeneralizeTel_31007 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-e
d_'46'generalizedField'45'e_30993 ::
  T_GeneralizeTel_31005 -> AgdaAny
d_'46'generalizedField'45'e_30993 v0
  = case coe v0 of
      C_mkGeneralizeTel_31007 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_30995 ::
  T_GeneralizeTel_31005 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_'46'generalizedField'45'acnt_30995 v0
  = case coe v0 of
      C_mkGeneralizeTel_31007 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_30997 ::
  T_GeneralizeTel_31005 -> T_Snapshots_2288
d_'46'generalizedField'45'ss''_30997 v0
  = case coe v0 of
      C_mkGeneralizeTel_31007 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_30999 ::
  T_GeneralizeTel_31005 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2008
d_'46'generalizedField'45'fut''_30999 v0
  = case coe v0 of
      C_mkGeneralizeTel_31007 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_31001 ::
  T_GeneralizeTel_31005 -> T_Snapshots_2288
d_'46'generalizedField'45'ss_31001 v0
  = case coe v0 of
      C_mkGeneralizeTel_31007 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_31003 ::
  T_GeneralizeTel_31005 -> MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_'46'generalizedField'45'es'8320'_31003 v0
  = case coe v0 of
      C_mkGeneralizeTel_31007 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.GeneralizeTel
d_GeneralizeTel_31005 a0 a1 = ()
data T_GeneralizeTel_31005
  = C_mkGeneralizeTel_31007 MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2008
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_Acnt_146 T_Snapshots_2288
                            MAlonzo.Code.Ledger.Conway.Conformance.Ratify.T_RatifyState_2008
                            T_Snapshots_2288 MAlonzo.Code.Ledger.Enact.T_EnactState_852
