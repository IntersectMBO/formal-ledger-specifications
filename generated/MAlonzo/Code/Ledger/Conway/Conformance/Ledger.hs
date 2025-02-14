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

module MAlonzo.Code.Ledger.Conway.Conformance.Ledger where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Gov
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo

-- _.Tx
d_Tx_356 a0 = ()
-- _.epoch
d_epoch_422 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_422 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1506 (coe v0))
-- _.Tx.body
d_body_1372 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516
d_body_1372 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2628 (coe v0)
-- _.Tx.isValid
d_isValid_1374 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Bool
d_isValid_1374 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2632 (coe v0)
-- _.Tx.txAD
d_txAD_1376 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 -> Maybe AgdaAny
d_txAD_1376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2634 (coe v0)
-- _.Tx.wits
d_wits_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2618 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2598
d_wits_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2630 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1560 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv
d_GovEnv_1568 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 -> ()
d_GovState_1570 = erased
-- Ledger.Conway.Conformance.Ledger._.GovEnv.certState
d_certState_1646 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930
d_certState_1646 v0
  = coe MAlonzo.Code.Ledger.Gov.d_certState_1904 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.enactState
d_enactState_1648 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_1648 v0
  = coe MAlonzo.Code.Ledger.Gov.d_enactState_1902 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.epoch
d_epoch_1650 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 -> AgdaAny
d_epoch_1650 v0 = coe MAlonzo.Code.Ledger.Gov.d_epoch_1896 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.pparams
d_pparams_1652 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1652 v0
  = coe MAlonzo.Code.Ledger.Gov.d_pparams_1898 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.ppolicy
d_ppolicy_1654 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 -> Maybe AgdaAny
d_ppolicy_1654 v0
  = coe MAlonzo.Code.Ledger.Gov.d_ppolicy_1900 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.rewardCreds
d_rewardCreds_1656 ::
  MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_rewardCreds_1656 v0
  = coe MAlonzo.Code.Ledger.Gov.d_rewardCreds_1906 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.GovEnv.txid
d_txid_1658 :: MAlonzo.Code.Ledger.Gov.T_GovEnv_1878 -> AgdaAny
d_txid_1658 v0 = coe MAlonzo.Code.Ledger.Gov.d_txid_1894 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1688 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1706 v0 ~v1 = du_updateDeposits_1706 v0
du_updateDeposits_1706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1706 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2454 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1730 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1730 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2028 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1732 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 -> Integer
d_donations_1732 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2030 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1734 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 -> Integer
d_fees_1734 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2026 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1736 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1736 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2024 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1740 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1758 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_830] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1758 = erased
-- Ledger.Conway.Conformance.Ledger._.CertEnv
d_CertEnv_1784 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1786 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.CertEnv.coldCreds
d_coldCreds_1928 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_coldCreds_1928 v0
  = coe MAlonzo.Code.Ledger.Certs.d_coldCreds_886 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.epoch
d_epoch_1930 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_866 -> AgdaAny
d_epoch_1930 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_878 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.pp
d_pp_1932 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_1932 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_880 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.votes
d_votes_1934 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722]
d_votes_1934 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_882 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertEnv.wdrls
d_wdrls_1936 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_866 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1936 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_884 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_1940 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034
d_dState_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_1942 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1054
d_gState_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1082 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_1944 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1080 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._|ᵒ_
d__'124''7506'__2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'124''7506'__2012 v0 ~v1 = du__'124''7506'__2012 v0
du__'124''7506'__2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'124''7506'__2012 v0
  = coe MAlonzo.Code.Ledger.Ledger.du__'124''7506'__2252 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2014 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2016 ~v0 ~v1 = du_allColdCreds_2016
du_allColdCreds_2016 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2016
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2258
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2018 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2018 ~v0 ~v1 = du_txgov_2018
du_txgov_2018 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2516 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2018 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2182
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2024 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2024 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2160 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2026 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2026 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2158 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2028 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 -> Maybe AgdaAny
d_ppolicy_2028 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2156 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2030 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 -> AgdaAny
d_slot_2030 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2154 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2032 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 -> Integer
d_treasury_2032 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2162 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertStFromConf
d_CertStFromConf_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
d_CertStFromConf_2054 ~v0 ~v1 = du_CertStFromConf_2054
du_CertStFromConf_2054 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Convert.T__'8866'_'11078''8305'__16
du_CertStFromConf_2054
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.du_CertStFromConf_2318
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2176 a0 a1 = ()
data T_LState_2176
  = C_'10214'_'44'_'44'_'10215''737'_2190 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2184 ::
  T_LState_2176 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
