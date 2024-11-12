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
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.Tx
d_Tx_370 a0 = ()
-- _.Tx.body
d_body_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
d_body_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0)
-- _.Tx.isValid
d_isValid_1404 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Bool
d_isValid_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v0)
-- _.Tx.txAD
d_txAD_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Maybe AgdaAny
d_txAD_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2686 (coe v0)
-- _.Tx.wits
d_wits_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650
d_wits_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v0)
-- _.CertEnv
d_CertEnv_1526 a0 = ()
-- _.CertState
d_CertState_1528 a0 = ()
-- _.CertEnv.epoch
d_epoch_1662 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_888 -> AgdaAny
d_epoch_1662 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_898 (coe v0)
-- _.CertEnv.pp
d_pp_1664 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_1664 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_900 (coe v0)
-- _.CertEnv.votes
d_votes_1666 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_votes_1666 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_902 (coe v0)
-- _.CertEnv.wdrls
d_wdrls_1668 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1668 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_904 (coe v0)
-- _.CertState.dState
d_dState_1672 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050
d_dState_1672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094 (coe v0)
-- _.CertState.gState
d_gState_1674 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1070
d_gState_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1098 (coe v0)
-- _.CertState.pState
d_pState_1676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Certs.T_PState_924
d_pState_1676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1096 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-CERT
d_Computational'45'CERT_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_2146 v0 ~v1
  = du_Computational'45'CERT_2146 v0
du_Computational'45'CERT_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'CERT_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1424
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-CERTBASE
d_Computational'45'CERTBASE_2148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_2148 v0 ~v1
  = du_Computational'45'CERTBASE_2148 v0
du_Computational'45'CERTBASE_2148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'CERTBASE_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTBASE_1814
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv
d_GovEnv_2180 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.certState
d_certState_2250 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_certState_1958
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.enactState
d_enactState_2252 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_enactState_1956
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.epoch
d_epoch_2254 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934 -> AgdaAny
d_epoch_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_epoch_1950 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.pparams
d_pparams_2256 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_pparams_1952 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.ppolicy
d_ppolicy_2258 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934 ->
  Maybe AgdaAny
d_ppolicy_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_ppolicy_1954 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.txid
d_txid_2260 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934 -> AgdaAny
d_txid_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.d_txid_1948 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-GOV'
d_Computational'45'GOV''_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV''_2274 v0 ~v1
  = du_Computational'45'GOV''_2274 v0
du_Computational'45'GOV''_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'GOV''_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.Properties.d_Computational'45'GOV''_1362
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2670] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2286 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2288 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv
d_LEnv_2294 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LState
d_LState_2296 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.enactState
d_enactState_2316 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_852
d_enactState_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_enactState_2158
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.pparams
d_pparams_2318 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2156
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.ppolicy
d_ppolicy_2320 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2140 ->
  Maybe AgdaAny
d_ppolicy_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_ppolicy_2154
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.slot
d_slot_2322 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2140 ->
  AgdaAny
d_slot_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2152 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.treasury
d_treasury_2324 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2140 ->
  Integer
d_treasury_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_treasury_2160
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.certState
d_certState_2328 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2176
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.govSt
d_govSt_2330 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2174 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.utxoSt
d_utxoSt_2332 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980
d_utxoSt_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2172
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv
d_UTxOEnv_2482 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.pparams
d_pparams_2572 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1966 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_pparams_1976 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.slot
d_slot_2574 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1966 ->
  AgdaAny
d_slot_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_slot_1974 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.treasury
d_treasury_2576 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1966 ->
  Integer
