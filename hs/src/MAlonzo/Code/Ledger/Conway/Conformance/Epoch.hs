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
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Enact
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Utxo
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances

-- _.Acnt
d_Acnt_28 a0 = ()
-- _.Credential
d_Credential_48 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_84 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_84 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0)))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_112 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1264
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0)))
-- _.Epoch
d_Epoch_150 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_Epoch_150 = erased
-- _.THash
d_THash_256 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_THash_256 = erased
-- _.Number-Epoch
d_Number'45'Epoch_286 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Number'45'Epoch_254
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1598
         (coe v0))
-- _.RwdAddr
d_RwdAddr_340 a0 = ()
-- _.TxOut
d_TxOut_438 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_TxOut_438 = erased
-- _.UTxO
d_UTxO_444 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  ()
d_UTxO_444 = erased
-- _.VDeleg
d_VDeleg_452 a0 = ()
-- _.addEpoch
d_addEpoch_476 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addEpoch_248
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1598
         (coe v0))
-- _.Acnt.reserves
d_reserves_684 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146 -> Integer
d_reserves_684 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reserves_154 (coe v0)
-- _.Acnt.treasury
d_treasury_686 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146 -> Integer
d_treasury_686 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasury_152 (coe v0)
-- _.GovernanceActions.VDeleg
d_VDeleg_880 a0 = ()
-- _.RwdAddr.net
d_net_1324 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> AgdaAny
d_net_1324 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- _.RwdAddr.stake
d_stake_1326 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1326 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GovState
d_GovState_1664 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 -> ()
d_GovState_1664 = erased
-- Ledger.Conway.Conformance.Epoch._.EnactState
d_EnactState_1800 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.ccCreds
d_ccCreds_1812 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_ccCreds_1812 ~v0 ~v1 = du_ccCreds_1812
du_ccCreds_1812 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
du_ccCreds_1812
  = coe MAlonzo.Code.Ledger.Conway.Enact.du_ccCreds_968
-- Ledger.Conway.Conformance.Epoch._.EnactState.cc
d_cc_1844 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1844 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_cc_934 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.constitution
d_constitution_1846 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1846 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_constitution_936 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.pparams
d_pparams_1848 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1848 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_pparams_940 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.pv
d_pv_1850 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1850 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_pv_938 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.withdrawals
d_withdrawals_1852 ::
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1852 v0
  = coe MAlonzo.Code.Ledger.Conway.Enact.d_withdrawals_942 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.HasCast-LState
d_HasCast'45'LState_1866 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_1866 ~v0 ~v1 = du_HasCast'45'LState_1866
du_HasCast'45'LState_1866 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_1866
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.du_HasCast'45'LState_2246
-- Ledger.Conway.Conformance.Epoch._.LState
d_LState_1874 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.LState.certState
d_certState_1904 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1274
d_certState_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2242
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState.govSt
d_govSt_1906 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2240 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState.utxoSt
d_utxoSt_1908 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
d_utxoSt_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2238
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._._⊢_⇀⦇_,RATIFIES⦈_
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__1914 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyEnv_2252 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2282 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2282 -> ()
d__'8866'_'8640''10631'_'44'RATIFIES'10632'__1914 = erased
-- Ledger.Conway.Conformance.Epoch._.HasCast-RatifyState
d_HasCast'45'RatifyState_1920 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RatifyState_1920 ~v0 ~v1
  = du_HasCast'45'RatifyState_1920
du_HasCast'45'RatifyState_1920 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RatifyState_1920
  = coe
      MAlonzo.Code.Ledger.Conway.Ratify.du_HasCast'45'RatifyState_2334
-- Ledger.Conway.Conformance.Epoch._.RatifyState
d_RatifyState_1942 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.StakeDistrs
d_StakeDistrs_1946 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.RatifyState.delay
d_delay_2024 ::
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2282 -> Bool
d_delay_2024 v0
  = coe MAlonzo.Code.Ledger.Conway.Ratify.d_delay_2294 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RatifyState.es
d_es_2026 ::
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2282 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922
d_es_2026 v0
  = coe MAlonzo.Code.Ledger.Conway.Ratify.d_es_2290 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RatifyState.removed
