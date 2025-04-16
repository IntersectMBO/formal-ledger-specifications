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
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.To
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Gov
import qualified MAlonzo.Code.Ledger.Gov.Properties
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
d_Tx_360 a0 = ()
-- _.Tx.body
d_body_1396 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518
d_body_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v0)
-- _.Tx.isValid
d_isValid_1398 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2620 -> Bool
d_isValid_1398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2634 (coe v0)
-- _.Tx.txAD
d_txAD_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 -> Maybe AgdaAny
d_txAD_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2636 (coe v0)
-- _.Tx.wits
d_wits_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2600
d_wits_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2632 (coe v0)
-- _.CertEnv
d_CertEnv_1520 a0 = ()
-- _.CertState
d_CertState_1522 a0 = ()
-- _.CertEnv.coldCreds
d_coldCreds_1672 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_892 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_coldCreds_1672 v0
  = coe MAlonzo.Code.Ledger.Certs.d_coldCreds_912 (coe v0)
-- _.CertEnv.epoch
d_epoch_1674 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_892 -> AgdaAny
d_epoch_1674 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_904 (coe v0)
-- _.CertEnv.pp
d_pp_1676 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_892 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_1676 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_906 (coe v0)
-- _.CertEnv.votes
d_votes_1678 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_892 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740]
d_votes_1678 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_908 (coe v0)
-- _.CertEnv.wdrls
d_wdrls_1680 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_892 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1680 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_910 (coe v0)
-- _.CertState.dState
d_dState_1684 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1066
d_dState_1684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110 (coe v0)
-- _.CertState.gState
d_gState_1686 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1086
d_gState_1686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1114 (coe v0)
-- _.CertState.pState
d_pState_1688 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  MAlonzo.Code.Ledger.Certs.T_PState_930
d_pState_1688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1112 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-CERT
d_Computational'45'CERT_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_2162 v0 ~v1
  = du_Computational'45'CERT_2162 v0
du_Computational'45'CERT_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'CERT_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1642
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2310 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-CERTBASE
d_Computational'45'CERTBASE_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_2164 v0 ~v1
  = du_Computational'45'CERTBASE_2164 v0
du_Computational'45'CERTBASE_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'CERTBASE_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTBASE_1950
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2310 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv
d_GovEnv_2190 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.certState
d_certState_2278 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1906 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952
d_certState_2278 v0
  = coe MAlonzo.Code.Ledger.Gov.d_certState_1932 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.enactState
d_enactState_2280 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1906 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_enactState_2280 v0
  = coe MAlonzo.Code.Ledger.Gov.d_enactState_1930 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.epoch
d_epoch_2282 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1906 -> AgdaAny
d_epoch_2282 v0 = coe MAlonzo.Code.Ledger.Gov.d_epoch_1924 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.pparams
d_pparams_2284 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1906 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2284 v0
  = coe MAlonzo.Code.Ledger.Gov.d_pparams_1926 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.ppolicy
d_ppolicy_2286 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1906 -> Maybe AgdaAny
d_ppolicy_2286 v0
  = coe MAlonzo.Code.Ledger.Gov.d_ppolicy_1928 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.rewardCreds
d_rewardCreds_2288 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1906 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_rewardCreds_2288 v0
  = coe MAlonzo.Code.Ledger.Gov.d_rewardCreds_1934 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.GovEnv.txid
d_txid_2290 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1906 -> AgdaAny
d_txid_2290 v0 = coe MAlonzo.Code.Ledger.Gov.d_txid_1922 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.Computational-GOV
d_Computational'45'GOV_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV_2302 v0 ~v1
  = du_Computational'45'GOV_2302 v0