d_treasury_2576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_treasury_1978
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2610 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties.Computational-LEDGER
d_Computational'45'LEDGER_2676 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_2676 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2810 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Ledger.Properties._.computeUtxow
d_computeUtxow_2702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1966 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeUtxow_2702 ~v0 ~v1 ~v2 v3 = du_computeUtxow_2702 v3
du_computeUtxow_2702 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1966 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOState_1980 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeUtxow_2702 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.computeCerts
d_computeCerts_2704 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeCerts_2704 ~v0 ~v1 ~v2 v3 = du_computeCerts_2704 v3
du_computeCerts_2704 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeCerts_2704 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.computeGov
d_computeGov_2706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeGov_2706 ~v0 ~v1 ~v2 v3 = du_computeGov_2706 v3
du_computeGov_2706 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeGov_2706 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.utxoΓ
d_utxoΓ_2786 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1966
d_utxoΓ_2786 ~v0 ~v1 v2 ~v3 ~v4 = du_utxoΓ_2786 v2
du_utxoΓ_2786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Utxo.T_UTxOEnv_1966
du_utxoΓ_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_UTxOEnv'46'constructor_10061
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2152 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2156
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_treasury_2160
         (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.certΓ
d_certΓ_2802 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888
d_certΓ_2802 v0 ~v1 v2 ~v3 v4 = du_certΓ_2802 v0 v2 v4
du_certΓ_2802 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888
du_certΓ_2802 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'44'_'10215''7580'_906
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
         (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2152
            (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2156
         (coe v1))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txvote_2626
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2624
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.govΓ
d_govΓ_2804 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934
d_govΓ_2804 v0 ~v1 v2 ~v3 v4 v5 = du_govΓ_2804 v0 v2 v4 v5
du_govΓ_2804 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_1934
du_govΓ_2804 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.C_'10214'_'44'_'44'_'44'_'44'_'44'_'10215''7501'_1960
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txid_2642
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
         (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_slot_2152
            (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2156
         (coe v1))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_ppolicy_2154
         (coe v1))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_enactState_2158
         (coe v1))
      (coe v3)
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.computeProof
d_computeProof_2810 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2810 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3082
              (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v4))
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
                                 du_computeUtxow_2702
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_1730
                                    (coe v0) (coe v1))
                                 (coe du_utxoΓ_2786 (coe v2))
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2172
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
                                             du_computeCerts_2704
                                             (coe
                                                MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTBASE_1814
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1424
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
                                                (coe
                                                   MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730))
                                             (coe du_certΓ_2802 (coe v0) (coe v2) (coe v4))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2176
                                                (coe v3))
                                             (MAlonzo.Code.Ledger.Transaction.d_txcerts_2622
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2680
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
                                                         du_computeGov_2706
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
                                                            du_govΓ_2804 (coe v0) (coe v2) (coe v4)
                                                            (coe v13))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.du__'124''7506'__2250
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2174
                                                               (coe v3))
                                                            (coe v13))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.du_txgov_2180
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                               (coe v4))))
                                                      (\ v15 ->
                                                         case coe v15 of
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                             -> coe
                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2178
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1998
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_utxo_1990
                                                                              (coe v10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_fees_1992
                                                                              (coe v10))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.du_updateDeposits_1914
                                                                              (coe v0)
                                                                              (let v18
                                                                                     = coe
                                                                                         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_11103
                                                                                         (coe v3)
                                                                                         (coe v4)
                                                                                         (coe v2)
                                                                                         (coe v10)
                                                                                         (coe v13)
                                                                                         (coe
                                                                                            v16) in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_pparams_2156
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45'Γ_11093
                                                                                       (coe v18))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                                                 (coe v4))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_deposits_1994
                                                                                 (coe v10)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Utxo.d_donations_1996
                                                                              (coe v10)))
                                                                        (coe v16) (coe v13))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_LEDGER'45'V_2354
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
                             du_computeUtxow_2702
                             (MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_1730
                                (coe v0) (coe v1))
                             (coe du_utxoΓ_2786 (coe v2))
                             (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2172
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
                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2178
                                            (coe v9)
                                            (let v11
                                                   = coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_11523
                                                       (coe v3) (coe v4) (coe v2) (coe v9) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2174
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45's_11513
                                                     (coe v11))))
                                            (let v11
                                                   = coe
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_11523
                                                       (coe v3) (coe v4) (coe v2) (coe v9) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2176
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45's_11513
                                                     (coe v11)))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_LEDGER'45'I_2434
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                               (coe v10))))
                               _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.completeness
d_completeness_2844 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2164 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__2272 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2844 = erased
-- Ledger.Conway.Conformance.Ledger.Properties.Computational-LEDGERS
d_Computational'45'LEDGERS_3014 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGERS_3014 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
      (coe d_Computational'45'LEDGER_2676 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
