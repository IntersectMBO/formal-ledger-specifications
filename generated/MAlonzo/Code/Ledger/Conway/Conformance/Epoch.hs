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
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0)))
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
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0)))
-- _.Epoch
d_Epoch_146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_146 = erased
-- _.THash
d_THash_190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_190 = erased
-- _.Number-Epoch
d_Number'45'Epoch_216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_216 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v0))
-- _.RwdAddr
d_RwdAddr_266 a0 = ()
-- _.TxOut
d_TxOut_364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_364 = erased
-- _.UTxO
d_UTxO_370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_370 = erased
-- _.VDeleg
d_VDeleg_376 a0 = ()
-- _.addEpoch
d_addEpoch_404 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_404 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v0))
-- _.Acnt.reserves
d_reserves_596 :: MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_reserves_596 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_152 (coe v0)
-- _.Acnt.treasury
d_treasury_598 :: MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_treasury_598 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_150 (coe v0)
-- _.GovernanceActions.VDeleg
d_VDeleg_772 a0 = ()
-- _.RwdAddr.net
d_net_1160 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1160 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_1162 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1162 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GovState
d_GovState_1500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 -> ()
d_GovState_1500 = erased
-- Ledger.Conway.Conformance.Epoch._.EnactState
d_EnactState_1546 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.ccCreds
d_ccCreds_1548 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_1548 ~v0 ~v1 = du_ccCreds_1548
du_ccCreds_1548 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_1548 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_852
-- Ledger.Conway.Conformance.Epoch._.EnactState.cc
d_cc_1582 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1582 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_842 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.constitution
d_constitution_1584 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1584 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_844 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.pparams
d_pparams_1586 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1586 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_848 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.pv
d_pv_1588 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1588 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_846 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.withdrawals
d_withdrawals_1590 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1590 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_850 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState
d_LState_1606 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.LState.certState
d_certState_1640 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074
d_certState_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2200
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState.govSt
d_govSt_1642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2198 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState.utxoSt
d_utxoSt_1644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_utxoSt_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2196
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1964 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1654 = erased
-- Ledger.Conway.Conformance.Epoch._.RatifyState
d_RatifyState_1674 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.StakeDistrs
d_StakeDistrs_1676 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.RatifyState.delay
d_delay_1752 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 -> Bool
d_delay_1752 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_delay_2006 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RatifyState.es
d_es_1754 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_es_1754 v0 = coe MAlonzo.Code.Ledger.Ratify.d_es_2002 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RatifyState.removed
d_removed_1756 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1756 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_removed_2004 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_1760 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1958 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1760 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1962 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.L.UTxOState
d_UTxOState_1828 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.L.UTxOState.deposits
d_deposits_1952 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1952 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2036 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.L.UTxOState.donations
d_donations_1954 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 -> Integer
d_donations_1954 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2038 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.L.UTxOState.fees
d_fees_1956 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 -> Integer
d_fees_1956 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2034 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.L.UTxOState.utxo
d_utxo_1958 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1958 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2032 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.CertState
d_CertState_2026 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.DState
d_DState_2046 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2048 v0 ~v1
  = du_DecEq'45'DepositPurpose_2048 v0
du_DecEq'45'DepositPurpose_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2048 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826 (coe v1))
-- Ledger.Conway.Conformance.Epoch._.DepositPurpose
d_DepositPurpose_2052 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.Deposits
d_Deposits_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 -> ()
d_Deposits_2054 = erased
-- Ledger.Conway.Conformance.Epoch._.GState
d_GState_2068 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.PState
d_PState_2084 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.CertState.dState
d_dState_2180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1038
d_dState_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.CertState.gState
d_gState_2182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1058
d_gState_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1086 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.CertState.pState
d_pState_2184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074 ->
  MAlonzo.Code.Ledger.Certs.T_PState_910
