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
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
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
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Tx
d_Tx_358 a0 = ()
-- _.Tx.body
d_body_1374 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
d_body_1374 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0)
-- _.Tx.isValid
d_isValid_1376 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Bool
d_isValid_1376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v0)
-- _.Tx.txAD
d_txAD_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Maybe AgdaAny
d_txAD_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2634 (coe v0)
-- _.Tx.wits
d_wits_1380 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598
d_wits_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v0)
-- _.CertEnv
d_CertEnv_1498 a0 = ()
-- _.CertState
d_CertState_1500 a0 = ()
-- _.CertEnv.coldCreds
d_coldCreds_1642 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_coldCreds_1642 v0
  = coe MAlonzo.Code.Ledger.Certs.d_coldCreds_886 (coe v0)
-- _.CertEnv.epoch
d_epoch_1644 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_866 -> AgdaAny
d_epoch_1644 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_878 (coe v0)
-- _.CertEnv.pp
d_pp_1646 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_1646 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_880 (coe v0)
-- _.CertEnv.votes
d_votes_1648 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722]
d_votes_1648 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_882 (coe v0)
-- _.CertEnv.wdrls
d_wdrls_1650 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1650 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_884 (coe v0)
-- _.CertState.dState
d_dState_1654 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034
d_dState_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078 (coe v0)
-- _.CertState.gState
d_gState_1656 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1054
d_gState_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1082 (coe v0)
-- _.CertState.pState
d_pState_1658 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1080 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-CERT
d_Computational'45'CERT_2130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_2130 v0 ~v1
  = du_Computational'45'CERT_2130 v0
du_Computational'45'CERT_2130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'CERT_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1594
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-CERTBASE
d_Computational'45'CERTBASE_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_2132 v0 ~v1
  = du_Computational'45'CERTBASE_2132 v0
du_Computational'45'CERTBASE_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'CERTBASE_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTBASE_2028
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2326 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv
d_GovEnv_2154 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.certState
d_certState_2170 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2040 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070
d_certState_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_certState_2066
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.enactState
d_enactState_2172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2040 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_2064
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.epoch
d_epoch_2174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2040 -> AgdaAny
d_epoch_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_2058 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.pparams
d_pparams_2176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2040 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_2060 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.ppolicy
d_ppolicy_2178 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2040 ->
  Maybe AgdaAny
d_ppolicy_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_2062 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.rewardCreds
d_rewardCreds_2180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2040 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_rewardCreds_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_rewardCreds_2068
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.txid
d_txid_2182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2040 -> AgdaAny
d_txid_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_2056 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-GOV'
d_Computational'45'GOV''_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV''_2188 v0 ~v1
  = du_Computational'45'GOV''_2188 v0
du_Computational'45'GOV''_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'GOV''_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.Properties.d_Computational'45'GOV''_1284
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2182 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2618] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2182 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2196 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2198 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv
d_LEnv_2204 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LState
d_LState_2206 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.enactState
d_enactState_2228 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2228 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2160 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.pparams
d_pparams_2230 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2230 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2158 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.ppolicy
d_ppolicy_2232 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 -> Maybe AgdaAny
d_ppolicy_2232 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2156 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.slot
d_slot_2234 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 -> AgdaAny
d_slot_2234 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2154 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.treasury
d_treasury_2236 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 -> Integer
d_treasury_2236 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2162 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.certState
d_certState_2240 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2182 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070
d_certState_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2194
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.govSt
d_govSt_2242 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2182 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2192 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.utxoSt
d_utxoSt_2244 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2182 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
d_utxoSt_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2190
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv
d_UTxOEnv_2378 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.pparams
d_pparams_2396 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2396 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2010 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.slot
d_slot_2398 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 -> AgdaAny
d_slot_2398 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_2008 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.treasury
d_treasury_2400 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 -> Integer
d_treasury_2400 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_2012 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2424 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties.Computational-LEDGER
d_Computational'45'LEDGER_2698 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_2698 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2832 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Ledger.Properties._.computeUtxow
d_computeUtxow_2724 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeUtxow_2724 ~v0 ~v1 ~v2 v3 = du_computeUtxow_2724 v3
du_computeUtxow_2724 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeUtxow_2724 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.computeCerts
d_computeCerts_2726 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeCerts_2726 ~v0 ~v1 ~v2 v3 = du_computeCerts_2726 v3
du_computeCerts_2726 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeCerts_2726 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.computeGov
d_computeGov_2728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2040 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeGov_2728 ~v0 ~v1 ~v2 v3 = du_computeGov_2728 v3
du_computeGov_2728 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2040 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeGov_2728 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.utxoΓ
d_utxoΓ_2808 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2182 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000
d_utxoΓ_2808 ~v0 ~v1 v2 ~v3 ~v4 = du_utxoΓ_2808 v2
du_utxoΓ_2808 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2000
du_utxoΓ_2808 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_16321
      (coe MAlonzo.Code.Ledger.Ledger.d_slot_2154 (coe v0))
      (coe MAlonzo.Code.Ledger.Ledger.d_pparams_2158 (coe v0))
      (coe MAlonzo.Code.Ledger.Ledger.d_treasury_2162 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.certΓ
d_certΓ_2824 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2182 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866
d_certΓ_2824 v0 ~v1 v2 v3 v4 = du_certΓ_2824 v0 v2 v3 v4
du_certΓ_2824 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2182 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866
du_certΓ_2824 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'44'_'10215''7580'_888
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v0))
         (MAlonzo.Code.Ledger.Ledger.d_slot_2154 (coe v1)))
      (coe MAlonzo.Code.Ledger.Ledger.d_pparams_2158 (coe v1))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txvote_2574
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v3)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v3)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Axiom.Set.d_unions_196
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            erased
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Axiom.Set.d_listing_216
                  (MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  erased
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Enact.du_ccCreds_848
                        (coe
                           MAlonzo.Code.Ledger.Enact.d_cc_838
                           (coe MAlonzo.Code.Ledger.Ledger.d_enactState_2160 (coe v1))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe
                              MAlonzo.Code.Axiom.Set.d_unions_196
                              (MAlonzo.Code.Axiom.Set.d_th_1470
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              erased
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_replacement_208
                                    (MAlonzo.Code.Axiom.Set.d_th_1470
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    erased erased
                                    (\ v4 ->
                                       coe
                                         MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_798
                                         (coe
                                            MAlonzo.Code.Ledger.GovernanceActions.d_action_784
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_listing_216
                                          (MAlonzo.Code.Axiom.Set.d_th_1470
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased
                                          (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2192
                                             (coe v2))))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.govΓ
d_govΓ_2826 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2182 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2040
d_govΓ_2826 v0 ~v1 v2 v3 v4 v5 = du_govΓ_2826 v0 v2 v3 v4 v5
du_govΓ_2826 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2182 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2040
du_govΓ_2826 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.C_'10214'_'44'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_2070
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txid_2590
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v3)))
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v0))
         (MAlonzo.Code.Ledger.Ledger.d_slot_2154 (coe v1)))
      (coe MAlonzo.Code.Ledger.Ledger.d_pparams_2158 (coe v1))
      (coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2156 (coe v1))
      (coe MAlonzo.Code.Ledger.Ledger.d_enactState_2160 (coe v1))
      (coe v4)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Axiom.Set.d_replacement_208
            (MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            erased erased
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1048
                  (coe
                     MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
                     (coe
                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2194
                        (coe v2)))))))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.computeProof