d_removed_2028 ::
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2282 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2028 v0
  = coe MAlonzo.Code.Ledger.Conway.Ratify.d_removed_2292 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_2032 ::
  MAlonzo.Code.Ledger.Conway.Ratify.T_StakeDistrs_2246 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_2032 v0
  = coe MAlonzo.Code.Ledger.Conway.Ratify.d_stakeDistr_2250 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.HasCast-UTxOState
d_HasCast'45'UTxOState_2040 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'UTxOState_2040 ~v0 ~v1 = du_HasCast'45'UTxOState_2040
du_HasCast'45'UTxOState_2040 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'UTxOState_2040
  = coe MAlonzo.Code.Ledger.Conway.Utxo.du_HasCast'45'UTxOState_2334
-- Ledger.Conway.Conformance.Epoch._.UTxOState
d_UTxOState_2056 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.UTxOState.deposits
d_deposits_2098 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2098 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2304 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.UTxOState.donations
d_donations_2100 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 -> Integer
d_donations_2100 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2306 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.UTxOState.fees
d_fees_2102 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 -> Integer
d_fees_2102 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2302 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.UTxOState.utxo
d_utxo_2104 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2104 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.CertState
d_CertState_2138 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.DState
d_DState_2164 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2168 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2168 v0 ~v1
  = du_DecEq'45'DepositPurpose_2168 v0
du_DecEq'45'DepositPurpose_2168 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2168 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2456
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_978
         (coe v1))
-- Ledger.Conway.Conformance.Epoch._.DepositPurpose
d_DepositPurpose_2172 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.Deposits
d_Deposits_2174 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 -> ()
d_Deposits_2174 = erased
-- Ledger.Conway.Conformance.Epoch._.GState
d_GState_2190 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.HasCast-GState
d_HasCast'45'GState_2206 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_2206 ~v0 ~v1 = du_HasCast'45'GState_2206
du_HasCast'45'GState_2206 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GState_2206
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_HasCast'45'GState_1292
-- Ledger.Conway.Conformance.Epoch._.HasCast-PState
d_HasCast'45'PState_2208 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_2208 ~v0 ~v1 = du_HasCast'45'PState_2208
du_HasCast'45'PState_2208 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'PState_2208
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'PState_1270
-- Ledger.Conway.Conformance.Epoch._.PState
d_PState_2256 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.CertState.dState
d_dState_2358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1274 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1238
d_dState_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1282 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.CertState.gState
d_gState_2360 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1274 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1258
d_gState_2360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1286 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.CertState.pState
d_pState_2362 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1274 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1136
d_pState_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1284 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.deposits
d_deposits_2384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1254
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.rewards
d_rewards_2386 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1252
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.stakeDelegs
d_stakeDelegs_2388 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1250
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.voteDelegs
d_voteDelegs_2390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1248
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GState.ccHotKeys
d_ccHotKeys_2412 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1268
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GState.deposits
d_deposits_2414 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1270
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GState.dreps
d_dreps_2416 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1266 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.PState.pools
d_pools_2456 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1136 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2456 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pools_1142 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.PState.retiring
d_retiring_2458 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1136 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2458 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_retiring_1144 (coe v0)
-- Ledger.Conway.Conformance.Epoch.RewardUpdate
d_RewardUpdate_2472 a0 a1 = ()
data T_RewardUpdate_2472
  = C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2490 Integer Integer
                                                     Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δt
d_Δt_2482 :: T_RewardUpdate_2472 -> Integer
d_Δt_2482 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2490 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δr
d_Δr_2484 :: T_RewardUpdate_2472 -> Integer
d_Δr_2484 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2490 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δf
d_Δf_2486 :: T_RewardUpdate_2472 -> Integer
d_Δf_2486 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2490 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.rs
d_rs_2488 ::
  T_RewardUpdate_2472 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2488 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2490 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshot
d_Snapshot_2492 a0 a1 = ()
data T_Snapshot_2492
  = C_Snapshot'46'constructor_6557 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch.Snapshot.stake
