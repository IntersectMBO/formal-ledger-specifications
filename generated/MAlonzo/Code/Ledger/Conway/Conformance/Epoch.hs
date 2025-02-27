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
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
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
import qualified MAlonzo.Code.Class.To
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Ext
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
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
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))
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
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))
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
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0))
-- _.RwdAddr
d_RwdAddr_266 a0 = ()
-- _.TxOut
d_TxOut_366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_366 = erased
-- _.UTxO
d_UTxO_372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_372 = erased
-- _.VDeleg
d_VDeleg_378 a0 = ()
-- _.addEpoch
d_addEpoch_402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_402 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0))
-- _.Acnt.reserves
d_reserves_594 :: MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_reserves_594 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_152 (coe v0)
-- _.Acnt.treasury
d_treasury_596 :: MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_treasury_596 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_150 (coe v0)
-- _.GovernanceActions.VDeleg
d_VDeleg_770 a0 = ()
-- _.RwdAddr.net
d_net_1154 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1154 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_1156 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1156 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GovState
d_GovState_1506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 -> ()
d_GovState_1506 = erased
-- Ledger.Conway.Conformance.Epoch._.EnactState
d_EnactState_1624 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.ccCreds
d_ccCreds_1628 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_1628 ~v0 ~v1 = du_ccCreds_1628
du_ccCreds_1628 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_1628 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_850
-- Ledger.Conway.Conformance.Epoch._.EnactState.cc
d_cc_1660 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1660 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_838 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.constitution
d_constitution_1662 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1662 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_840 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.pparams
d_pparams_1664 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1664 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_844 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.pv
d_pv_1666 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1666 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_842 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.withdrawals
d_withdrawals_1668 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1668 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_846 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState
d_LState_1684 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.To-LState
d_To'45'LState_1688 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_1688 ~v0 ~v1 = du_To'45'LState_1688
du_To'45'LState_1688 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_1688
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.du_To'45'LState_1966
-- Ledger.Conway.Conformance.Epoch._.LState.certState
d_certState_1716 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1950 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078
d_certState_1716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1962
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState.govSt
d_govSt_1718 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1950 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1960 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState.utxoSt
d_utxoSt_1720 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_utxoSt_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_1958
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1730 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1964 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1730 = erased
-- Ledger.Conway.Conformance.Epoch._.RatifyState
d_RatifyState_1750 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.StakeDistrs
d_StakeDistrs_1752 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.To-RatifyState
d_To'45'RatifyState_1754 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'RatifyState_1754 ~v0 ~v1 = du_To'45'RatifyState_1754
du_To'45'RatifyState_1754 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'RatifyState_1754
  = coe MAlonzo.Code.Ledger.Ratify.du_To'45'RatifyState_2026
-- Ledger.Conway.Conformance.Epoch._.RatifyState.delay
d_delay_1828 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 -> Bool
d_delay_1828 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_delay_2006 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RatifyState.es
d_es_1830 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_es_1830 v0 = coe MAlonzo.Code.Ledger.Ratify.d_es_2002 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RatifyState.removed
d_removed_1832 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1832 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_removed_2004 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_1836 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1958 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1836 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1962 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.To-UTxOState
d_To'45'UTxOState_1852 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'UTxOState_1852 ~v0 ~v1 = du_To'45'UTxOState_1852
du_To'45'UTxOState_1852 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'UTxOState_1852
  = coe MAlonzo.Code.Ledger.Utxo.du_To'45'UTxOState_2042
-- Ledger.Conway.Conformance.Epoch._.UTxOState
d_UTxOState_1860 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.UTxOState.deposits
d_deposits_1902 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1902 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2036 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.UTxOState.donations
d_donations_1904 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 -> Integer
d_donations_1904 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2038 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.UTxOState.fees
d_fees_1906 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 -> Integer
d_fees_1906 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2034 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.UTxOState.utxo
d_utxo_1908 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1908 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2032 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.CertState
d_CertState_1942 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.DState
d_DState_1962 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1964 v0 ~v1
  = du_DecEq'45'DepositPurpose_1964 v0
