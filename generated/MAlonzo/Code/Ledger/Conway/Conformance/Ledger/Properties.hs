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

module MAlonzo.Code.Ledger.Conway.Conformance.Ledger.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxo
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.Tx
d_Tx_370 a0 = ()
-- _.Tx.body
d_body_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2570
d_body_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2682 (coe v0)
-- _.Tx.isValid
d_isValid_1404 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2672 -> Bool
d_isValid_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2686 (coe v0)
-- _.Tx.txAD
d_txAD_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 -> Maybe AgdaAny
d_txAD_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2688 (coe v0)
-- _.Tx.wits
d_wits_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2652
d_wits_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2684 (coe v0)
-- _.CertEnv
d_CertEnv_1526 a0 = ()
-- _.CertState
d_CertState_1528 a0 = ()
-- _.CertEnv.epoch
d_epoch_1666 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_890 -> AgdaAny
d_epoch_1666 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_900 (coe v0)
-- _.CertEnv.pp
d_pp_1668 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_890 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_1668 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_902 (coe v0)
-- _.CertEnv.votes
d_votes_1670 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_890 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_votes_1670 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_904 (coe v0)
-- _.CertEnv.wdrls
d_wdrls_1672 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1672 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_906 (coe v0)
-- _.CertState.dState
d_dState_1676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1058
d_dState_1676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1102 (coe v0)
-- _.CertState.gState
d_gState_1678 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1078
d_gState_1678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1106 (coe v0)
-- _.CertState.pState
d_pState_1680 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  MAlonzo.Code.Ledger.Certs.T_PState_926
d_pState_1680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1104 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-CERT
d_Computational'45'CERT_2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_2152 v0 ~v1
  = du_Computational'45'CERT_2152 v0
du_Computational'45'CERT_2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'CERT_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1430
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-CERTBASE
d_Computational'45'CERTBASE_2154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_2154 v0 ~v1
  = du_Computational'45'CERTBASE_2154 v0
du_Computational'45'CERTBASE_2154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'CERTBASE_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTBASE_1820
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv
d_GovEnv_2186 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.certState
d_certState_2256 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094
d_certState_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_certState_1964
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.enactState
d_enactState_2258 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_1962
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.epoch
d_epoch_2260 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940 -> AgdaAny
d_epoch_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_1956 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.pparams
d_pparams_2262 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_1958 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.ppolicy
d_ppolicy_2264 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940 ->
  Maybe AgdaAny
d_ppolicy_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_1960 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.txid
d_txid_2266 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940 -> AgdaAny
d_txid_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_1954 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-GOV'
d_Computational'45'GOV''_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV''_2280 v0 ~v1
  = du_Computational'45'GOV''_2280 v0
