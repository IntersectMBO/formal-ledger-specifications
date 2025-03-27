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
d_Tx_358 a0 = ()
-- _.epoch
d_epoch_424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_424 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1514 (coe v0))
-- _.Tx.body
d_body_1380 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2634 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532
d_body_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2644 (coe v0)
-- _.Tx.isValid
d_isValid_1382 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2634 -> Bool
d_isValid_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2648 (coe v0)
-- _.Tx.txAD
d_txAD_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2634 -> Maybe AgdaAny
d_txAD_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2650 (coe v0)
-- _.Tx.wits
d_wits_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2634 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2614
d_wits_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2646 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2142 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1556 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 -> ()
d_GovState_1560 = erased
-- Ledger.Conway.Conformance.Ledger._.To-GovEnv
d_To'45'GovEnv_1562 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1562 ~v0 ~v1 = du_To'45'GovEnv_1562
du_To'45'GovEnv_1562 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1562
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_To'45'GovEnv_2172
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1602 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1620 v0 ~v1 = du_updateDeposits_1620 v0
du_updateDeposits_1620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1620 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2466 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1644 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1644 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2036 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1646 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 -> Integer
d_donations_1646 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2038 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1648 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 -> Integer
d_fees_1648 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2034 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1650 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1650 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2032 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1654 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1672 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_874 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_838] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1672 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1700 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-CertEnv
d_To'45'CertEnv_1766 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_1766 ~v0 ~v1 = du_To'45'CertEnv_1766
du_To'45'CertEnv_1766 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_1766
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_976
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_1862 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1048
d_dState_1862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1092 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_1864 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1068
d_gState_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1096 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_1866 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084 ->
  MAlonzo.Code.Ledger.Certs.T_PState_912
d_pState_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1094 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_1934 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-LEnv
d_To'45'LEnv_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1936 ~v0 ~v1 = du_To'45'LEnv_1936
du_To'45'LEnv_1936 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1936
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2184
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_832 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_1938 ~v0 ~v1 = du_allColdCreds_1938
du_allColdCreds_1938 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_832 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_1938
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2258
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_934 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_1940 v0 ~v1 = du_rmOrphanDRepVotes_1940 v0
du_rmOrphanDRepVotes_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_934 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_1940 v0
  = coe MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2238 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1942 ~v0 ~v1 = du_txgov_1942
du_txgov_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2532 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1942 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2188
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_1946 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2146 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_832
d_enactState_1946 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2164 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_1948 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2146 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1948 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2162 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_1950 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2146 -> Maybe AgdaAny
d_ppolicy_1950 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2160 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_1952 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2146 -> AgdaAny
d_slot_1952 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2158 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_1954 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2146 -> Integer
d_treasury_1954 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2166 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_1956 a0 a1 = ()
data T_LState_1956
  = C_'10214'_'44'_'44'_'10215''737'_1970 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_1964 ::
  T_LState_1956 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_utxoSt_1964 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1970 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_1966 ::
  T_LState_1956 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1966 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1970 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_1968 ::
  T_LState_1956 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084
d_certState_1968 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1970 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.To-LState
d_To'45'LState_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_1972 ~v0 ~v1 = du_To'45'LState_1972
du_To'45'LState_1972 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_1972
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
                                 (1956 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1602 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1956 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1560 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1956 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1700 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_1970))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__1990 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__1990
  = C_LEDGER'45'V_2090 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2170 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084
d_certState_1994 ~v0 ~v1 v2 = du_certState_1994 v2
du_certState_1994 ::
  T_GeneralizeTel_7117 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084