du_DecEq'45'DepositPurpose_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1964 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824 (coe v1))
-- Ledger.Conway.Conformance.Epoch._.DepositPurpose
d_DepositPurpose_1968 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.Deposits
d_Deposits_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 -> ()
d_Deposits_1970 = erased
-- Ledger.Conway.Conformance.Epoch._.PState
d_PState_2000 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.To-GState
d_To'45'GState_2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GState_2016 ~v0 ~v1 = du_To'45'GState_2016
du_To'45'GState_2016 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GState_2016
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_To'45'GState_1096
-- Ledger.Conway.Conformance.Epoch._.To-PState
d_To'45'PState_2018 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'PState_2018 ~v0 ~v1 = du_To'45'PState_2018
du_To'45'PState_2018 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'PState_2018
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'PState_974
-- Ledger.Conway.Conformance.Epoch._.CertState.dState
d_dState_2104 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1042
d_dState_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1086 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.CertState.gState
d_gState_2106 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1062
d_gState_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1090 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.CertState.pState
d_pState_2108 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1088 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.deposits
d_deposits_2130 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1042 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1058
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.rewards
d_rewards_2132 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1042 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1056
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.stakeDelegs
d_stakeDelegs_2134 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1042 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1054
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.voteDelegs
d_voteDelegs_2136 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1042 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1052
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.PState.pools
d_pools_2166 ::
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2166 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_912 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.PState.retiring
d_retiring_2168 ::
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2168 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_914 (coe v0)
-- Ledger.Conway.Conformance.Epoch.RewardUpdate
d_RewardUpdate_2174 a0 a1 = ()
data T_RewardUpdate_2174
  = C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2192 Integer Integer
                                                     Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δt
d_Δt_2184 :: T_RewardUpdate_2174 -> Integer
d_Δt_2184 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2192 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δr
d_Δr_2186 :: T_RewardUpdate_2174 -> Integer
d_Δr_2186 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2192 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δf
d_Δf_2188 :: T_RewardUpdate_2174 -> Integer
d_Δf_2188 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2192 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.rs
d_rs_2190 ::
  T_RewardUpdate_2174 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2190 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2192 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshot
d_Snapshot_2194 a0 a1 = ()
data T_Snapshot_2194
  = C_Snapshot'46'constructor_4913 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch.Snapshot.stake
d_stake_2200 ::
  T_Snapshot_2194 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2200 v0
  = case coe v0 of
      C_Snapshot'46'constructor_4913 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshot.delegations
d_delegations_2202 ::
  T_Snapshot_2194 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2202 v0
  = case coe v0 of
      C_Snapshot'46'constructor_4913 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots
d_Snapshots_2204 a0 a1 = ()
data T_Snapshots_2204
  = C_Snapshots'46'constructor_4997 T_Snapshot_2194 T_Snapshot_2194
                                    T_Snapshot_2194 Integer
-- Ledger.Conway.Conformance.Epoch.Snapshots.mark
d_mark_2214 :: T_Snapshots_2204 -> T_Snapshot_2194
d_mark_2214 v0
  = case coe v0 of
      C_Snapshots'46'constructor_4997 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.set
d_set_2216 :: T_Snapshots_2204 -> T_Snapshot_2194
d_set_2216 v0
  = case coe v0 of
      C_Snapshots'46'constructor_4997 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.go
d_go_2218 :: T_Snapshots_2204 -> T_Snapshot_2194
d_go_2218 v0
  = case coe v0 of
      C_Snapshots'46'constructor_4997 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.feeSS
d_feeSS_2220 :: T_Snapshots_2204 -> Integer
d_feeSS_2220 v0
  = case coe v0 of
      C_Snapshots'46'constructor_4997 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState
d_EpochState_2222 a0 a1 = ()
data T_EpochState_2222
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2244 MAlonzo.Code.Ledger.PParams.T_Acnt_144
                                                       T_Snapshots_2204
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1950
                                                       MAlonzo.Code.Ledger.Enact.T_EnactState_826
                                                       MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994
-- Ledger.Conway.Conformance.Epoch.EpochState.acnt
d_acnt_2234 ::
  T_EpochState_2222 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_acnt_2234 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2244 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.ss
d_ss_2236 :: T_EpochState_2222 -> T_Snapshots_2204
d_ss_2236 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2244 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.ls
d_ls_2238 ::
  T_EpochState_2222 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1950
d_ls_2238 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2244 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.es
d_es_2240 ::
  T_EpochState_2222 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_es_2240 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2244 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.fut
d_fut_2242 ::
  T_EpochState_2222 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994