d_stake_2498 ::
  T_Snapshot_2492 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2498 v0
  = case coe v0 of
      C_Snapshot'46'constructor_6557 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshot.delegations
d_delegations_2500 ::
  T_Snapshot_2492 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2500 v0
  = case coe v0 of
      C_Snapshot'46'constructor_6557 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots
d_Snapshots_2502 a0 a1 = ()
data T_Snapshots_2502
  = C_Snapshots'46'constructor_6641 T_Snapshot_2492 T_Snapshot_2492
                                    T_Snapshot_2492 Integer
-- Ledger.Conway.Conformance.Epoch.Snapshots.mark
d_mark_2512 :: T_Snapshots_2502 -> T_Snapshot_2492
d_mark_2512 v0
  = case coe v0 of
      C_Snapshots'46'constructor_6641 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.set
d_set_2514 :: T_Snapshots_2502 -> T_Snapshot_2492
d_set_2514 v0
  = case coe v0 of
      C_Snapshots'46'constructor_6641 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.go
d_go_2516 :: T_Snapshots_2502 -> T_Snapshot_2492
d_go_2516 v0
  = case coe v0 of
      C_Snapshots'46'constructor_6641 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.feeSS
d_feeSS_2518 :: T_Snapshots_2502 -> Integer
d_feeSS_2518 v0
  = case coe v0 of
      C_Snapshots'46'constructor_6641 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState
d_EpochState_2520 a0 a1 = ()
data T_EpochState_2520
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2542 MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146
                                                       T_Snapshots_2502
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230
                                                       MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922
                                                       MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2282
-- Ledger.Conway.Conformance.Epoch.EpochState.acnt
d_acnt_2532 ::
  T_EpochState_2520 -> MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146
d_acnt_2532 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2542 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.ss
d_ss_2534 :: T_EpochState_2520 -> T_Snapshots_2502
d_ss_2534 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2542 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.ls
d_ls_2536 ::
  T_EpochState_2520 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230
d_ls_2536 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2542 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.es
d_es_2538 ::
  T_EpochState_2520 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922
d_es_2538 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2542 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.fut
d_fut_2540 ::
  T_EpochState_2520 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2282
d_fut_2540 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2542 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState
d_NewEpochState_2544 a0 a1 = ()
data T_NewEpochState_2544
  = C_NewEpochState'46'constructor_6999 AgdaAny T_EpochState_2520
                                        (Maybe T_RewardUpdate_2472)
-- Ledger.Conway.Conformance.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2552 :: T_NewEpochState_2544 -> AgdaAny
d_lastEpoch_2552 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_6999 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.epochState
d_epochState_2554 :: T_NewEpochState_2544 -> T_EpochState_2520
d_epochState_2554 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_6999 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.ru
d_ru_2556 :: T_NewEpochState_2544 -> Maybe T_RewardUpdate_2472
d_ru_2556 v0
  = case coe v0 of
      C_NewEpochState'46'constructor_6999 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.HasCast-RewardUpdate
d_HasCast'45'RewardUpdate_2558 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'RewardUpdate_2558 ~v0 ~v1
  = du_HasCast'45'RewardUpdate_2558
du_HasCast'45'RewardUpdate_2558 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'RewardUpdate_2558
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                 (2472 :: Integer) (11290226015743492707 :: Integer)
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
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                    (2472 :: Integer) (11290226015743492707 :: Integer)
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
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                       (2472 :: Integer) (11290226015743492707 :: Integer)
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
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                          (2472 :: Integer) (11290226015743492707 :: Integer)
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
         (coe C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2490))
-- Ledger.Conway.Conformance.Epoch.HasCast-Snapshot
d_HasCast'45'Snapshot_2560 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2560 ~v0 ~v1 = du_HasCast'45'Snapshot_2560
du_HasCast'45'Snapshot_2560 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2560
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                 (2492 :: Integer) (11290226015743492707 :: Integer)
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
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                    (2492 :: Integer) (11290226015743492707 :: Integer)
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
                                                (256 :: Integer) (11290226015743492707 :: Integer)
                                                "_.THash"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
         (coe C_Snapshot'46'constructor_6557))
