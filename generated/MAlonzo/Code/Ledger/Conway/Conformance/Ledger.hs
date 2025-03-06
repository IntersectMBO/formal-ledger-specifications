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
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.To
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo

-- _.Tx
d_Tx_366 a0 = ()
-- _.epoch
d_epoch_432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_432 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0))
-- _.Tx.body
d_body_1390 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2630 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2528
d_body_1390 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2640 (coe v0)
-- _.Tx.isValid
d_isValid_1392 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2630 -> Bool
d_isValid_1392 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2644 (coe v0)
-- _.Tx.txAD
d_txAD_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2630 -> Maybe AgdaAny
d_txAD_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2646 (coe v0)
-- _.Tx.wits
d_wits_1396 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2630 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2610
d_wits_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2642 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2152 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1566 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 -> ()
d_GovState_1570 = erased
-- Ledger.Conway.Conformance.Ledger._.To-GovEnv
d_To'45'GovEnv_1572 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1572 ~v0 ~v1 = du_To'45'GovEnv_1572
du_To'45'GovEnv_1572 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1572
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_To'45'GovEnv_2182
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1612 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2528 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1630 v0 ~v1 = du_updateDeposits_1630 v0
du_updateDeposits_1630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2528 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1630 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2482 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1654 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1654 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2052 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1656 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2038 -> Integer
d_donations_1656 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2054 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1658 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2038 -> Integer
d_fees_1658 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2050 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1660 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1660 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2048 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1664 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_876 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_840] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1682 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1710 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-CertEnv
d_To'45'CertEnv_1776 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_1776 ~v0 ~v1 = du_To'45'CertEnv_1776
du_To'45'CertEnv_1776 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_1776
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_978
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_1872 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050
d_dState_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_1874 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1070
d_gState_1874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1098 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_1876 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Certs.T_PState_914
d_pState_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1096 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_1944 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-LEnv
d_To'45'LEnv_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1946 ~v0 ~v1 = du_To'45'LEnv_1946
du_To'45'LEnv_1946 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1946
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2196
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_834 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_1948 ~v0 ~v1 = du_allColdCreds_1948
du_allColdCreds_1948 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_834 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_1948
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2270
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_936 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_1950 v0 ~v1 = du_rmOrphanDRepVotes_1950 v0
du_rmOrphanDRepVotes_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_936 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_1950 v0
  = coe MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2250 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2528 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1952 ~v0 ~v1 = du_txgov_1952
du_txgov_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2528 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1952 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2200
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_1956 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2158 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_834
d_enactState_1956 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2176 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_1958 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2158 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1958 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2174 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_1960 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2158 -> Maybe AgdaAny
d_ppolicy_1960 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2172 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_1962 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2158 -> AgdaAny
d_slot_1962 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2170 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_1964 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2158 -> Integer
d_treasury_1964 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2178 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_1966 a0 a1 = ()
data T_LState_1966
  = C_'10214'_'44'_'44'_'10215''737'_1980 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2038
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_1974 ::
  T_LState_1966 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2038
d_utxoSt_1974 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1980 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_1976 ::
  T_LState_1966 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1976 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1980 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_1978 ::
  T_LState_1966 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_1978 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1980 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.To-LState
d_To'45'LState_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_1982 ~v0 ~v1 = du_To'45'LState_1982
du_To'45'LState_1982 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_1982
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
                                 (1966 :: Integer) (16262344046643431141 :: Integer)
                                 "Ledger.Conway.Conformance.Ledger.LState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1612 :: Integer) (16262344046643431141 :: Integer)
                                 "Ledger.Conway.Conformance.Ledger._.UTxOState"
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
                                    (1966 :: Integer) (16262344046643431141 :: Integer)
                                    "Ledger.Conway.Conformance.Ledger.LState"
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
                                    (1570 :: Integer) (16262344046643431141 :: Integer)
                                    "Ledger.Conway.Conformance.Ledger._.GovState"
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
                                       (1966 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger.LState"
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
                                       (1710 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_1980))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2000 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2000
  = C_LEDGER'45'V_2100 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2038
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2180 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_2004 ~v0 ~v1 v2 = du_certState_2004 v2
du_certState_2004 ::
  T_GeneralizeTel_7121 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