d_fut_2242 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2244 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState
d_NewEpochState_2246 a0 a1 = ()
data T_NewEpochState_2246
  = C_NewEpochState'46'constructor_5355 AgdaAny T_EpochState_2222
                                        (Maybe T_RewardUpdate_2174)
-- Ledger.Conway.Conformance.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2254 :: T_NewEpochState_2246 -> AgdaAny
d_lastEpoch_2254 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_5355 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.epochState
d_epochState_2256 :: T_NewEpochState_2246 -> T_EpochState_2222
d_epochState_2256 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_5355 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.ru
d_ru_2258 :: T_NewEpochState_2246 -> Maybe T_RewardUpdate_2174
d_ru_2258 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_5355 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.To-RewardUpdate
d_To'45'RewardUpdate_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'RewardUpdate_2260 ~v0 ~v1 = du_To'45'RewardUpdate_2260
du_To'45'RewardUpdate_2260 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'RewardUpdate_2260
  = coe
      MAlonzo.Code.Class.To.C_To'46'constructor_9
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.To.d_getCodPi_22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2174 :: Integer) (11290226015743492707 :: Integer)
                                 "Ledger.Conway.Conformance.Epoch.RewardUpdate"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (6 :: Integer) (10098474421514259553 :: Integer)
                                 "Agda.Builtin.Int.Int"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.To.d_getCodPi_22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2174 :: Integer) (11290226015743492707 :: Integer)
                                    "Ledger.Conway.Conformance.Epoch.RewardUpdate"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (6 :: Integer) (10098474421514259553 :: Integer)
                                    "Agda.Builtin.Int.Int"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.To.d_getCodPi_22
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2174 :: Integer) (11290226015743492707 :: Integer)
                                       "Ledger.Conway.Conformance.Epoch.RewardUpdate"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (6 :: Integer) (10098474421514259553 :: Integer)
                                       "Agda.Builtin.Int.Int"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.To.d_getCodPi_22
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2174 :: Integer) (11290226015743492707 :: Integer)
                                          "Ledger.Conway.Conformance.Epoch.RewardUpdate"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (180 :: Integer) (9254951203007797098 :: Integer)
                                          "abstract-set-theory.FiniteSetTheory._.Map"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.RightAssoc
                                             (MAlonzo.RTE.Related (1.0 :: Double)))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (48 :: Integer) (11290226015743492707 :: Integer)
                                                   "_.Credential"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (6 :: Integer)
                                                      (14798748958053396954 :: Integer)
                                                      "Ledger.Prelude.Base.Coin"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2192))
-- Ledger.Conway.Conformance.Epoch.To-Snapshot
d_To'45'Snapshot_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'Snapshot_2262 ~v0 ~v1 = du_To'45'Snapshot_2262
du_To'45'Snapshot_2262 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'Snapshot_2262
  = coe
      MAlonzo.Code.Class.To.C_To'46'constructor_9
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.To.d_getCodPi_22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2194 :: Integer) (11290226015743492707 :: Integer)
                                 "Ledger.Conway.Conformance.Epoch.Snapshot"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (180 :: Integer) (9254951203007797098 :: Integer)
                                 "abstract-set-theory.FiniteSetTheory._.Map"
                                 (MAlonzo.RTE.Fixity
                                    MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (1.0 :: Double)))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (48 :: Integer) (11290226015743492707 :: Integer)
                                          "_.Credential"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (6 :: Integer) (14798748958053396954 :: Integer)
                                             "Ledger.Prelude.Base.Coin"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.To.d_getCodPi_22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2194 :: Integer) (11290226015743492707 :: Integer)
                                    "Ledger.Conway.Conformance.Epoch.Snapshot"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (180 :: Integer) (9254951203007797098 :: Integer)
                                    "abstract-set-theory.FiniteSetTheory._.Map"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.RightAssoc
                                       (MAlonzo.RTE.Related (1.0 :: Double)))))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (48 :: Integer) (11290226015743492707 :: Integer)
                                             "_.Credential"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (190 :: Integer) (11290226015743492707 :: Integer)
                                                "_.THash"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
         (coe C_Snapshot'46'constructor_4913))