du_Computational'45'GOV_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'GOV_2302 v0
  = coe
      MAlonzo.Code.Ledger.Gov.Properties.d_Computational'45'GOV_1326
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2620] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2316 = erased
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2318 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv
d_LEnv_2324 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LState
d_LState_2326 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.enactState
d_enactState_2348 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_enactState_2348 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2178 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.pparams
d_pparams_2350 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2350 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2176 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.ppolicy
d_ppolicy_2352 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 -> Maybe AgdaAny
d_ppolicy_2352 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2174 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.slot
d_slot_2354 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 -> AgdaAny
d_slot_2354 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2172 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LEnv.treasury
d_treasury_2356 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 -> Integer
d_treasury_2356 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2180 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.certState
d_certState_2360 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
d_certState_2360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1982
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.govSt
d_govSt_2362 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1980 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.LState.utxoSt
d_utxoSt_2364 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
d_utxoSt_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_1978
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv
d_UTxOEnv_2500 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.pparams
d_pparams_2536 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2536 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_2032 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.slot
d_slot_2538 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 -> AgdaAny
d_slot_2538 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_2030 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.UTxOEnv.treasury
d_treasury_2540 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 -> Integer
d_treasury_2540 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_treasury_2034 (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2564 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger.Properties._.CertStFromConf
d_CertStFromConf_2602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_CertStFromConf_2602 ~v0 ~v1 = du_CertStFromConf_2602
du_CertStFromConf_2602 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_CertStFromConf_2602
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.du_CertStFromConf_2378
-- Ledger.Conway.Conformance.Ledger.Properties.Computational-LEDGER
d_Computational'45'LEDGER_2728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_2728 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_2868 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Ledger.Properties._.computeUtxow
d_computeUtxow_2754 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeUtxow_2754 ~v0 ~v1 ~v2 v3 = du_computeUtxow_2754 v3
du_computeUtxow_2754 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeUtxow_2754 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.computeCerts
d_computeCerts_2756 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_892 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeCerts_2756 ~v0 ~v1 ~v2 v3 = du_computeCerts_2756 v3
du_computeCerts_2756 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_892 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeCerts_2756 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._.computeGov
d_computeGov_2758 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1906 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeGov_2758 ~v0 ~v1 ~v2 v3 = du_computeGov_2758 v3
du_computeGov_2758 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1906 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeGov_2758 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.utxoΓ
d_utxoΓ_2844 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022
d_utxoΓ_2844 ~v0 ~v1 v2 ~v3 ~v4 = du_utxoΓ_2844 v2
du_utxoΓ_2844 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_2022
du_utxoΓ_2844 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_16283
      (coe MAlonzo.Code.Ledger.Ledger.d_slot_2172 (coe v0))
      (coe MAlonzo.Code.Ledger.Ledger.d_pparams_2176 (coe v0))
      (coe MAlonzo.Code.Ledger.Ledger.d_treasury_2180 (coe v0))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.certΓ
d_certΓ_2860 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_892
d_certΓ_2860 v0 ~v1 v2 v3 v4 = du_certΓ_2860 v0 v2 v3 v4
du_certΓ_2860 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_892
du_certΓ_2860 v0 v1 v2 v3
  = coe
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
                              (892 :: Integer) (4754670284972318150 :: Integer)
                              "Ledger.Certs.CertEnv"
                              (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                     (coe ("r" :: Data.Text.Text))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                        (coe
                           (MAlonzo.RTE.QName
                              (104 :: Integer) (4754670284972318150 :: Integer) "_.Epoch"
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
                                 (892 :: Integer) (4754670284972318150 :: Integer)
                                 "Ledger.Certs.CertEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (148 :: Integer) (4754670284972318150 :: Integer) "_.PParams"
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
                                    (892 :: Integer) (4754670284972318150 :: Integer)
                                    "Ledger.Certs.CertEnv"
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
                                    (10 :: Integer) (15090436609435731260 :: Integer)
                                    "Agda.Builtin.List.List"
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
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
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
                                                (698 :: Integer) (4754670284972318150 :: Integer)
                                                "Ledger.Certs._.GovVote"
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
                                       (892 :: Integer) (4754670284972318150 :: Integer)
                                       "Ledger.Certs.CertEnv"
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
                                                (170 :: Integer) (4754670284972318150 :: Integer)
                                                "_.RwdAddr"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                         (276 :: Integer)
                                                         (5472012504010855638 :: Integer)
                                                         "Ledger.Types.Epoch.GlobalConstants.DecEq-Netw"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
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
                                                                  (1062 :: Integer)
                                                                  (15457238204768998804 :: Integer)
                                                                  "Ledger.Types.GovStructure.GovStructure.globalConstants"
                                                                  (MAlonzo.RTE.Fixity
                                                                     MAlonzo.RTE.NonAssoc
                                                                     MAlonzo.RTE.Unrelated)))
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
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                     (coe (1 :: Integer))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                            (22 :: Integer)
                                                            (11985168719538843093 :: Integer)
                                                            "Ledger.Crypto.isHashableSet.DecEq-THash"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
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
                                                                        (200 :: Integer)
                                                                        (11985168719538843093 ::
                                                                           Integer)
                                                                        "Ledger.Crypto.Crypto.khs"
                                                                        (MAlonzo.RTE.Fixity
                                                                           MAlonzo.RTE.NonAssoc
                                                                           MAlonzo.RTE.Unrelated)))
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
                                                                                 (542 :: Integer)
                                                                                 (15457238204768998804 ::
                                                                                    Integer)
                                                                                 "Ledger.Types.GovStructure.GovStructure.crypto"
                                                                                 (MAlonzo.RTE.Fixity
                                                                                    MAlonzo.RTE.NonAssoc
                                                                                    MAlonzo.RTE.Unrelated)))
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
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                    (coe
                                                                                       (1 ::
                                                                                          Integer))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                               (204 :: Integer)
                                                               (11985168719538843093 :: Integer)
                                                               "Ledger.Crypto.Crypto.DecEq-ScriptHash"
                                                               (MAlonzo.RTE.Fixity
                                                                  MAlonzo.RTE.NonAssoc
                                                                  MAlonzo.RTE.Unrelated)))
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
                                                                        (542 :: Integer)
                                                                        (15457238204768998804 ::
                                                                           Integer)
                                                                        "Ledger.Types.GovStructure.GovStructure.crypto"
                                                                        (MAlonzo.RTE.Fixity
                                                                           MAlonzo.RTE.NonAssoc
                                                                           MAlonzo.RTE.Unrelated)))
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
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                           (coe (1 :: Integer))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (892 :: Integer) (4754670284972318150 :: Integer)
                                          "Ledger.Certs.CertEnv"
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
                                          (126 :: Integer) (9254951203007797098 :: Integer)
                                          "abstract-set-theory.FiniteSetTheory._.Set"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                                   (26 :: Integer) (4754670284972318150 :: Integer)
                                                   "_.Credential"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                            (276 :: Integer)
                                                            (5472012504010855638 :: Integer)
                                                            "Ledger.Types.Epoch.GlobalConstants.DecEq-Netw"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
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
                                                                     (1062 :: Integer)
                                                                     (15457238204768998804 ::
                                                                        Integer)
                                                                     "Ledger.Types.GovStructure.GovStructure.globalConstants"
                                                                     (MAlonzo.RTE.Fixity
                                                                        MAlonzo.RTE.NonAssoc
                                                                        MAlonzo.RTE.Unrelated)))
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
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                        (coe (1 :: Integer))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                               (22 :: Integer)
                                                               (11985168719538843093 :: Integer)
                                                               "Ledger.Crypto.isHashableSet.DecEq-THash"
                                                               (MAlonzo.RTE.Fixity
                                                                  MAlonzo.RTE.NonAssoc
                                                                  MAlonzo.RTE.Unrelated)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
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
                                                                           (200 :: Integer)
                                                                           (11985168719538843093 ::
                                                                              Integer)
                                                                           "Ledger.Crypto.Crypto.khs"
                                                                           (MAlonzo.RTE.Fixity
                                                                              MAlonzo.RTE.NonAssoc
                                                                              MAlonzo.RTE.Unrelated)))
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
                                                                                    (542 :: Integer)
                                                                                    (15457238204768998804 ::
                                                                                       Integer)
                                                                                    "Ledger.Types.GovStructure.GovStructure.crypto"
                                                                                    (MAlonzo.RTE.Fixity
                                                                                       MAlonzo.RTE.NonAssoc
                                                                                       MAlonzo.RTE.Unrelated)))
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
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                       (coe
                                                                                          (1 ::
                                                                                             Integer))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_instance'8242'_54)
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
                                                                  (204 :: Integer)
                                                                  (11985168719538843093 :: Integer)
                                                                  "Ledger.Crypto.Crypto.DecEq-ScriptHash"
                                                                  (MAlonzo.RTE.Fixity
                                                                     MAlonzo.RTE.NonAssoc
                                                                     MAlonzo.RTE.Unrelated)))
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
                                                                           (542 :: Integer)
                                                                           (15457238204768998804 ::
                                                                              Integer)
                                                                           "Ledger.Types.GovStructure.GovStructure.crypto"
                                                                           (MAlonzo.RTE.Fixity
                                                                              MAlonzo.RTE.NonAssoc
                                                                              MAlonzo.RTE.Unrelated)))
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
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                              (coe (1 :: Integer))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
      (coe MAlonzo.Code.Ledger.Certs.C_CertEnv'46'constructor_16393)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
            (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1490 (coe v0))
            (MAlonzo.Code.Ledger.Ledger.d_slot_2172 (coe v1)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Ledger.Ledger.d_pparams_2176 (coe v1))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txvote_2576
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v3)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txwdrls_2574
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v3)))
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
                                    MAlonzo.Code.Ledger.Enact.du_ccCreds_874
                                    (coe
                                       MAlonzo.Code.Ledger.Enact.d_cc_862
                                       (coe MAlonzo.Code.Ledger.Ledger.d_enactState_2178 (coe v1))))
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
                                                     MAlonzo.Code.Ledger.GovernanceActions.du_proposedCC_820
                                                     (coe
                                                        MAlonzo.Code.Ledger.GovernanceActions.d_action_802
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v4))))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_listing_216
                                                      (MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      erased
                                                      (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1980
                                                         (coe v2))))))))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.govΓ