-- Ledger.Conway.Conformance.Epoch.HasCast-Snapshots
d_HasCast'45'Snapshots_2562 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2562 ~v0 ~v1 = du_HasCast'45'Snapshots_2562
du_HasCast'45'Snapshots_2562 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2562
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                 (2502 :: Integer) (11290226015743492707 :: Integer)
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
                                 (2492 :: Integer) (11290226015743492707 :: Integer)
                                 "Ledger.Conway.Conformance.Epoch.Snapshot"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                    (2502 :: Integer) (11290226015743492707 :: Integer)
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
                                    (2492 :: Integer) (11290226015743492707 :: Integer)
                                    "Ledger.Conway.Conformance.Epoch.Snapshot"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                       (2502 :: Integer) (11290226015743492707 :: Integer)
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
                                       (2492 :: Integer) (11290226015743492707 :: Integer)
                                       "Ledger.Conway.Conformance.Epoch.Snapshot"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                          (2502 :: Integer) (11290226015743492707 :: Integer)
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
         (coe C_Snapshots'46'constructor_6641))
-- Ledger.Conway.Conformance.Epoch.HasCast-EpochState
d_HasCast'45'EpochState_2564 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'EpochState_2564 ~v0 ~v1
  = du_HasCast'45'EpochState_2564
du_HasCast'45'EpochState_2564 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'EpochState_2564
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                 (2520 :: Integer) (11290226015743492707 :: Integer)
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
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                    (2520 :: Integer) (11290226015743492707 :: Integer)
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
                                    (2502 :: Integer) (11290226015743492707 :: Integer)
                                    "Ledger.Conway.Conformance.Epoch.Snapshots"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                       (2520 :: Integer) (11290226015743492707 :: Integer)
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
                                       (1874 :: Integer) (11290226015743492707 :: Integer)
                                       "Ledger.Conway.Conformance.Epoch._.LState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                          (2520 :: Integer) (11290226015743492707 :: Integer)
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
                                          (1800 :: Integer) (11290226015743492707 :: Integer)
                                          "Ledger.Conway.Conformance.Epoch._.EnactState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                             (2520 :: Integer) (11290226015743492707 :: Integer)
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
                                             (1942 :: Integer) (11290226015743492707 :: Integer)
                                             "Ledger.Conway.Conformance.Epoch._.RatifyState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
         (coe C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2542))
-- Ledger.Conway.Conformance.Epoch.HasCast-NewEpochState
d_HasCast'45'NewEpochState_2566 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'NewEpochState_2566 ~v0 ~v1
  = du_HasCast'45'NewEpochState_2566
du_HasCast'45'NewEpochState_2566 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'NewEpochState_2566
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                 (2544 :: Integer) (11290226015743492707 :: Integer)
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
                                 (150 :: Integer) (11290226015743492707 :: Integer) "_.Epoch"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                    (2544 :: Integer) (11290226015743492707 :: Integer)
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
                                    (2520 :: Integer) (11290226015743492707 :: Integer)
                                    "Ledger.Conway.Conformance.Epoch.EpochState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                       (2544 :: Integer) (11290226015743492707 :: Integer)
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
                                                   (2472 :: Integer)
                                                   (11290226015743492707 :: Integer)
                                                   "Ledger.Conway.Conformance.Epoch.RewardUpdate"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_NewEpochState'46'constructor_6999))
-- Ledger.Conway.Conformance.Epoch.toRwdAddr
d_toRwdAddr_2572 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_toRwdAddr_2572 v0 ~v1 v2 = du_toRwdAddr_2572 v0 v2
du_toRwdAddr_2572 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
du_toRwdAddr_2572 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Address.C_RwdAddr'46'constructor_3453
      (coe
         MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1264
            (coe v0)))
      (coe v1)