-- Ledger.Conway.Conformance.Epoch.To-Snapshots
d_To'45'Snapshots_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'Snapshots_2264 ~v0 ~v1 = du_To'45'Snapshots_2264
du_To'45'Snapshots_2264 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'Snapshots_2264
  = coe
      MAlonzo.Code.Class.To.C_To'46'constructor_9
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.To.d_getCodPi_22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2204 :: Integer) (11290226015743492707 :: Integer)
                                 "Ledger.Conway.Conformance.Epoch.Snapshots"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2194 :: Integer) (11290226015743492707 :: Integer)
                                 "Ledger.Conway.Conformance.Epoch.Snapshot"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.To.d_getCodPi_22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2204 :: Integer) (11290226015743492707 :: Integer)
                                    "Ledger.Conway.Conformance.Epoch.Snapshots"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2194 :: Integer) (11290226015743492707 :: Integer)
                                    "Ledger.Conway.Conformance.Epoch.Snapshot"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.To.d_getCodPi_22
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2204 :: Integer) (11290226015743492707 :: Integer)
                                       "Ledger.Conway.Conformance.Epoch.Snapshots"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2194 :: Integer) (11290226015743492707 :: Integer)
                                       "Ledger.Conway.Conformance.Epoch.Snapshot"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.To.d_getCodPi_22
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2204 :: Integer) (11290226015743492707 :: Integer)
                                          "Ledger.Conway.Conformance.Epoch.Snapshots"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (6 :: Integer) (14798748958053396954 :: Integer)
                                          "Ledger.Prelude.Base.Coin"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
         (coe C_Snapshots'46'constructor_4997))
-- Ledger.Conway.Conformance.Epoch.To-EpochState
d_To'45'EpochState_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'EpochState_2266 ~v0 ~v1 = du_To'45'EpochState_2266
du_To'45'EpochState_2266 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'EpochState_2266
  = coe
      MAlonzo.Code.Class.To.C_To'46'constructor_9
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.To.d_getCodPi_22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2222 :: Integer) (11290226015743492707 :: Integer)
                                 "Ledger.Conway.Conformance.Epoch.EpochState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (28 :: Integer) (11290226015743492707 :: Integer) "_.Acnt"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.To.d_getCodPi_22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2222 :: Integer) (11290226015743492707 :: Integer)
                                    "Ledger.Conway.Conformance.Epoch.EpochState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2204 :: Integer) (11290226015743492707 :: Integer)
                                    "Ledger.Conway.Conformance.Epoch.Snapshots"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.To.d_getCodPi_22
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2222 :: Integer) (11290226015743492707 :: Integer)
                                       "Ledger.Conway.Conformance.Epoch.EpochState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (1684 :: Integer) (11290226015743492707 :: Integer)
                                       "Ledger.Conway.Conformance.Epoch._.LState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.To.d_getCodPi_22
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2222 :: Integer) (11290226015743492707 :: Integer)
                                          "Ledger.Conway.Conformance.Epoch.EpochState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (1624 :: Integer) (11290226015743492707 :: Integer)
                                          "Ledger.Conway.Conformance.Epoch._.EnactState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Class.To.d_getCodPi_22
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (2222 :: Integer) (11290226015743492707 :: Integer)
                                             "Ledger.Conway.Conformance.Epoch.EpochState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                    (coe ("r" :: Data.Text.Text))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (1750 :: Integer) (11290226015743492707 :: Integer)
                                             "Ledger.Conway.Conformance.Epoch._.RatifyState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
         (coe C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2244))
-- Ledger.Conway.Conformance.Epoch.To-NewEpochState
d_To'45'NewEpochState_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'NewEpochState_2268 ~v0 ~v1 = du_To'45'NewEpochState_2268
du_To'45'NewEpochState_2268 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'NewEpochState_2268
  = coe
      MAlonzo.Code.Class.To.C_To'46'constructor_9
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.To.d_getCodPi_22
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (2246 :: Integer) (11290226015743492707 :: Integer)
                                 "Ledger.Conway.Conformance.Epoch.NewEpochState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (146 :: Integer) (11290226015743492707 :: Integer) "_.Epoch"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.To.d_getCodPi_22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2246 :: Integer) (11290226015743492707 :: Integer)
                                    "Ledger.Conway.Conformance.Epoch.NewEpochState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2222 :: Integer) (11290226015743492707 :: Integer)
                                    "Ledger.Conway.Conformance.Epoch.EpochState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.To.d_getCodPi_22
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2246 :: Integer) (11290226015743492707 :: Integer)
                                       "Ledger.Conway.Conformance.Epoch.NewEpochState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (10 :: Integer) (15412666033012224255 :: Integer)
                                       "Agda.Builtin.Maybe.Maybe"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (20 :: Integer) (10880583612240331187 :: Integer)
                                                "Agda.Primitive.lzero"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (2174 :: Integer)
                                                   (11290226015743492707 :: Integer)
                                                   "Ledger.Conway.Conformance.Epoch.RewardUpdate"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_NewEpochState'46'constructor_5355))