d_govΓ_2862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1906
d_govΓ_2862 v0 ~v1 v2 v3 v4 v5 = du_govΓ_2862 v0 v2 v3 v4 v5
du_govΓ_2862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1906
du_govΓ_2862 v0 v1 v2 v3 v4
  = coe
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
                              (1906 :: Integer) (8477195096920255996 :: Integer)
                              "Ledger.Gov.GovEnv"
                              (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                     (coe ("r" :: Data.Text.Text))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                        (coe
                           (MAlonzo.RTE.QName
                              (1168 :: Integer) (3534875190617065329 :: Integer)
                              "Ledger.Transaction.TransactionStructure.TxId"
                              (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe (1 :: Integer))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
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
                                 (1906 :: Integer) (8477195096920255996 :: Integer)
                                 "Ledger.Gov.GovEnv"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (138 :: Integer) (8477195096920255996 :: Integer) "_.Epoch"
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
                                    (1906 :: Integer) (8477195096920255996 :: Integer)
                                    "Ledger.Gov.GovEnv"
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
                                    (222 :: Integer) (8477195096920255996 :: Integer) "_.PParams"
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
                                       (1906 :: Integer) (8477195096920255996 :: Integer)
                                       "Ledger.Gov.GovEnv"
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
                                                   (278 :: Integer) (8477195096920255996 :: Integer)
                                                   "_.ScriptHash"
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
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (1906 :: Integer) (8477195096920255996 :: Integer)
                                          "Ledger.Gov.GovEnv"
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
                                          (1518 :: Integer) (8477195096920255996 :: Integer)
                                          "Ledger.Gov._.EnactState"
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
                                             (1906 :: Integer) (8477195096920255996 :: Integer)
                                             "Ledger.Gov.GovEnv"
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
                                             (1702 :: Integer) (8477195096920255996 :: Integer)
                                             "Ledger.Gov._.CertState"
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
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (1906 :: Integer) (8477195096920255996 :: Integer)
                                                "Ledger.Gov.GovEnv"
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
                                                (126 :: Integer) (9254951203007797098 :: Integer)
                                                "abstract-set-theory.FiniteSetTheory._.Set"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                                         (40 :: Integer)
                                                         (8477195096920255996 :: Integer)
                                                         "_.Credential"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
      (coe MAlonzo.Code.Ledger.Gov.C_GovEnv'46'constructor_3197)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txid_2592
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v3)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
               (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1490 (coe v0))
               (MAlonzo.Code.Ledger.Ledger.d_slot_2172 (coe v1)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe MAlonzo.Code.Ledger.Ledger.d_pparams_2176 (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2174 (coe v1))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe MAlonzo.Code.Ledger.Ledger.d_enactState_2178 (coe v1))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_84
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.du_CertStFromConf_2378)
                           (coe v4))
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
                                    MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1080
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1982
                                          (coe v2)))))))))))))
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.computeProof
d_computeProof_2868 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2868 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Data.Bool.Properties.d__'8799'__3104
              (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2634 (coe v4))
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
                                 du_computeUtxow_2754
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_1602
                                    (coe v0) (coe v1))
                                 (coe du_utxoΓ_2844 (coe v2))
                                 (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_1978
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
                                             du_computeCerts_2756
                                             (coe
                                                MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'''_1138
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTBASE_1950
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2310
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1642
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2310
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
                                                (coe
                                                   MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730))
                                             (coe du_certΓ_2860 (coe v0) (coe v2) (coe v3) (coe v4))
                                             (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1982
                                                (coe v3))
                                             (MAlonzo.Code.Ledger.Transaction.d_txcerts_2572
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2630
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
                                                         du_computeGov_2758
                                                         (coe
                                                            MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1100
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Gov.Properties.d_Computational'45'GOV_1326
                                                               (coe v0))
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730))
                                                         (coe
                                                            du_govΓ_2862 (coe v0) (coe v2) (coe v3)
                                                            (coe v4) (coe v13))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2252
                                                            (coe v0)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.du_conv_84
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.du_CertStFromConf_2378)
                                                               (coe v13))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1980
                                                               (coe v3)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Ledger.du_txgov_2202
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_body_2630
                                                               (coe v4))))
                                                      (\ v15 ->
                                                         case coe v15 of
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                             -> coe
                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Class.To.d_'10214'_'10215'_16
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.du_To'45'LState_1986)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2054
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.d_utxo_2046
                                                                                 (coe v10))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.d_fees_2048
                                                                                 (coe v10))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2480
                                                                                 (coe v0)
                                                                                 (let v18
                                                                                        = coe
                                                                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_7137
                                                                                            (coe v3)
                                                                                            (coe v4)
                                                                                            (coe v2)
                                                                                            (coe
                                                                                               v10)
                                                                                            (coe
                                                                                               v13)
                                                                                            (coe
                                                                                               v16) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Ledger.d_pparams_2176
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45'Γ_7127
                                                                                          (coe
                                                                                             v18))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2630
                                                                                    (coe v4))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Utxo.d_deposits_2050
                                                                                    (coe v10)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.d_donations_2052
                                                                                 (coe v10)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v16) (coe v13))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_LEDGER'45'V_2104
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
                             du_computeUtxow_2754
                             (MAlonzo.Code.Ledger.Conway.Conformance.Utxow.Properties.d_Computational'45'UTXOW_1602
                                (coe v0) (coe v1))
                             (coe du_utxoΓ_2844 (coe v2))
                             (MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_1978
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
                                            MAlonzo.Code.Class.To.d_'10214'_'10215'_16
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Ledger.du_To'45'LState_1986)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_12103
                                                             (coe v3) (coe v4) (coe v2) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_1980
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45's_12093
                                                           (coe v11))))
                                                  (let v11
                                                         = coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_mkGeneralizeTel_12103
                                                             (coe v3) (coe v4) (coe v2) (coe v9) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_1982
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_'46'generalizedField'45's_12093
                                                           (coe v11)))))))
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_LEDGER'45'I_2184
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                               (coe v10))))
                               _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Ledger.Properties._._.go.completeness
d_completeness_2902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_1970 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__2004 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2902 = erased
-- Ledger.Conway.Conformance.Ledger.Properties.Computational-LEDGERS
d_Computational'45'LEDGERS_3032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGERS_3032 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_774
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_738)
      (coe d_Computational'45'LEDGER_2728 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45''8869'_726)
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_InjectError'45'Id_730)