du_certState_2004 v0
  = coe
      d_certState_1978 (coe d_'46'generalizedField'45's_7109 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2006 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2006 ~v0 ~v1 v2 = du_govSt_2006 v2
du_govSt_2006 ::
  T_GeneralizeTel_7121 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2006 v0
  = coe d_govSt_1976 (coe d_'46'generalizedField'45's_7109 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2038
d_utxoSt_2008 ~v0 ~v1 v2 = du_utxoSt_2008 v2
du_utxoSt_2008 ::
  T_GeneralizeTel_7121 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2038
du_utxoSt_2008 v0
  = coe d_utxoSt_1974 (coe d_'46'generalizedField'45's_7109 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2030 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 -> [MAlonzo.Code.Ledger.Certs.T_DCert_840]
d_txcerts_2030 ~v0 ~v1 v2 = du_txcerts_2030 v2
du_txcerts_2030 ::
  T_GeneralizeTel_7121 -> [MAlonzo.Code.Ledger.Certs.T_DCert_840]
du_txcerts_2030 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2582
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2640
         (coe d_'46'generalizedField'45'tx_7111 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 -> AgdaAny
d_txid_2036 ~v0 ~v1 v2 = du_txid_2036 v2
du_txid_2036 :: T_GeneralizeTel_7121 -> AgdaAny
du_txid_2036 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2602
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2640
         (coe d_'46'generalizedField'45'tx_7111 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
d_txvote_2050 ~v0 ~v1 v2 = du_txvote_2050 v2
du_txvote_2050 ::
  T_GeneralizeTel_7121 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
du_txvote_2050 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2586
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2640
         (coe d_'46'generalizedField'45'tx_7111 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2052 ~v0 ~v1 v2 = du_txwdrls_2052 v2
du_txwdrls_2052 ::
  T_GeneralizeTel_7121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2052 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2584
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2640
         (coe d_'46'generalizedField'45'tx_7111 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 -> MAlonzo.Code.Ledger.Enact.T_EnactState_834
d_enactState_2056 ~v0 ~v1 v2 = du_enactState_2056 v2
du_enactState_2056 ::
  T_GeneralizeTel_7121 -> MAlonzo.Code.Ledger.Enact.T_EnactState_834
du_enactState_2056 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2176
      (coe d_'46'generalizedField'45'Γ_7113 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2058 ~v0 ~v1 v2 = du_pparams_2058 v2
du_pparams_2058 ::
  T_GeneralizeTel_7121 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2058 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2174
      (coe d_'46'generalizedField'45'Γ_7113 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2060 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 -> Maybe AgdaAny
d_ppolicy_2060 ~v0 ~v1 v2 = du_ppolicy_2060 v2
du_ppolicy_2060 :: T_GeneralizeTel_7121 -> Maybe AgdaAny
du_ppolicy_2060 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2172
      (coe d_'46'generalizedField'45'Γ_7113 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 -> AgdaAny
d_slot_2062 ~v0 ~v1 v2 = du_slot_2062 v2
du_slot_2062 :: T_GeneralizeTel_7121 -> AgdaAny
du_slot_2062 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2170
      (coe d_'46'generalizedField'45'Γ_7113 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050
d_dState_2068 ~v0 ~v1 v2 = du_dState_2068 v2
du_dState_2068 ::
  T_GeneralizeTel_7121 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050
du_dState_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094
      (coe
         d_certState_1978 (coe d_'46'generalizedField'45's_7109 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2078 ~v0 ~v1 v2 = du_rewards_2078 v2
du_rewards_2078 ::
  T_GeneralizeTel_7121 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1064
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094
         (coe
            d_certState_1978 (coe d_'46'generalizedField'45's_7109 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2092 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2092 ~v0 ~v1 v2 = du_pparams_2092 v2
du_pparams_2092 ::
  T_GeneralizeTel_7121 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2092 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2174
      (coe d_'46'generalizedField'45'Γ_7113 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 -> AgdaAny
d_slot_2096 ~v0 ~v1 v2 = du_slot_2096 v2
du_slot_2096 :: T_GeneralizeTel_7121 -> AgdaAny
du_slot_2096 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2170
      (coe d_'46'generalizedField'45'Γ_7113 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_7121 -> Integer
d_treasury_2098 ~v0 ~v1 v2 = du_treasury_2098 v2
du_treasury_2098 :: T_GeneralizeTel_7121 -> Integer
du_treasury_2098 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2178
      (coe d_'46'generalizedField'45'Γ_7113 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_12103 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_2104 ~v0 ~v1 v2 = du_certState_2104 v2
du_certState_2104 ::
  T_GeneralizeTel_12103 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
du_certState_2104 v0
  = coe
      d_certState_1978 (coe d_'46'generalizedField'45's_12095 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_12103 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2106 ~v0 ~v1 v2 = du_govSt_2106 v2
du_govSt_2106 ::
  T_GeneralizeTel_12103 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2106 v0
  = coe d_govSt_1976 (coe d_'46'generalizedField'45's_12095 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_12103 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2038
d_utxoSt_2108 ~v0 ~v1 v2 = du_utxoSt_2108 v2
du_utxoSt_2108 ::
  T_GeneralizeTel_12103 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2038
du_utxoSt_2108 v0
  = coe
      d_utxoSt_1974 (coe d_'46'generalizedField'45's_12095 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_12103 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2172 ~v0 ~v1 v2 = du_pparams_2172 v2
du_pparams_2172 ::
  T_GeneralizeTel_12103 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2172 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2174
      (coe d_'46'generalizedField'45'Γ_12099 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_12103 -> AgdaAny
d_slot_2176 ~v0 ~v1 v2 = du_slot_2176 v2
du_slot_2176 :: T_GeneralizeTel_12103 -> AgdaAny
du_slot_2176 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2170
      (coe d_'46'generalizedField'45'Γ_12099 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  T_GeneralizeTel_12103 -> Integer
d_treasury_2178 ~v0 ~v1 v2 = du_treasury_2178 v2
du_treasury_2178 :: T_GeneralizeTel_12103 -> Integer
du_treasury_2178 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2178
      (coe d_'46'generalizedField'45'Γ_12099 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1732 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2158 ->
  T_LState_1966 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2630] -> T_LState_1966 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2198 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_7109 ::
  T_GeneralizeTel_7121 -> T_LState_1966
d_'46'generalizedField'45's_7109 v0
  = case coe v0 of
      C_mkGeneralizeTel_7123 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_7111 ::
  T_GeneralizeTel_7121 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2630
d_'46'generalizedField'45'tx_7111 v0
  = case coe v0 of
      C_mkGeneralizeTel_7123 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_7113 ::
  T_GeneralizeTel_7121 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2158
d_'46'generalizedField'45'Γ_7113 v0
  = case coe v0 of
      C_mkGeneralizeTel_7123 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_7115 ::
  T_GeneralizeTel_7121 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2038
d_'46'generalizedField'45'utxoSt''_7115 v0
  = case coe v0 of
      C_mkGeneralizeTel_7123 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_7117 ::
  T_GeneralizeTel_7121 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_'46'generalizedField'45'certState''_7117 v0
  = case coe v0 of
      C_mkGeneralizeTel_7123 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_7119 ::
  T_GeneralizeTel_7121 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_7119 v0
  = case coe v0 of
      C_mkGeneralizeTel_7123 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_7121 a0 a1 = ()
data T_GeneralizeTel_7121
  = C_mkGeneralizeTel_7123 T_LState_1966
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2630
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2158
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2038
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_12095 ::
  T_GeneralizeTel_12103 -> T_LState_1966
d_'46'generalizedField'45's_12095 v0
  = case coe v0 of
      C_mkGeneralizeTel_12105 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_12097 ::
  T_GeneralizeTel_12103 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2630
d_'46'generalizedField'45'tx_12097 v0
  = case coe v0 of
      C_mkGeneralizeTel_12105 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_12099 ::
  T_GeneralizeTel_12103 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2158
d_'46'generalizedField'45'Γ_12099 v0
  = case coe v0 of
      C_mkGeneralizeTel_12105 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_12101 ::
  T_GeneralizeTel_12103 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2038
d_'46'generalizedField'45'utxoSt''_12101 v0
  = case coe v0 of
      C_mkGeneralizeTel_12105 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_12103 a0 a1 = ()
data T_GeneralizeTel_12103
  = C_mkGeneralizeTel_12105 T_LState_1966
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2630
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2158
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2038