du_certState_1994 v0
  = coe
      d_certState_1968 (coe d_'46'generalizedField'45's_7105 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1996 ~v0 ~v1 v2 = du_govSt_1996 v2
du_govSt_1996 ::
  T_GeneralizeTel_7117 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1996 v0
  = coe d_govSt_1966 (coe d_'46'generalizedField'45's_7105 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_utxoSt_1998 ~v0 ~v1 v2 = du_utxoSt_1998 v2
du_utxoSt_1998 ::
  T_GeneralizeTel_7117 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
du_utxoSt_1998 v0
  = coe d_utxoSt_1964 (coe d_'46'generalizedField'45's_7105 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2020 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 -> [MAlonzo.Code.Ledger.Certs.T_DCert_838]
d_txcerts_2020 ~v0 ~v1 v2 = du_txcerts_2020 v2
du_txcerts_2020 ::
  T_GeneralizeTel_7117 -> [MAlonzo.Code.Ledger.Certs.T_DCert_838]
du_txcerts_2020 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2586
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2644
         (coe d_'46'generalizedField'45'tx_7107 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 -> AgdaAny
d_txid_2026 ~v0 ~v1 v2 = du_txid_2026 v2
du_txid_2026 :: T_GeneralizeTel_7117 -> AgdaAny
du_txid_2026 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2606
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2644
         (coe d_'46'generalizedField'45'tx_7107 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2040 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_726]
d_txvote_2040 ~v0 ~v1 v2 = du_txvote_2040 v2
du_txvote_2040 ::
  T_GeneralizeTel_7117 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_726]
du_txvote_2040 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2590
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2644
         (coe d_'46'generalizedField'45'tx_7107 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2042 ~v0 ~v1 v2 = du_txwdrls_2042 v2
du_txwdrls_2042 ::
  T_GeneralizeTel_7117 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2042 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2588
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2644
         (coe d_'46'generalizedField'45'tx_7107 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 -> MAlonzo.Code.Ledger.Enact.T_EnactState_832
d_enactState_2046 ~v0 ~v1 v2 = du_enactState_2046 v2
du_enactState_2046 ::
  T_GeneralizeTel_7117 -> MAlonzo.Code.Ledger.Enact.T_EnactState_832
du_enactState_2046 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2164
      (coe d_'46'generalizedField'45'Γ_7109 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2048 ~v0 ~v1 v2 = du_pparams_2048 v2
du_pparams_2048 ::
  T_GeneralizeTel_7117 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2048 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2162
      (coe d_'46'generalizedField'45'Γ_7109 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 -> Maybe AgdaAny
d_ppolicy_2050 ~v0 ~v1 v2 = du_ppolicy_2050 v2
du_ppolicy_2050 :: T_GeneralizeTel_7117 -> Maybe AgdaAny
du_ppolicy_2050 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2160
      (coe d_'46'generalizedField'45'Γ_7109 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 -> AgdaAny
d_slot_2052 ~v0 ~v1 v2 = du_slot_2052 v2
du_slot_2052 :: T_GeneralizeTel_7117 -> AgdaAny
du_slot_2052 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2158
      (coe d_'46'generalizedField'45'Γ_7109 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1048
d_dState_2058 ~v0 ~v1 v2 = du_dState_2058 v2
du_dState_2058 ::
  T_GeneralizeTel_7117 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1048
du_dState_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1092
      (coe
         d_certState_1968 (coe d_'46'generalizedField'45's_7105 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2068 ~v0 ~v1 v2 = du_rewards_2068 v2
du_rewards_2068 ::
  T_GeneralizeTel_7117 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1062
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1092
         (coe
            d_certState_1968 (coe d_'46'generalizedField'45's_7105 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2082 ~v0 ~v1 v2 = du_pparams_2082 v2
du_pparams_2082 ::
  T_GeneralizeTel_7117 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2082 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2162
      (coe d_'46'generalizedField'45'Γ_7109 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 -> AgdaAny
d_slot_2086 ~v0 ~v1 v2 = du_slot_2086 v2
du_slot_2086 :: T_GeneralizeTel_7117 -> AgdaAny
du_slot_2086 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2158
      (coe d_'46'generalizedField'45'Γ_7109 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_7117 -> Integer
d_treasury_2088 ~v0 ~v1 v2 = du_treasury_2088 v2
du_treasury_2088 :: T_GeneralizeTel_7117 -> Integer
du_treasury_2088 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2166
      (coe d_'46'generalizedField'45'Γ_7109 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2094 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_12099 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084
d_certState_2094 ~v0 ~v1 v2 = du_certState_2094 v2
du_certState_2094 ::
  T_GeneralizeTel_12099 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084
du_certState_2094 v0
  = coe
      d_certState_1968 (coe d_'46'generalizedField'45's_12091 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_12099 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2096 ~v0 ~v1 v2 = du_govSt_2096 v2
du_govSt_2096 ::
  T_GeneralizeTel_12099 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2096 v0
  = coe d_govSt_1966 (coe d_'46'generalizedField'45's_12091 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_12099 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_utxoSt_2098 ~v0 ~v1 v2 = du_utxoSt_2098 v2
du_utxoSt_2098 ::
  T_GeneralizeTel_12099 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
du_utxoSt_2098 v0
  = coe
      d_utxoSt_1964 (coe d_'46'generalizedField'45's_12091 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_12099 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2162 ~v0 ~v1 v2 = du_pparams_2162 v2
du_pparams_2162 ::
  T_GeneralizeTel_12099 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2162 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2162
      (coe d_'46'generalizedField'45'Γ_12095 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_12099 -> AgdaAny
d_slot_2166 ~v0 ~v1 v2 = du_slot_2166 v2
du_slot_2166 :: T_GeneralizeTel_12099 -> AgdaAny
du_slot_2166 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2158
      (coe d_'46'generalizedField'45'Γ_12095 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  T_GeneralizeTel_12099 -> Integer
d_treasury_2168 ~v0 ~v1 v2 = du_treasury_2168 v2
du_treasury_2168 :: T_GeneralizeTel_12099 -> Integer
du_treasury_2168 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2166
      (coe d_'46'generalizedField'45'Γ_12095 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1722 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2146 ->
  T_LState_1956 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2634] -> T_LState_1956 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2188 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_7105 ::
  T_GeneralizeTel_7117 -> T_LState_1956
d_'46'generalizedField'45's_7105 v0
  = case coe v0 of
      C_mkGeneralizeTel_7119 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_7107 ::
  T_GeneralizeTel_7117 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2634
d_'46'generalizedField'45'tx_7107 v0
  = case coe v0 of
      C_mkGeneralizeTel_7119 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_7109 ::
  T_GeneralizeTel_7117 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2146
d_'46'generalizedField'45'Γ_7109 v0
  = case coe v0 of
      C_mkGeneralizeTel_7119 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_7111 ::
  T_GeneralizeTel_7117 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_'46'generalizedField'45'utxoSt''_7111 v0
  = case coe v0 of
      C_mkGeneralizeTel_7119 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_7113 ::
  T_GeneralizeTel_7117 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084
d_'46'generalizedField'45'certState''_7113 v0
  = case coe v0 of
      C_mkGeneralizeTel_7119 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_7115 ::
  T_GeneralizeTel_7117 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_7115 v0
  = case coe v0 of
      C_mkGeneralizeTel_7119 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_7117 a0 a1 = ()
data T_GeneralizeTel_7117
  = C_mkGeneralizeTel_7119 T_LState_1956
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2634
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2146
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1084
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_12091 ::
  T_GeneralizeTel_12099 -> T_LState_1956
d_'46'generalizedField'45's_12091 v0
  = case coe v0 of
      C_mkGeneralizeTel_12101 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_12093 ::
  T_GeneralizeTel_12099 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2634
d_'46'generalizedField'45'tx_12093 v0
  = case coe v0 of
      C_mkGeneralizeTel_12101 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_12095 ::
  T_GeneralizeTel_12099 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2146
d_'46'generalizedField'45'Γ_12095 v0
  = case coe v0 of
      C_mkGeneralizeTel_12101 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_12097 ::
  T_GeneralizeTel_12099 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
d_'46'generalizedField'45'utxoSt''_12097 v0
  = case coe v0 of
      C_mkGeneralizeTel_12101 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_12099 a0 a1 = ()
data T_GeneralizeTel_12099
  = C_mkGeneralizeTel_12101 T_LState_1956
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2634
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2146
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2022