-- Ledger.Conway.Conformance.Epoch.getStakeCred
d_getStakeCred_2576 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_getStakeCred_2576 ~v0 ~v1 v2 = du_getStakeCred_2576 v2
du_getStakeCred_2576 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
du_getStakeCred_2576 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    seq (coe v4)
                    (coe MAlonzo.Code.Ledger.Conway.Address.du_stakeCred_156 (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.applyRUpd
d_applyRUpd_2580 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_RewardUpdate_2472 -> T_EpochState_2520 -> T_EpochState_2520
d_applyRUpd_2580 v0 ~v1 v2 v3 = du_applyRUpd_2580 v0 v2 v3
du_applyRUpd_2580 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_RewardUpdate_2472 -> T_EpochState_2520 -> T_EpochState_2520
du_applyRUpd_2580 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2490 v3 v4 v5 v6
        -> case coe v2 of
             C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2542 v7 v8 v9 v10 v11
               -> case coe v7 of
                    MAlonzo.Code.Ledger.Conway.PParams.C_'10214'_'44'_'10215''7491'_156 v12 v13
                      -> case coe v9 of
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2244 v14 v15 v16
                             -> case coe v14 of
                                  MAlonzo.Code.Ledger.Conway.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2308 v17 v18 v19 v20
                                    -> case coe v16 of
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1288 v21 v22 v23
                                           -> case coe v21 of
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1256 v24 v25 v26 v27
                                                  -> coe
                                                       C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2542
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.PParams.C_'10214'_'44'_'10215''7491'_156
                                                          (coe
                                                             MAlonzo.Code.Prelude.d_posPart_58
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v12) (coe v3))
                                                                (coe
                                                                   du_unregRU''_2630 (coe v0)
                                                                   (coe v6) (coe v26))))
                                                          (coe
                                                             MAlonzo.Code.Prelude.d_posPart_58
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe v13) (coe v4))))
                                                       (coe v8)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2244
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2308
                                                             (coe v17)
                                                             (coe
                                                                MAlonzo.Code.Prelude.d_posPart_58
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v18) (coe v5)))
                                                             (coe v19) (coe v20))
                                                          (coe v15)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1288
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1256
                                                                (coe v24) (coe v25)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                   (coe
                                                                      MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                                                                      (coe
                                                                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                                                            (coe v0))))
                                                                   v26
                                                                   (coe
                                                                      du_regRU_2626 (coe v0)
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
d_regRU_2626 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  T_Snapshots_2502 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1136 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1258 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_2626 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 v16 ~v17 ~v18 ~v19 ~v20 ~v21
  = du_regRU_2626 v0 v5 v16
du_regRU_2626 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_2626 v0 v1 v2
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
            MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2))
-- Ledger.Conway.Conformance.Epoch._.unregRU
d_unregRU_2628 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  T_Snapshots_2502 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1136 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1258 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_2628 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 v16 ~v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU_2628 v0 v5 v16
du_unregRU_2628 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_2628 v0 v1 v2
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
            MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2))
-- Ledger.Conway.Conformance.Epoch._.unregRU'
d_unregRU''_2630 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  T_Snapshots_2502 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1136 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1258 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2282 -> Integer
d_unregRU''_2630 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 v16 ~v17 ~v18 ~v19 ~v20 ~v21
  = du_unregRU''_2630 v0 v5 v16