d_pState_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1084 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.deposits
d_deposits_2206 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1054
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.rewards
d_rewards_2208 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1052
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.stakeDelegs
d_stakeDelegs_2210 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1050
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.voteDelegs
d_voteDelegs_2212 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1048
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GState.ccHotKeys
d_ccHotKeys_2234 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1058 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1068
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GState.deposits
d_deposits_2236 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1058 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1070
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GState.dreps
d_dreps_2238 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1058 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1066 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.PState.pools
d_pools_2242 ::
  MAlonzo.Code.Ledger.Certs.T_PState_910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2242 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_916 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.PState.retiring
d_retiring_2244 ::
  MAlonzo.Code.Ledger.Certs.T_PState_910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2244 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_918 (coe v0)
-- Ledger.Conway.Conformance.Epoch.RewardUpdate
d_RewardUpdate_2250 a0 a1 = ()
data T_RewardUpdate_2250
  = C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2276 Integer Integer
                                                     Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δt
d_Δt_2264 :: T_RewardUpdate_2250 -> Integer
d_Δt_2264 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2276 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δr
d_Δr_2266 :: T_RewardUpdate_2250 -> Integer
d_Δr_2266 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2276 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δf
d_Δf_2268 :: T_RewardUpdate_2250 -> Integer
d_Δf_2268 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2276 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.rs
d_rs_2270 ::
  T_RewardUpdate_2250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2270 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2276 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.zeroSum
d_zeroSum_2274 ::
  T_RewardUpdate_2250 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zeroSum_2274 = erased
-- Ledger.Conway.Conformance.Epoch.Snapshot
d_Snapshot_2278 a0 a1 = ()
data T_Snapshot_2278
  = C_'10214'_'44'_'10215''738'_2288 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch.Snapshot.stake
d_stake_2284 ::
  T_Snapshot_2278 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2284 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2288 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshot.delegations
d_delegations_2286 ::
  T_Snapshot_2278 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2286 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2288 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots
d_Snapshots_2290 a0 a1 = ()
data T_Snapshots_2290
  = C_'10214'_'44'_'44'_'44'_'10215''738''738'_2308 T_Snapshot_2278
                                                    T_Snapshot_2278 T_Snapshot_2278 Integer
-- Ledger.Conway.Conformance.Epoch.Snapshots.mark
d_mark_2300 :: T_Snapshots_2290 -> T_Snapshot_2278
d_mark_2300 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2308 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.set
d_set_2302 :: T_Snapshots_2290 -> T_Snapshot_2278
d_set_2302 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2308 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.go
d_go_2304 :: T_Snapshots_2290 -> T_Snapshot_2278
d_go_2304 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2308 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.feeSS
d_feeSS_2306 :: T_Snapshots_2290 -> Integer
d_feeSS_2306 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2308 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState
d_EpochState_2310 a0 a1 = ()
data T_EpochState_2310
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2332 MAlonzo.Code.Ledger.PParams.T_Acnt_144
                                                       T_Snapshots_2290
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188
                                                       MAlonzo.Code.Ledger.Enact.T_EnactState_830
                                                       MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994
-- Ledger.Conway.Conformance.Epoch.EpochState.acnt
d_acnt_2322 ::
  T_EpochState_2310 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_acnt_2322 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2332 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.ss
d_ss_2324 :: T_EpochState_2310 -> T_Snapshots_2290
d_ss_2324 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2332 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.ls
d_ls_2326 ::
  T_EpochState_2310 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188
d_ls_2326 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2332 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.es
d_es_2328 ::
  T_EpochState_2310 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_es_2328 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2332 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.fut
d_fut_2330 ::
  T_EpochState_2310 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994
d_fut_2330 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2332 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState
d_NewEpochState_2334 a0 a1 = ()
data T_NewEpochState_2334
  = C_'10214'_'44'_'44'_'10215''8319''7497'_2348 AgdaAny
                                                 T_EpochState_2310 (Maybe T_RewardUpdate_2250)