d_computeProof_2832 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2182 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2832 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3082
              (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v4))
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
                                 du_computeUtxow_2724
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_1992
                                    (coe v0) (coe v1))
                                 (coe du_utxoΓ_2808 (coe v2))
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2190
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
                                             du_computeCerts_2726
                                             (coe
                                                MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'''_1138
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTBASE_2028
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2326
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1594
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2326
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
                                                (coe
                                                   MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730))
                                             (coe du_certΓ_2824 (coe v0) (coe v2) (coe v3) (coe v4))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2194
                                                (coe v3))
                                             (MAlonzo.Code.Ledger.Transaction.d_txcerts_2570
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2628
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
                                                         du_computeGov_2728
                                                         (coe
                                                            MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1100
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Gov.Properties.d_Computational'45'GOV''_1284
                                                               (coe v0))
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730))
                                                         (coe
                                                            du_govΓ_2826 (coe v0) (coe v2) (coe v3)
                                                            (coe v4) (coe v13))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.du__'124''7506'__2268
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2192
                                                               (coe v3))
                                                            (coe v13))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.du_txgov_2198
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                               (coe v4))))
                                                      (\ v15 ->
                                                         case coe v15 of
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                             -> coe
                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2196
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2032
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Utxo.d_utxo_2024
                                                                              (coe v10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Utxo.d_fees_2026
                                                                              (coe v10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2454
                                                                              (coe v0)
                                                                              (let v18
                                                                                     = coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_11027
                                                                                         (coe v3)
                                                                                         (coe v4)
                                                                                         (coe v2)
                                                                                         (coe v10)
                                                                                         (coe v13)
                                                                                         (coe
                                                                                            v16) in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Ledger.d_pparams_2158
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45'Γ_11017
                                                                                       (coe v18))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2628
                                                                                 (coe v4))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_2028
                                                                                 (coe v10)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Utxo.d_donations_2030
                                                                              (coe v10)))
                                                                        (coe v16) (coe v13))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_LEDGER'45'V_2390
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
                             du_computeUtxow_2724
                             (MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_1992
                                (coe v0) (coe v1))
                             (coe du_utxoΓ_2808 (coe v2))
                             (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2190
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
                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2196
                                            (coe v9)
                                            (let v11
                                                   = coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_11715
                                                       (coe v3) (coe v4) (coe v2) (coe v9) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2192
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45's_11705
                                                     (coe v11))))
                                            (let v11
                                                   = coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_11715
                                                       (coe v3) (coe v4) (coe v2) (coe v9) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2194
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45's_11705
                                                     (coe v11)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_LEDGER'45'I_2470
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                               (coe v10))))
                               _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.completeness
d_completeness_2866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2182 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2182 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__2290 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2866 = erased
-- Ledger.Conway.Conformance.Ledger.Properties.Computational-LEDGERS
d_Computational'45'LEDGERS_3036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGERS_3036 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
      (coe d_Computational'45'LEDGER_2698 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