du_unregRU''_2630 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_2630 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
      (coe (\ v3 -> v3)) (coe du_unregRU_2628 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Epoch.stakeDistr
d_stakeDistr_2634 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1238 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1136 -> T_Snapshot_2492
d_stakeDistr_2634 v0 ~v1 v2 v3 ~v4 = du_stakeDistr_2634 v0 v2 v3
du_stakeDistr_2634 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1238 ->
  T_Snapshot_2492
du_stakeDistr_2634 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1256 v3 v4 v5 v6
        -> coe
             MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_98
             (coe
                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
                (coe
                   MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
                   (coe
                      MAlonzo.Code.Data.List.Base.du_length_284
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                           (2492 :: Integer) (11290226015743492707 :: Integer)
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
                                                    (48 :: Integer)
                                                    (11290226015743492707 :: Integer) "_.Credential"
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
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                         (coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                            (coe
                               MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                              (2492 :: Integer) (11290226015743492707 :: Integer)
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
                                                       (48 :: Integer)
                                                       (11290226015743492707 :: Integer)
                                                       "_.Credential"
                                                       (MAlonzo.RTE.Fixity
                                                          MAlonzo.RTE.NonAssoc
                                                          MAlonzo.RTE.Unrelated)))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
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
                                                          (256 :: Integer)
                                                          (11290226015743492707 :: Integer)
                                                          "_.THash"
                                                          (MAlonzo.RTE.Fixity
                                                             MAlonzo.RTE.NonAssoc
                                                             MAlonzo.RTE.Unrelated)))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                   (coe C_Snapshot'46'constructor_6557)))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_504
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                   (coe
                      MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                      (coe
                         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                         (coe
                            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                            (coe
                               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                         (coe
                            MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1152
                      (coe du_stakeRelation_2654 (coe v0) (coe v1) (coe v5))))
                (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch._.m
d_m_2648 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1136 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_m_2648 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 ~v7 = du_m_2648 v0 v2 v5
du_m_2648 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_m_2648 v0 v1 v2
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
                 MAlonzo.Code.Ledger.Conway.Utxo.du_cbalance_2358 (coe v0)
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
                                     MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294
                                           (coe v0))))))
                            (coe du_getStakeCred_2576 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))))))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_548
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2)))
-- Ledger.Conway.Conformance.Epoch._.stakeRelation
d_stakeRelation_2654 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1136 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeRelation_2654 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 ~v7
  = du_stakeRelation_2654 v0 v2 v5
du_stakeRelation_2654 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeRelation_2654 v0 v1 v2
  = let v3
          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
         (coe du_m_2648 (coe v0) (coe v1) (coe v2))
         (coe
            MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_116
            (coe
               MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
            v2))
-- Ledger.Conway.Conformance.Epoch.gaDepositStake
d_gaDepositStake_2656 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gaDepositStake_2656 v0 ~v1 v2 v3
  = du_gaDepositStake_2656 v0 v2 v3
du_gaDepositStake_2656 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gaDepositStake_2656 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1218
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1248
               (coe v0))
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe
            MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
            (coe
               MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1264
                  (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_398
         (MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
              (coe
                 MAlonzo.Code.Ledger.Conway.Address.d_stake_104
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_govSt''_2666 (coe v1)))
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
                    MAlonzo.Code.Ledger.Conway.Certs.C_GovActionDeposit_916
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased
                       (let v4
                              = MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2456
                                  (coe v0) in
                        coe
                          (MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_978
                             (coe v4))))
                    (coe
                       MAlonzo.Code.Ledger.Conway.Certs.C_GovActionDeposit_916
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v4
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v2)))))))
         (coe du_govSt''_2666 (coe v1)))
-- Ledger.Conway.Conformance.Epoch._.govSt'
d_govSt''_2666 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2666 ~v0 ~v1 v2 ~v3 = du_govSt''_2666 v2
du_govSt''_2666 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2666 v0
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
                  MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_874
                    (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Conformance.Epoch.mkStakeDistrs
d_mkStakeDistrs_2678 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_Snapshot_2492 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_StakeDistrs_2246
d_mkStakeDistrs_2678 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_2678 v0 v2 v3 v4 v5
du_mkStakeDistrs_2678 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  T_Snapshot_2492 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_StakeDistrs_2246
du_mkStakeDistrs_2678 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Ratify.C_StakeDistrs'46'constructor_15595
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1218
         (coe
            MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_888
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2456
               (coe v0)))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710))
         (coe
            MAlonzo.Code.Ledger.Prelude.du_'8739'_'8739'_116
            (coe
               MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Instances.du_HasCast'45'A'8640'B'45'RelAB_12)
            v4)
         (coe
            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3360))
            (coe
               MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
                  (coe
                     MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                     (coe
                        MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1294 (coe v0))))
            (d_stake_2498 (coe v1))
            (coe du_gaDepositStake_2656 (coe v0) (coe v2) (coe v3))))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2732 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2732 = C_SNAP_2762
-- Ledger.Conway.Conformance.Epoch._.certState
d_certState_2736 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30089 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1274
d_certState_2736 ~v0 ~v1 v2 = du_certState_2736 v2
du_certState_2736 ::
  T_GeneralizeTel_30089 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1274