-- Ledger.Conway.Conformance.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2342 :: T_NewEpochState_2334 -> AgdaAny
d_lastEpoch_2342 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2348 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.epochState
d_epochState_2344 :: T_NewEpochState_2334 -> T_EpochState_2310
d_epochState_2344 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2348 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.ru
d_ru_2346 :: T_NewEpochState_2334 -> Maybe T_RewardUpdate_2250
d_ru_2346 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2348 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.toRwdAddr
d_toRwdAddr_2396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_toRwdAddr_2396 v0 ~v1 v2 = du_toRwdAddr_2396 v0 v2
du_toRwdAddr_2396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
du_toRwdAddr_2396 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3243
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v0)))
      (coe v1)
-- Ledger.Conway.Conformance.Epoch.getStakeCred
d_getStakeCred_2400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getStakeCred_2400 ~v0 ~v1 v2 = du_getStakeCred_2400 v2
du_getStakeCred_2400 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getStakeCred_2400 v0
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
d_applyRUpd_2404 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_RewardUpdate_2250 -> T_EpochState_2310 -> T_EpochState_2310
d_applyRUpd_2404 v0 ~v1 v2 v3 = du_applyRUpd_2404 v0 v2 v3
du_applyRUpd_2404 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RewardUpdate_2250 -> T_EpochState_2310 -> T_EpochState_2310
du_applyRUpd_2404 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2276 v3 v4 v5 v6
        -> case coe v2 of
             C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2332 v8 v9 v10 v11 v12
               -> case coe v8 of
                    MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_154 v13 v14
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2202 v15 v16 v17
                             -> case coe v15 of
                                  MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2040 v18 v19 v20 v21
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088 v22 v23 v24
                                           -> case coe v22 of
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1056 v25 v26 v27 v28
                                                  -> coe
                                                       C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2332
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
                                                                   du_unregRU''_2454 (coe v0)
                                                                   (coe v6) (coe v27))))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe v14) (coe v4))))
                                                       (coe v9)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2202
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2040
                                                             (coe v18)
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v19) (coe v5)))
                                                             (coe v20) (coe v21))
                                                          (coe v16)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1088
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1056
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
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                                                            (coe v0))))
                                                                   v27
                                                                   (coe
                                                                      du_regRU_2450 (coe v0)
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
d_regRU_2450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_910 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1058 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_2450 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21 ~v22
  = du_regRU_2450 v0 v5 v17
du_regRU_2450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_2450 v0 v1 v2
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
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2))
-- Ledger.Conway.Conformance.Epoch._.unregRU
d_unregRU_2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_910 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1058 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_2452 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21 ~v22
  = du_unregRU_2452 v0 v5 v17
du_unregRU_2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_2452 v0 v1 v2
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
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2))
-- Ledger.Conway.Conformance.Epoch._.unregRU'
d_unregRU''_2454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_910 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1058 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 -> Integer
d_unregRU''_2454 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21 ~v22
  = du_unregRU''_2454 v0 v5 v17
du_unregRU''_2454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_2454 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v3 -> v3)) (coe du_unregRU_2452 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Epoch.stakeDistr
d_stakeDistr_2458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1038 ->
  MAlonzo.Code.Ledger.Certs.T_PState_910 -> T_Snapshot_2278
d_stakeDistr_2458 v0 ~v1 v2 v3 ~v4 = du_stakeDistr_2458 v0 v2 v3
du_stakeDistr_2458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1038 ->
  T_Snapshot_2278
du_stakeDistr_2458 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1056 v3 v4 v5 v6
        -> coe
             C_'10214'_'44'_'10215''738'_2288
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
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1152
                   (coe du_stakeRelation_2478 (coe v0) (coe v1) (coe v5))))
             (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch._.m
d_m_2472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_910 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_m_2472 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 ~v7 = du_m_2472 v0 v2 v5
du_m_2472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_m_2472 v0 v1 v2
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
                 MAlonzo.Code.Ledger.Utxo.du_cbalance_2064 (coe v0)
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
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1222
                                           (coe v0))))))
                            (coe du_getStakeCred_2400 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))))))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_548
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2)))
-- Ledger.Conway.Conformance.Epoch._.stakeRelation
d_stakeRelation_2478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_910 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeRelation_2478 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 ~v7
  = du_stakeRelation_2478 v0 v2 v5