-- Ledger.Conway.Conformance.Epoch.toRwdAddr
d_toRwdAddr_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_toRwdAddr_2274 v0 ~v1 v2 = du_toRwdAddr_2274 v0 v2
du_toRwdAddr_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
du_toRwdAddr_2274 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3243
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v0)))
      (coe v1)
-- Ledger.Conway.Conformance.Epoch.getStakeCred
d_getStakeCred_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getStakeCred_2278 ~v0 ~v1 v2 = du_getStakeCred_2278 v2
du_getStakeCred_2278 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getStakeCred_2278 v0
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
d_applyRUpd_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_RewardUpdate_2174 -> T_EpochState_2222 -> T_EpochState_2222
d_applyRUpd_2282 v0 ~v1 v2 v3 = du_applyRUpd_2282 v0 v2 v3
du_applyRUpd_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RewardUpdate_2174 -> T_EpochState_2222 -> T_EpochState_2222
du_applyRUpd_2282 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2192 v3 v4 v5 v6
        -> case coe v2 of
             C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2244 v7 v8 v9 v10 v11
               -> case coe v7 of
                    MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_154 v12 v13
                      -> case coe v9 of
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_1964 v14 v15 v16
                             -> case coe v14 of
                                  MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2040 v17 v18 v19 v20
                                    -> case coe v16 of
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1092 v21 v22 v23
                                           -> case coe v21 of
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1060 v24 v25 v26 v27
                                                  -> coe
                                                       C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2244
                                                       (coe
                                                          MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_154
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v12) (coe v3))
                                                                (coe
                                                                   du_unregRU''_2332 (coe v0)
                                                                   (coe v6) (coe v26))))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe v13) (coe v4))))
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_1964
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2040
                                                             (coe v17)
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v18) (coe v5)))
                                                             (coe v19) (coe v20))
                                                          (coe v15)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1092
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1060
                                                                (coe v24) (coe v25)
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
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                            (coe v0))))
                                                                   v26
                                                                   (coe
                                                                      du_regRU_2328 (coe v0)
                                                                      (coe v6) (coe v26)))
                                                                (coe v27))
                                                             (coe v22) (coe v23)))
                                                       (coe v10) (coe v11)
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch._.regRU
d_regRU_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  T_Snapshots_2204 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1062 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_2328 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 v16 ~v17 ~v18 ~v19 ~v20 ~v21
  = du_regRU_2328 v0 v5 v16