du_certState_2736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2242
      (coe d_'46'generalizedField'45'lstate_30079 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.utxoSt
d_utxoSt_2740 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30089 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
d_utxoSt_2740 ~v0 ~v1 v2 = du_utxoSt_2740 v2
du_utxoSt_2740 ::
  T_GeneralizeTel_30089 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
du_utxoSt_2740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2238
      (coe d_'46'generalizedField'45'lstate_30079 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.fees
d_fees_2748 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30089 -> Integer
d_fees_2748 ~v0 ~v1 v2 = du_fees_2748 v2
du_fees_2748 :: T_GeneralizeTel_30089 -> Integer
du_fees_2748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2302
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2238
         (coe d_'46'generalizedField'45'lstate_30079 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.utxo
d_utxo_2750 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30089 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2750 ~v0 ~v1 v2 = du_utxo_2750 v2
du_utxo_2750 ::
  T_GeneralizeTel_30089 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2300
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2238
         (coe d_'46'generalizedField'45'lstate_30079 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.dState
d_dState_2754 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30089 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1238
d_dState_2754 ~v0 ~v1 v2 = du_dState_2754 v2
du_dState_2754 ::
  T_GeneralizeTel_30089 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1238
du_dState_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1282
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2242
         (coe d_'46'generalizedField'45'lstate_30079 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.pState
d_pState_2758 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_30089 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1136
d_pState_2758 ~v0 ~v1 v2 = du_pState_2758 v2
du_pState_2758 ::
  T_GeneralizeTel_30089 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1136
du_pState_2758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1284
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2242
         (coe d_'46'generalizedField'45'lstate_30079 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2764 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__2764
  = C_EPOCH_2854 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38
                 T__'8866'_'8640''10631'_'44'SNAP'10632'__2732
-- Ledger.Conway.Conformance.Epoch._.certState
d_certState_2768 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1274
d_certState_2768 ~v0 ~v1 v2 = du_certState_2768 v2
du_certState_2768 ::
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1274
du_certState_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2242
      (coe d_'46'generalizedField'45'ls_43047 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.govSt
d_govSt_2770 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43063 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2770 ~v0 ~v1 v2 = du_govSt_2770 v2
du_govSt_2770 ::
  T_GeneralizeTel_43063 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2240
      (coe d_'46'generalizedField'45'ls_43047 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.utxoSt
d_utxoSt_2772 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
d_utxoSt_2772 ~v0 ~v1 v2 = du_utxoSt_2772 v2
du_utxoSt_2772 ::
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2290
du_utxoSt_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2238
      (coe d_'46'generalizedField'45'ls_43047 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.dState
d_dState_2776 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1238
d_dState_2776 ~v0 ~v1 v2 = du_dState_2776 v2
du_dState_2776 ::
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1238
du_dState_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1282
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2242
         (coe d_'46'generalizedField'45'ls_43047 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.gState
d_gState_2778 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1258
d_gState_2778 ~v0 ~v1 v2 = du_gState_2778 v2
du_gState_2778 ::
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1258
du_gState_2778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1286
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2242
         (coe d_'46'generalizedField'45'ls_43047 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.pState
d_pState_2780 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1136
d_pState_2780 ~v0 ~v1 v2 = du_pState_2780 v2
du_pState_2780 ::
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1136
du_pState_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1284
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2242
         (coe d_'46'generalizedField'45'ls_43047 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.es
d_es_2786 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922
d_es_2786 ~v0 ~v1 v2 = du_es_2786 v2
du_es_2786 ::
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922
du_es_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ratify.d_es_2290
      (coe d_'46'generalizedField'45'fut_43049 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.removed
d_removed_2788 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43063 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2788 ~v0 ~v1 v2 = du_removed_2788 v2
du_removed_2788 ::
  T_GeneralizeTel_43063 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ratify.d_removed_2292
      (coe d_'46'generalizedField'45'fut_43049 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.ccHotKeys
d_ccHotKeys_2848 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43063 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2848 ~v0 ~v1 v2 = du_ccHotKeys_2848 v2
du_ccHotKeys_2848 ::
  T_GeneralizeTel_43063 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1268
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1286
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2242
            (coe d_'46'generalizedField'45'ls_43047 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._.dreps
d_dreps_2852 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1986 ->
  T_GeneralizeTel_43063 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2852 ~v0 ~v1 v2 = du_dreps_2852 v2
du_dreps_2852 ::
  T_GeneralizeTel_43063 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1266
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1286
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2242
            (coe d_'46'generalizedField'45'ls_43047 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2856 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2856
  = C_NEWEPOCH'45'New_2860 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_2862 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_2864 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch..generalizedField-lstate
d_'46'generalizedField'45'lstate_30079 ::
  T_GeneralizeTel_30089 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230
d_'46'generalizedField'45'lstate_30079 v0
  = case coe v0 of
      C_mkGeneralizeTel_30091 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-mark
d_'46'generalizedField'45'mark_30081 ::
  T_GeneralizeTel_30089 -> T_Snapshot_2492
d_'46'generalizedField'45'mark_30081 v0
  = case coe v0 of
      C_mkGeneralizeTel_30091 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-set
d_'46'generalizedField'45'set_30083 ::
  T_GeneralizeTel_30089 -> T_Snapshot_2492
d_'46'generalizedField'45'set_30083 v0
  = case coe v0 of
      C_mkGeneralizeTel_30091 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-go
d_'46'generalizedField'45'go_30085 ::
  T_GeneralizeTel_30089 -> T_Snapshot_2492
d_'46'generalizedField'45'go_30085 v0
  = case coe v0 of
      C_mkGeneralizeTel_30091 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_30087 ::
  T_GeneralizeTel_30089 -> Integer
d_'46'generalizedField'45'feeSS_30087 v0
  = case coe v0 of
      C_mkGeneralizeTel_30091 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.GeneralizeTel
d_GeneralizeTel_30089 a0 a1 = ()
data T_GeneralizeTel_30089
  = C_mkGeneralizeTel_30091 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230
                            T_Snapshot_2492 T_Snapshot_2492 T_Snapshot_2492 Integer
-- Ledger.Conway.Conformance.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_43047 ::
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230
d_'46'generalizedField'45'ls_43047 v0
  = case coe v0 of
      C_mkGeneralizeTel_43065 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_43049 ::
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2282
d_'46'generalizedField'45'fut_43049 v0
  = case coe v0 of
      C_mkGeneralizeTel_43065 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-e
d_'46'generalizedField'45'e_43051 ::
  T_GeneralizeTel_43063 -> AgdaAny
d_'46'generalizedField'45'e_43051 v0
  = case coe v0 of
      C_mkGeneralizeTel_43065 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_43053 ::
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146
d_'46'generalizedField'45'acnt_43053 v0
  = case coe v0 of
      C_mkGeneralizeTel_43065 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_43055 ::
  T_GeneralizeTel_43063 -> T_Snapshots_2502
d_'46'generalizedField'45'ss''_43055 v0
  = case coe v0 of
      C_mkGeneralizeTel_43065 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_43057 ::
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2282
d_'46'generalizedField'45'fut''_43057 v0
  = case coe v0 of
      C_mkGeneralizeTel_43065 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_43059 ::
  T_GeneralizeTel_43063 -> T_Snapshots_2502
d_'46'generalizedField'45'ss_43059 v0
  = case coe v0 of
      C_mkGeneralizeTel_43065 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_43061 ::
  T_GeneralizeTel_43063 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922
d_'46'generalizedField'45'es'8320'_43061 v0
  = case coe v0 of
      C_mkGeneralizeTel_43065 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.GeneralizeTel
d_GeneralizeTel_43063 a0 a1 = ()
data T_GeneralizeTel_43063
  = C_mkGeneralizeTel_43065 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2230
                            MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2282 AgdaAny
                            MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146 T_Snapshots_2502
                            MAlonzo.Code.Ledger.Conway.Ratify.T_RatifyState_2282
                            T_Snapshots_2502 MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_922