du_stakeRelation_2478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeRelation_2478 v0 v1 v2
  = let v3
          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
         (coe du_m_2472 (coe v0) (coe v1) (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Ledger.Conway.Conformance.Epoch.gaDepositStake
d_gaDepositStake_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gaDepositStake_2480 v0 ~v1 v2 v3
  = du_gaDepositStake_2480 v0 v2 v3
du_gaDepositStake_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gaDepositStake_2480 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1218
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1182 (coe v0))
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1198 (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
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
         (coe du_govSt''_2490 (coe v1)))
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
                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_822
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased
                       (let v4
                              = MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0) in
                        coe
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_826
                             (coe v4))))
                    (coe
                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_822
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v4
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v2)))))))
         (coe du_govSt''_2490 (coe v1)))
-- Ledger.Conway.Conformance.Epoch._.govSt'
d_govSt''_2490 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2490 ~v0 ~v1 v2 ~v3 = du_govSt''_2490 v2
du_govSt''_2490 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2490 v0
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
                  MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_794 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Conformance.Epoch.mkStakeDistrs
d_mkStakeDistrs_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_Snapshot_2278 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1958
d_mkStakeDistrs_2502 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_2502 v0 v2 v3 v4 v5
du_mkStakeDistrs_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_Snapshot_2278 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1958
du_mkStakeDistrs_2502 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11377
      (case coe v1 of
         C_'10214'_'44'_'10215''738'_2288 v5 v6
           -> coe
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1218
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_806
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0)))
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
                            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1222 (coe v0))))
                   v5 (coe du_gaDepositStake_2480 (coe v0) (coe v2) (coe v3)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2512 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2512 = C_SNAP_2542
-- Ledger.Conway.Conformance.Epoch._.certState
d_certState_2516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_23783 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074
d_certState_2516 ~v0 ~v1 v2 = du_certState_2516 v2
du_certState_2516 ::
  T_GeneralizeTel_23783 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1074
du_certState_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2200
      (coe d_'46'generalizedField'45'lstate_23773 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.utxoSt
d_utxoSt_2520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_23783 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_utxoSt_2520 ~v0 ~v1 v2 = du_utxoSt_2520 v2
du_utxoSt_2520 ::
  T_GeneralizeTel_23783 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
du_utxoSt_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2196
      (coe d_'46'generalizedField'45'lstate_23773 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.fees
d_fees_2528 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_23783 -> Integer
d_fees_2528 ~v0 ~v1 v2 = du_fees_2528 v2
du_fees_2528 :: T_GeneralizeTel_23783 -> Integer
du_fees_2528 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_2034
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2196
         (coe d_'46'generalizedField'45'lstate_23773 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.utxo
d_utxo_2530 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_23783 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2530 ~v0 ~v1 v2 = du_utxo_2530 v2
du_utxo_2530 ::
  T_GeneralizeTel_23783 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2530 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_2032
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2196
         (coe d_'46'generalizedField'45'lstate_23773 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.dState
d_dState_2534 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_23783 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1038
d_dState_2534 ~v0 ~v1 v2 = du_dState_2534 v2
du_dState_2534 ::
  T_GeneralizeTel_23783 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1038
du_dState_2534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1082
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2200
         (coe d_'46'generalizedField'45'lstate_23773 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.pState
d_pState_2538 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_23783 -> MAlonzo.Code.Ledger.Certs.T_PState_910
d_pState_2538 ~v0 ~v1 v2 = du_pState_2538 v2
du_pState_2538 ::
  T_GeneralizeTel_23783 -> MAlonzo.Code.Ledger.Certs.T_PState_910
du_pState_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1084
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2200
         (coe d_'46'generalizedField'45'lstate_23773 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2544 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__2544
  = C_EPOCH_2618 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
                 T__'8866'_'8640''10631'_'44'SNAP'10632'__2512
-- Ledger.Conway.Conformance.Epoch._.ccHotKeys
d_ccHotKeys_2612 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_30911 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2612 ~v0 ~v1 v2 = du_ccHotKeys_2612 v2
du_ccHotKeys_2612 ::
  T_GeneralizeTel_30911 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1068
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1086
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2200
            (coe d_'46'generalizedField'45'ls_30897 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._.dreps
d_dreps_2616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_30911 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2616 ~v0 ~v1 v2 = du_dreps_2616 v2
du_dreps_2616 ::
  T_GeneralizeTel_30911 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1066
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1086
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2200
            (coe d_'46'generalizedField'45'ls_30897 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2620 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2620
  = C_NEWEPOCH'45'New_2624 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_2626 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_2628 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch..generalizedField-lstate
d_'46'generalizedField'45'lstate_23773 ::
  T_GeneralizeTel_23783 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188
d_'46'generalizedField'45'lstate_23773 v0
  = case coe v0 of
      C_mkGeneralizeTel_23785 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-mark
d_'46'generalizedField'45'mark_23775 ::
  T_GeneralizeTel_23783 -> T_Snapshot_2278
d_'46'generalizedField'45'mark_23775 v0
  = case coe v0 of
      C_mkGeneralizeTel_23785 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-set
d_'46'generalizedField'45'set_23777 ::
  T_GeneralizeTel_23783 -> T_Snapshot_2278
d_'46'generalizedField'45'set_23777 v0
  = case coe v0 of
      C_mkGeneralizeTel_23785 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-go
d_'46'generalizedField'45'go_23779 ::
  T_GeneralizeTel_23783 -> T_Snapshot_2278
d_'46'generalizedField'45'go_23779 v0
  = case coe v0 of
      C_mkGeneralizeTel_23785 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_23781 ::
  T_GeneralizeTel_23783 -> Integer
d_'46'generalizedField'45'feeSS_23781 v0
  = case coe v0 of
      C_mkGeneralizeTel_23785 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.GeneralizeTel
d_GeneralizeTel_23783 a0 a1 = ()
data T_GeneralizeTel_23783
  = C_mkGeneralizeTel_23785 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188
                            T_Snapshot_2278 T_Snapshot_2278 T_Snapshot_2278 Integer
-- Ledger.Conway.Conformance.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_30895 ::
  T_GeneralizeTel_30911 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994
d_'46'generalizedField'45'fut_30895 v0
  = case coe v0 of
      C_mkGeneralizeTel_30913 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_30897 ::
  T_GeneralizeTel_30911 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188
d_'46'generalizedField'45'ls_30897 v0
  = case coe v0 of
      C_mkGeneralizeTel_30913 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-e
d_'46'generalizedField'45'e_30899 ::
  T_GeneralizeTel_30911 -> AgdaAny
d_'46'generalizedField'45'e_30899 v0
  = case coe v0 of
      C_mkGeneralizeTel_30913 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_30901 ::
  T_GeneralizeTel_30911 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_'46'generalizedField'45'acnt_30901 v0
  = case coe v0 of
      C_mkGeneralizeTel_30913 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_30903 ::
  T_GeneralizeTel_30911 -> T_Snapshots_2290
d_'46'generalizedField'45'ss''_30903 v0
  = case coe v0 of
      C_mkGeneralizeTel_30913 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_30905 ::
  T_GeneralizeTel_30911 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994
d_'46'generalizedField'45'fut''_30905 v0
  = case coe v0 of
      C_mkGeneralizeTel_30913 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_30907 ::
  T_GeneralizeTel_30911 -> T_Snapshots_2290
d_'46'generalizedField'45'ss_30907 v0
  = case coe v0 of
      C_mkGeneralizeTel_30913 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_30909 ::
  T_GeneralizeTel_30911 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_'46'generalizedField'45'es'8320'_30909 v0
  = case coe v0 of
      C_mkGeneralizeTel_30913 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.GeneralizeTel
d_GeneralizeTel_30911 a0 a1 = ()
data T_GeneralizeTel_30911
  = C_mkGeneralizeTel_30913 MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2188 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_Acnt_144 T_Snapshots_2290
                            MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 T_Snapshots_2290
                            MAlonzo.Code.Ledger.Enact.T_EnactState_830