du_regRU_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_2328 v0 v1 v2
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
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2))
-- Ledger.Conway.Conformance.Epoch._.unregRU
d_unregRU_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  T_Snapshots_2204 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1062 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_2330 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 v16 ~v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU_2330 v0 v5 v16
du_unregRU_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_2330 v0 v1 v2
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
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2))
-- Ledger.Conway.Conformance.Epoch._.unregRU'
d_unregRU''_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  T_Snapshots_2204 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1062 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 -> Integer
d_unregRU''_2332 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 v16 ~v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU''_2332 v0 v5 v16
du_unregRU''_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_2332 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v3 -> v3)) (coe du_unregRU_2330 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Epoch.stakeDistr
d_stakeDistr_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1042 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 -> T_Snapshot_2194
d_stakeDistr_2336 v0 ~v1 v2 v3 ~v4 = du_stakeDistr_2336 v0 v2 v3
du_stakeDistr_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1042 ->
  T_Snapshot_2194
du_stakeDistr_2336 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1060 v3 v4 v5 v6
        -> coe
             MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
             (coe
                MAlonzo.Code.Data.List.Base.du_length_284
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                   (coe
                      MAlonzo.Code.Class.To.d_getCodPi_22
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                               (coe
                                  (MAlonzo.RTE.QName
                                     (2194 :: Integer) (11290226015743492707 :: Integer)
                                     "Ledger.Conway.Conformance.Epoch.Snapshot"
                                     (MAlonzo.RTE.Fixity
                                        MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                            (coe ("r" :: Data.Text.Text))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                               (coe
                                  (MAlonzo.RTE.QName
                                     (180 :: Integer) (9254951203007797098 :: Integer)
                                     "abstract-set-theory.FiniteSetTheory._.Map"
                                     (MAlonzo.RTE.Fixity
                                        MAlonzo.RTE.RightAssoc
                                        (MAlonzo.RTE.Related (1.0 :: Double)))))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                        (coe
                                           (MAlonzo.RTE.QName
                                              (48 :: Integer) (11290226015743492707 :: Integer)
                                              "_.Credential"
                                              (MAlonzo.RTE.Fixity
                                                 MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                           (coe
                                              (MAlonzo.RTE.QName
                                                 (6 :: Integer) (14798748958053396954 :: Integer)
                                                 "Ledger.Prelude.Base.Coin"
                                                 (MAlonzo.RTE.Fixity
                                                    MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe
                         MAlonzo.Code.Class.To.d_getCodPi_22
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                  (coe
                                     (MAlonzo.RTE.QName
                                        (2194 :: Integer) (11290226015743492707 :: Integer)
                                        "Ledger.Conway.Conformance.Epoch.Snapshot"
                                        (MAlonzo.RTE.Fixity
                                           MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                               (coe ("r" :: Data.Text.Text))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                  (coe
                                     (MAlonzo.RTE.QName
                                        (180 :: Integer) (9254951203007797098 :: Integer)
                                        "abstract-set-theory.FiniteSetTheory._.Map"
                                        (MAlonzo.RTE.Fixity
                                           MAlonzo.RTE.RightAssoc
                                           (MAlonzo.RTE.Related (1.0 :: Double)))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                           (coe
                                              (MAlonzo.RTE.QName
                                                 (48 :: Integer) (11290226015743492707 :: Integer)
                                                 "_.Credential"
                                                 (MAlonzo.RTE.Fixity
                                                    MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                              (coe
                                                 (MAlonzo.RTE.QName
                                                    (190 :: Integer)
                                                    (11290226015743492707 :: Integer) "_.THash"
                                                    (MAlonzo.RTE.Fixity
                                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
             (coe C_Snapshot'46'constructor_4913)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
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
                            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1152
                      (coe du_stakeRelation_2356 (coe v0) (coe v1) (coe v5))))
                (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch._.m
d_m_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_m_2350 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 ~v7 = du_m_2350 v0 v2 v5
du_m_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_m_2350 v0 v1 v2
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
                 MAlonzo.Code.Ledger.Utxo.du_cbalance_2066 (coe v0)
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
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                           (coe v0))))))
                            (coe du_getStakeCred_2278 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))))))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_548
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2)))
-- Ledger.Conway.Conformance.Epoch._.stakeRelation
d_stakeRelation_2356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeRelation_2356 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 ~v7
  = du_stakeRelation_2356 v0 v2 v5
du_stakeRelation_2356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeRelation_2356 v0 v1 v2
  = let v3
          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
         (coe du_m_2350 (coe v0) (coe v1) (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Ledger.Conway.Conformance.Epoch.gaDepositStake
d_gaDepositStake_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
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
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1218
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184 (coe v0))
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
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
         (coe du_govSt''_2368 (coe v1)))
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
                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_820
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased
                       (let v4
                              = MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0) in
                        coe
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                             (coe v4))))
                    (coe
                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_820
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v4
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v2)))))))
         (coe du_govSt''_2368 (coe v1)))
-- Ledger.Conway.Conformance.Epoch._.govSt'
d_govSt''_2368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2368 ~v0 ~v1 v2 ~v3 = du_govSt''_2368 v2
du_govSt''_2368 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2368 v0
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
                  MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_782 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Conformance.Epoch.mkStakeDistrs
d_mkStakeDistrs_2380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_Snapshot_2194 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1958
d_mkStakeDistrs_2380 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_2380 v0 v2 v3 v4 v5
du_mkStakeDistrs_2380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_Snapshot_2194 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1958
du_mkStakeDistrs_2380 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11649
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1218
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_794
            (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0)))
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
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
            (d_stake_2200 (coe v1))
            (coe du_gaDepositStake_2358 (coe v0) (coe v2) (coe v3))))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2434 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2434 = C_SNAP_2464
-- Ledger.Conway.Conformance.Epoch._.certState
d_certState_2438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_28071 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078
d_certState_2438 ~v0 ~v1 v2 = du_certState_2438 v2
du_certState_2438 ::
  T_GeneralizeTel_28071 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078