du_Computational'45'GOV''_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'GOV''_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.Properties.d_Computational'45'GOV''_1362
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2460 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2672] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2460 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2292 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2294 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv
d_LEnv_2300 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LState
d_LState_2302 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.enactState
d_enactState_2322 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2322 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2172 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.pparams
d_pparams_2324 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2324 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2170 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.ppolicy
d_ppolicy_2326 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 -> Maybe AgdaAny
d_ppolicy_2326 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2168 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.slot
d_slot_2328 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 -> AgdaAny
d_slot_2328 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2166 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.treasury
d_treasury_2330 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 -> Integer
d_treasury_2330 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2174 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.certState
d_certState_2334 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2460 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094
d_certState_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2472
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.govSt
d_govSt_2336 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2460 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2470 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.utxoSt
d_utxoSt_2338 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2460 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948
d_utxoSt_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2468
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv
d_UTxOEnv_2472 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.pparams
d_pparams_2504 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2504 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1944 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.slot
d_slot_2506 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 -> AgdaAny
d_slot_2506 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1942 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.treasury
d_treasury_2508 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 -> Integer
d_treasury_2508 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_1946 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2532 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties.Computational-LEDGER
d_Computational'45'LEDGER_2802 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_2802 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2936 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Ledger.Properties._.computeUtxow
d_computeUtxow_2828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeUtxow_2828 ~v0 ~v1 ~v2 v3 = du_computeUtxow_2828 v3
du_computeUtxow_2828 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1948 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeUtxow_2828 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.computeCerts
d_computeCerts_2830 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_890 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeCerts_2830 ~v0 ~v1 ~v2 v3 = du_computeCerts_2830 v3
du_computeCerts_2830 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_890 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeCerts_2830 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.computeGov
d_computeGov_2832 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeGov_2832 ~v0 ~v1 ~v2 v3 = du_computeGov_2832 v3
du_computeGov_2832 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeGov_2832 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.utxoΓ
d_utxoΓ_2912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2460 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934
d_utxoΓ_2912 ~v0 ~v1 v2 ~v3 ~v4 = du_utxoΓ_2912 v2
du_utxoΓ_2912 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1934
du_utxoΓ_2912 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_8665
      (coe MAlonzo.Code.Ledger.Ledger.d_slot_2166 (coe v0))
      (coe MAlonzo.Code.Ledger.Ledger.d_pparams_2170 (coe v0))
      (coe MAlonzo.Code.Ledger.Ledger.d_treasury_2174 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.certΓ
d_certΓ_2928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2460 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_890
d_certΓ_2928 v0 ~v1 v2 ~v3 v4 = du_certΓ_2928 v0 v2 v4
du_certΓ_2928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_890
du_certΓ_2928 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580'_908
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
         (MAlonzo.Code.Ledger.Ledger.d_slot_2166 (coe v1)))
      (coe MAlonzo.Code.Ledger.Ledger.d_pparams_2170 (coe v1))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txvote_2628
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2682 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2626
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2682 (coe v2)))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.govΓ
d_govΓ_2930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2460 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940
d_govΓ_2930 v0 ~v1 v2 ~v3 v4 v5 = du_govΓ_2930 v0 v2 v4 v5
du_govΓ_2930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1094 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1940
du_govΓ_2930 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1966
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txid_2644
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2682 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
         (MAlonzo.Code.Ledger.Ledger.d_slot_2166 (coe v1)))
      (coe MAlonzo.Code.Ledger.Ledger.d_pparams_2170 (coe v1))
      (coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2168 (coe v1))
      (coe MAlonzo.Code.Ledger.Ledger.d_enactState_2172 (coe v1))
      (coe v3)
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.computeProof
d_computeProof_2936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2460 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2936 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3082
              (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2686 (coe v4))
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10) in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                         -> coe
                              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                              () erased () erased
                              (coe
                                 du_computeUtxow_2828
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_2026
                                    (coe v0) (coe v1))
                                 (coe du_utxoΓ_2912 (coe v2))
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2468
                                    (coe v3))
                                 v4)
                              (\ v9 ->
                                 case coe v9 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                     -> coe
                                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                          (coe
                                             MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                          () erased () erased
                                          (coe
                                             du_computeCerts_2830
                                             (coe
                                                MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'''_1138
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTBASE_1820
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1430
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
                                                (coe
                                                   MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730))
                                             (coe du_certΓ_2928 (coe v0) (coe v2) (coe v4))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2472
                                                (coe v3))
                                             (MAlonzo.Code.Ledger.Transaction.d_txcerts_2624
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2682
                                                   (coe v4))))
                                          (\ v12 ->
                                             case coe v12 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                 -> coe
                                                      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                                      (coe
                                                         MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                      () erased () erased
                                                      (coe
                                                         du_computeGov_2832
                                                         (coe
                                                            MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1100
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Gov.Properties.d_Computational'45'GOV''_1362
                                                               (coe v0))
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730))
                                                         (coe
                                                            du_govΓ_2930 (coe v0) (coe v2) (coe v4)
                                                            (coe v13))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.du__'124''7506'__2546
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2470
                                                               (coe v3))
                                                            (coe v13))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.du_txgov_2476
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_body_2682
                                                               (coe v4))))
                                                      (\ v15 ->
                                                         case coe v15 of
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                             -> coe
                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2474
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1966
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Utxo.d_utxo_1958
                                                                              (coe v10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Utxo.d_fees_1960
                                                                              (coe v10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateDeposits_2138
                                                                              (coe v0)
                                                                              (let v18
                                                                                     = coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_12141
                                                                                         (coe v3)
                                                                                         (coe v4)
                                                                                         (coe v2)
                                                                                         (coe v10)
                                                                                         (coe v13)
                                                                                         (coe
                                                                                            v16) in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Ledger.d_pparams_2170
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45'Γ_12131
                                                                                       (coe v18))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2682
                                                                                 (coe v4))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_1962
                                                                                 (coe v10)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Utxo.d_donations_1964
                                                                              (coe v10)))
                                                                        (coe v16) (coe v13))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_LEDGER'45'V_2650
                                                                        v10
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v8)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v11)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v14)
                                                                                 (coe v17))))))
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                   _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v7)
                       (coe
                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                          (coe
                             MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                          () erased () erased
                          (coe
                             du_computeUtxow_2828
                             (MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_2026
                                (coe v0) (coe v1))
                             (coe du_utxoΓ_2912 (coe v2))
                             (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2468
                                (coe v3))
                             v4)
                          (\ v8 ->
                             case coe v8 of
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                 -> coe
                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2474
                                            (coe v9)
                                            (let v11
                                                   = coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_12561
                                                       (coe v3) (coe v4) (coe v2) (coe v9) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2470
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45's_12551
                                                     (coe v11))))
                                            (let v11
                                                   = coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_12561
                                                       (coe v3) (coe v4) (coe v2) (coe v9) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2472
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45's_12551
                                                     (coe v11)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_LEDGER'45'I_2730
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                               (coe v10))))
                               _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.completeness
d_completeness_2970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2154 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2460 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2672 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2460 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__2568 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2970 = erased
-- Ledger.Conway.Conformance.Ledger.Properties.Computational-LEDGERS
d_Computational'45'LEDGERS_3140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1734 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGERS_3140 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
      (coe d_Computational'45'LEDGER_2802 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