d_utxoSt_2184 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2190 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2186 ::
  T_LState_2176 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2186 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2190 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2188 ::
  T_LState_2176 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070
d_certState_2188 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2190 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2208 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2208
  = C_LEDGER'45'V_2308 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2388 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070
d_certState_2212 ~v0 ~v1 v2 = du_certState_2212 v2
du_certState_2212 ::
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070
du_certState_2212 v0
  = coe
      d_certState_2188 (coe d_'46'generalizedField'45's_6759 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2214 ~v0 ~v1 v2 = du_govSt_2214 v2
du_govSt_2214 ::
  T_GeneralizeTel_6771 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2214 v0
  = coe d_govSt_2186 (coe d_'46'generalizedField'45's_6759 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
d_utxoSt_2216 ~v0 ~v1 v2 = du_utxoSt_2216 v2
du_utxoSt_2216 ::
  T_GeneralizeTel_6771 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
du_utxoSt_2216 v0
  = coe d_utxoSt_2184 (coe d_'46'generalizedField'45's_6759 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 -> [MAlonzo.Code.Ledger.Certs.T_DCert_830]
d_txcerts_2238 ~v0 ~v1 v2 = du_txcerts_2238 v2
du_txcerts_2238 ::
  T_GeneralizeTel_6771 -> [MAlonzo.Code.Ledger.Certs.T_DCert_830]
du_txcerts_2238 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2570
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_6761 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 -> AgdaAny
d_txid_2244 ~v0 ~v1 v2 = du_txid_2244 v2
du_txid_2244 :: T_GeneralizeTel_6771 -> AgdaAny
du_txid_2244 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2590
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_6761 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722]
d_txvote_2258 ~v0 ~v1 v2 = du_txvote_2258 v2
du_txvote_2258 ::
  T_GeneralizeTel_6771 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_722]
du_txvote_2258 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2574
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_6761 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2260 ~v0 ~v1 v2 = du_txwdrls_2260 v2
du_txwdrls_2260 ::
  T_GeneralizeTel_6771 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2260 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2572
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2628
         (coe d_'46'generalizedField'45'tx_6761 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2264 ~v0 ~v1 v2 = du_enactState_2264 v2
du_enactState_2264 ::
  T_GeneralizeTel_6771 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2264 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2160
      (coe d_'46'generalizedField'45'Γ_6763 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2266 ~v0 ~v1 v2 = du_pparams_2266 v2
du_pparams_2266 ::
  T_GeneralizeTel_6771 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2266 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2158
      (coe d_'46'generalizedField'45'Γ_6763 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 -> Maybe AgdaAny
d_ppolicy_2268 ~v0 ~v1 v2 = du_ppolicy_2268 v2
du_ppolicy_2268 :: T_GeneralizeTel_6771 -> Maybe AgdaAny
du_ppolicy_2268 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2156
      (coe d_'46'generalizedField'45'Γ_6763 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 -> AgdaAny
d_slot_2270 ~v0 ~v1 v2 = du_slot_2270 v2
du_slot_2270 :: T_GeneralizeTel_6771 -> AgdaAny
du_slot_2270 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2154
      (coe d_'46'generalizedField'45'Γ_6763 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034
d_dState_2276 ~v0 ~v1 v2 = du_dState_2276 v2
du_dState_2276 ::
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034
du_dState_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
      (coe
         d_certState_2188 (coe d_'46'generalizedField'45's_6759 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2286 ~v0 ~v1 v2 = du_rewards_2286 v2
du_rewards_2286 ::
  T_GeneralizeTel_6771 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1048
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
         (coe
            d_certState_2188 (coe d_'46'generalizedField'45's_6759 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2300 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2300 ~v0 ~v1 v2 = du_pparams_2300 v2
du_pparams_2300 ::
  T_GeneralizeTel_6771 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2300 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2158
      (coe d_'46'generalizedField'45'Γ_6763 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 -> AgdaAny
d_slot_2304 ~v0 ~v1 v2 = du_slot_2304 v2
du_slot_2304 :: T_GeneralizeTel_6771 -> AgdaAny
du_slot_2304 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2154
      (coe d_'46'generalizedField'45'Γ_6763 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_6771 -> Integer
d_treasury_2306 ~v0 ~v1 v2 = du_treasury_2306 v2
du_treasury_2306 :: T_GeneralizeTel_6771 -> Integer
du_treasury_2306 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2162
      (coe d_'46'generalizedField'45'Γ_6763 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_8359 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070
d_certState_2312 ~v0 ~v1 v2 = du_certState_2312 v2
du_certState_2312 ::
  T_GeneralizeTel_8359 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070
du_certState_2312 v0
  = coe
      d_certState_2188 (coe d_'46'generalizedField'45's_8351 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2314 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_8359 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2314 ~v0 ~v1 v2 = du_govSt_2314 v2
du_govSt_2314 ::
  T_GeneralizeTel_8359 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2314 v0
  = coe d_govSt_2186 (coe d_'46'generalizedField'45's_8351 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_8359 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
d_utxoSt_2316 ~v0 ~v1 v2 = du_utxoSt_2316 v2
du_utxoSt_2316 ::
  T_GeneralizeTel_8359 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
du_utxoSt_2316 v0
  = coe d_utxoSt_2184 (coe d_'46'generalizedField'45's_8351 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_8359 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_2380 ~v0 ~v1 v2 = du_pparams_2380 v2
du_pparams_2380 ::
  T_GeneralizeTel_8359 -> MAlonzo.Code.Ledger.PParams.T_PParams_242
du_pparams_2380 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2158
      (coe d_'46'generalizedField'45'Γ_8355 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_8359 -> AgdaAny
d_slot_2384 ~v0 ~v1 v2 = du_slot_2384 v2
du_slot_2384 :: T_GeneralizeTel_8359 -> AgdaAny
du_slot_2384 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2154
      (coe d_'46'generalizedField'45'Γ_8355 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  T_GeneralizeTel_8359 -> Integer
d_treasury_2386 ~v0 ~v1 v2 = du_treasury_2386 v2
du_treasury_2386 :: T_GeneralizeTel_8359 -> Integer
du_treasury_2386 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2162
      (coe d_'46'generalizedField'45'Γ_8355 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2406 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1708 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2142 ->
  T_LState_2176 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2618] -> T_LState_2176 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2406 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_6759 ::
  T_GeneralizeTel_6771 -> T_LState_2176
d_'46'generalizedField'45's_6759 v0
  = case coe v0 of
      C_mkGeneralizeTel_6773 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6761 ::
  T_GeneralizeTel_6771 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2618
d_'46'generalizedField'45'tx_6761 v0
  = case coe v0 of
      C_mkGeneralizeTel_6773 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6763 ::
  T_GeneralizeTel_6771 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2142
d_'46'generalizedField'45'Γ_6763 v0
  = case coe v0 of
      C_mkGeneralizeTel_6773 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6765 ::
  T_GeneralizeTel_6771 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
d_'46'generalizedField'45'utxoSt''_6765 v0
  = case coe v0 of
      C_mkGeneralizeTel_6773 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_6767 ::
  T_GeneralizeTel_6771 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070
d_'46'generalizedField'45'certState''_6767 v0
  = case coe v0 of
      C_mkGeneralizeTel_6773 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_6769 ::
  T_GeneralizeTel_6771 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_6769 v0
  = case coe v0 of
      C_mkGeneralizeTel_6773 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_6771 a0 a1 = ()
data T_GeneralizeTel_6771
  = C_mkGeneralizeTel_6773 T_LState_2176
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2618
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2142
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8351 ::
  T_GeneralizeTel_8359 -> T_LState_2176
d_'46'generalizedField'45's_8351 v0
  = case coe v0 of
      C_mkGeneralizeTel_8361 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8353 ::
  T_GeneralizeTel_8359 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2618
d_'46'generalizedField'45'tx_8353 v0
  = case coe v0 of
      C_mkGeneralizeTel_8361 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8355 ::
  T_GeneralizeTel_8359 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2142
d_'46'generalizedField'45'Γ_8355 v0
  = case coe v0 of
      C_mkGeneralizeTel_8361 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8357 ::
  T_GeneralizeTel_8359 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
d_'46'generalizedField'45'utxoSt''_8357 v0
  = case coe v0 of
      C_mkGeneralizeTel_8361 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8359 a0 a1 = ()
data T_GeneralizeTel_8359
  = C_mkGeneralizeTel_8361 T_LState_2176
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2618
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2142
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2014