du_certState_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1962
      (coe d_'46'generalizedField'45'lstate_28061 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.utxoSt
d_utxoSt_2442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_28071 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_utxoSt_2442 ~v0 ~v1 v2 = du_utxoSt_2442 v2
du_utxoSt_2442 ::
  T_GeneralizeTel_28071 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
du_utxoSt_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_1958
      (coe d_'46'generalizedField'45'lstate_28061 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.fees
d_fees_2450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_28071 -> Integer
d_fees_2450 ~v0 ~v1 v2 = du_fees_2450 v2
du_fees_2450 :: T_GeneralizeTel_28071 -> Integer
du_fees_2450 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_2034
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_1958
         (coe d_'46'generalizedField'45'lstate_28061 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.utxo
d_utxo_2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_28071 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2452 ~v0 ~v1 v2 = du_utxo_2452 v2
du_utxo_2452 ::
  T_GeneralizeTel_28071 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2452 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_2032
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_1958
         (coe d_'46'generalizedField'45'lstate_28061 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.dState
d_dState_2456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_28071 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1042
d_dState_2456 ~v0 ~v1 v2 = du_dState_2456 v2
du_dState_2456 ::
  T_GeneralizeTel_28071 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1042
du_dState_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1086
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1962
         (coe d_'46'generalizedField'45'lstate_28061 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.pState
d_pState_2460 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_28071 -> MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_2460 ~v0 ~v1 v2 = du_pState_2460 v2
du_pState_2460 ::
  T_GeneralizeTel_28071 -> MAlonzo.Code.Ledger.Certs.T_PState_906
du_pState_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1088
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1962
         (coe d_'46'generalizedField'45'lstate_28061 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2466 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__2466
  = C_EPOCH_2556 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
                 T__'8866'_'8640''10631'_'44'SNAP'10632'__2434
-- Ledger.Conway.Conformance.Epoch._.certState
d_certState_2470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_40943 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078
d_certState_2470 ~v0 ~v1 v2 = du_certState_2470 v2
du_certState_2470 ::
  T_GeneralizeTel_40943 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078
du_certState_2470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1962
      (coe d_'46'generalizedField'45'ls_40927 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.govSt
d_govSt_2472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_40943 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2472 ~v0 ~v1 v2 = du_govSt_2472 v2
du_govSt_2472 ::
  T_GeneralizeTel_40943 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1960
      (coe d_'46'generalizedField'45'ls_40927 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.utxoSt
d_utxoSt_2474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_40943 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_utxoSt_2474 ~v0 ~v1 v2 = du_utxoSt_2474 v2
du_utxoSt_2474 ::
  T_GeneralizeTel_40943 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
du_utxoSt_2474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_1958
      (coe d_'46'generalizedField'45'ls_40927 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.dState
d_dState_2478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_40943 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1042
d_dState_2478 ~v0 ~v1 v2 = du_dState_2478 v2
du_dState_2478 ::
  T_GeneralizeTel_40943 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1042
du_dState_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1086
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1962
         (coe d_'46'generalizedField'45'ls_40927 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.gState
d_gState_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_40943 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1062
d_gState_2480 ~v0 ~v1 v2 = du_gState_2480 v2
du_gState_2480 ::
  T_GeneralizeTel_40943 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1062
du_gState_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1090
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1962
         (coe d_'46'generalizedField'45'ls_40927 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.pState
d_pState_2482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_40943 -> MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_2482 ~v0 ~v1 v2 = du_pState_2482 v2
du_pState_2482 ::
  T_GeneralizeTel_40943 -> MAlonzo.Code.Ledger.Certs.T_PState_906
du_pState_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1088
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1962
         (coe d_'46'generalizedField'45'ls_40927 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.es
d_es_2488 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_40943 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_es_2488 ~v0 ~v1 v2 = du_es_2488 v2
du_es_2488 ::
  T_GeneralizeTel_40943 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_es_2488 v0
  = coe
      MAlonzo.Code.Ledger.Ratify.d_es_2002
      (coe d_'46'generalizedField'45'fut_40929 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.removed
d_removed_2490 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_40943 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2490 ~v0 ~v1 v2 = du_removed_2490 v2
du_removed_2490 ::
  T_GeneralizeTel_40943 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_2490 v0
  = coe
      MAlonzo.Code.Ledger.Ratify.d_removed_2004
      (coe d_'46'generalizedField'45'fut_40929 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.ccHotKeys
d_ccHotKeys_2550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_40943 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2550 ~v0 ~v1 v2 = du_ccHotKeys_2550 v2
du_ccHotKeys_2550 ::
  T_GeneralizeTel_40943 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1072
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1090
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1962
            (coe d_'46'generalizedField'45'ls_40927 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._.dreps
d_dreps_2554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_40943 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2554 ~v0 ~v1 v2 = du_dreps_2554 v2
du_dreps_2554 ::
  T_GeneralizeTel_40943 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1070
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1090
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1962
            (coe d_'46'generalizedField'45'ls_40927 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2558 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2558
  = C_NEWEPOCH'45'New_2562 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_2564 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_2566 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch..generalizedField-lstate
d_'46'generalizedField'45'lstate_28061 ::
  T_GeneralizeTel_28071 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1950
d_'46'generalizedField'45'lstate_28061 v0
  = case coe v0 of
      C_mkGeneralizeTel_28073 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-mark
d_'46'generalizedField'45'mark_28063 ::
  T_GeneralizeTel_28071 -> T_Snapshot_2194
d_'46'generalizedField'45'mark_28063 v0
  = case coe v0 of
      C_mkGeneralizeTel_28073 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-set
d_'46'generalizedField'45'set_28065 ::
  T_GeneralizeTel_28071 -> T_Snapshot_2194
d_'46'generalizedField'45'set_28065 v0
  = case coe v0 of
      C_mkGeneralizeTel_28073 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-go
d_'46'generalizedField'45'go_28067 ::
  T_GeneralizeTel_28071 -> T_Snapshot_2194
d_'46'generalizedField'45'go_28067 v0
  = case coe v0 of
      C_mkGeneralizeTel_28073 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_28069 ::
  T_GeneralizeTel_28071 -> Integer
d_'46'generalizedField'45'feeSS_28069 v0
  = case coe v0 of
      C_mkGeneralizeTel_28073 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.GeneralizeTel
d_GeneralizeTel_28071 a0 a1 = ()
data T_GeneralizeTel_28071
  = C_mkGeneralizeTel_28073 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1950
                            T_Snapshot_2194 T_Snapshot_2194 T_Snapshot_2194 Integer
-- Ledger.Conway.Conformance.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_40927 ::
  T_GeneralizeTel_40943 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1950
d_'46'generalizedField'45'ls_40927 v0
  = case coe v0 of
      C_mkGeneralizeTel_40945 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_40929 ::
  T_GeneralizeTel_40943 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994
d_'46'generalizedField'45'fut_40929 v0
  = case coe v0 of
      C_mkGeneralizeTel_40945 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-e
d_'46'generalizedField'45'e_40931 ::
  T_GeneralizeTel_40943 -> AgdaAny
d_'46'generalizedField'45'e_40931 v0
  = case coe v0 of
      C_mkGeneralizeTel_40945 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_40933 ::
  T_GeneralizeTel_40943 -> MAlonzo.Code.Ledger.PParams.T_Acnt_144
d_'46'generalizedField'45'acnt_40933 v0
  = case coe v0 of
      C_mkGeneralizeTel_40945 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_40935 ::
  T_GeneralizeTel_40943 -> T_Snapshots_2204
d_'46'generalizedField'45'ss''_40935 v0
  = case coe v0 of
      C_mkGeneralizeTel_40945 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_40937 ::
  T_GeneralizeTel_40943 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994
d_'46'generalizedField'45'fut''_40937 v0
  = case coe v0 of
      C_mkGeneralizeTel_40945 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_40939 ::
  T_GeneralizeTel_40943 -> T_Snapshots_2204
d_'46'generalizedField'45'ss_40939 v0
  = case coe v0 of
      C_mkGeneralizeTel_40945 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_40941 ::
  T_GeneralizeTel_40943 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_'46'generalizedField'45'es'8320'_40941 v0
  = case coe v0 of
      C_mkGeneralizeTel_40945 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.GeneralizeTel
d_GeneralizeTel_40943 a0 a1 = ()
data T_GeneralizeTel_40943
  = C_mkGeneralizeTel_40945 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1950
                            MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_Acnt_144 T_Snapshots_2204
                            MAlonzo.Code.Ledger.Ratify.T_RatifyState_1994 T_Snapshots_2204
                            MAlonzo.Code.Ledger.Enact.T_EnactState_826
