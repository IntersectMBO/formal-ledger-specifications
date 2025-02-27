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
d_Tx_362 a0 = ()
-- _.epoch
d_epoch_428 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_428 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0))
-- _.Tx.body
d_body_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524
d_body_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2636 (coe v0)
-- _.Tx.isValid
d_isValid_1384 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2626 -> Bool
d_isValid_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2640 (coe v0)
-- _.Tx.txAD
d_txAD_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 -> Maybe AgdaAny
d_txAD_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2642 (coe v0)
-- _.Tx.wits
d_wits_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2626 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2606
d_wits_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2638 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2146 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1558 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1562 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 -> ()
d_GovState_1562 = erased
-- Ledger.Conway.Conformance.Ledger._.To-GovEnv
d_To'45'GovEnv_1564 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1564 ~v0 ~v1 = du_To'45'GovEnv_1564
du_To'45'GovEnv_1564 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1564
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_To'45'GovEnv_2176
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1604 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1622 v0 ~v1 = du_updateDeposits_1622 v0
du_updateDeposits_1622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1622 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2472 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1646 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1646 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2044 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1648 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 -> Integer
d_donations_1648 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2046 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1650 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 -> Integer
d_fees_1650 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2042 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1652 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1652 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2040 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1656 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1674 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1082 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_836] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1082 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1674 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1702 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-CertEnv
d_To'45'CertEnv_1768 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_1768 ~v0 ~v1 = du_To'45'CertEnv_1768
du_To'45'CertEnv_1768 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_1768
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_974
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_1864 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1082 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1046
d_dState_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1090 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_1866 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1082 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1066
d_gState_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1094 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_1868 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1082 ->
  MAlonzo.Code.Ledger.Certs.T_PState_910
d_pState_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1092 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._|ᵒ_
d__'124''7506'__1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'124''7506'__1936 v0 ~v1 = du__'124''7506'__1936 v0
du__'124''7506'__1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_932 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'124''7506'__1936 v0
  = coe MAlonzo.Code.Ledger.Ledger.du__'124''7506'__2280 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_1938 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-LEnv
d_To'45'LEnv_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1940 ~v0 ~v1 = du_To'45'LEnv_1940
du_To'45'LEnv_1940 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1940
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2296
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_1942 ~v0 ~v1 = du_allColdCreds_1942
du_allColdCreds_1942 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_1942
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2286
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1944 ~v0 ~v1 = du_txgov_1944
du_txgov_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2524 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1944 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2198
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_1948 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_1948 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2178 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_1950 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1950 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2176 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_1952 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 -> Maybe AgdaAny
d_ppolicy_1952 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2174 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_1954 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 -> AgdaAny
d_slot_1954 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2172 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_1956 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 -> Integer
d_treasury_1956 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2180 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_1958 a0 a1 = ()
data T_LState_1958
  = C_'10214'_'44'_'44'_'10215''737'_1972 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1082
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_1966 ::
  T_LState_1958 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
d_utxoSt_1966 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1972 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_1968 ::
  T_LState_1958 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1968 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1972 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_1970 ::
  T_LState_1958 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1082
d_certState_1970 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1972 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.To-LState
d_To'45'LState_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_1974 ~v0 ~v1 = du_To'45'LState_1974
du_To'45'LState_1974 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_1974
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
                                 (1958 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1604 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1958 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1562 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1958 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1702 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_1972))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__1992 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__1992
  = C_LEDGER'45'V_2092 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2172 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1082
d_certState_1996 ~v0 ~v1 v2 = du_certState_1996 v2
du_certState_1996 ::
  T_GeneralizeTel_6973 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1082
du_certState_1996 v0
  = coe
      d_certState_1970 (coe d_'46'generalizedField'45's_6961 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1998 ~v0 ~v1 v2 = du_govSt_1998 v2
du_govSt_1998 ::
  T_GeneralizeTel_6973 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1998 v0
  = coe d_govSt_1968 (coe d_'46'generalizedField'45's_6961 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
d_utxoSt_2000 ~v0 ~v1 v2 = du_utxoSt_2000 v2
du_utxoSt_2000 ::
  T_GeneralizeTel_6973 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
du_utxoSt_2000 v0
  = coe d_utxoSt_1966 (coe d_'46'generalizedField'45's_6961 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 -> [MAlonzo.Code.Ledger.Certs.T_DCert_836]
d_txcerts_2022 ~v0 ~v1 v2 = du_txcerts_2022 v2
du_txcerts_2022 ::
  T_GeneralizeTel_6973 -> [MAlonzo.Code.Ledger.Certs.T_DCert_836]
du_txcerts_2022 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2578
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_6963 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2028 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 -> AgdaAny
d_txid_2028 ~v0 ~v1 v2 = du_txid_2028 v2
du_txid_2028 :: T_GeneralizeTel_6973 -> AgdaAny
du_txid_2028 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2598
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_6963 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
d_txvote_2042 ~v0 ~v1 v2 = du_txvote_2042 v2
du_txvote_2042 ::
  T_GeneralizeTel_6973 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
du_txvote_2042 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2582
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_6963 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2044 ~v0 ~v1 v2 = du_txwdrls_2044 v2
du_txwdrls_2044 ::
  T_GeneralizeTel_6973 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2044 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2580
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2636
         (coe d_'46'generalizedField'45'tx_6963 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
d_enactState_2048 ~v0 ~v1 v2 = du_enactState_2048 v2
du_enactState_2048 ::
  T_GeneralizeTel_6973 -> MAlonzo.Code.Ledger.Enact.T_EnactState_830
du_enactState_2048 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2178
      (coe d_'46'generalizedField'45'Γ_6965 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2050 ~v0 ~v1 v2 = du_pparams_2050 v2
du_pparams_2050 ::
  T_GeneralizeTel_6973 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2050 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2176
      (coe d_'46'generalizedField'45'Γ_6965 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 -> Maybe AgdaAny
d_ppolicy_2052 ~v0 ~v1 v2 = du_ppolicy_2052 v2
du_ppolicy_2052 :: T_GeneralizeTel_6973 -> Maybe AgdaAny
du_ppolicy_2052 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2174
      (coe d_'46'generalizedField'45'Γ_6965 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 -> AgdaAny
d_slot_2054 ~v0 ~v1 v2 = du_slot_2054 v2
du_slot_2054 :: T_GeneralizeTel_6973 -> AgdaAny
du_slot_2054 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2172
      (coe d_'46'generalizedField'45'Γ_6965 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2060 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1046
d_dState_2060 ~v0 ~v1 v2 = du_dState_2060 v2
du_dState_2060 ::
  T_GeneralizeTel_6973 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1046
du_dState_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1090
      (coe
         d_certState_1970 (coe d_'46'generalizedField'45's_6961 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2070 ~v0 ~v1 v2 = du_rewards_2070 v2
du_rewards_2070 ::
  T_GeneralizeTel_6973 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1060
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1090
         (coe
            d_certState_1970 (coe d_'46'generalizedField'45's_6961 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2084 ~v0 ~v1 v2 = du_pparams_2084 v2
du_pparams_2084 ::
  T_GeneralizeTel_6973 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2084 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2176
      (coe d_'46'generalizedField'45'Γ_6965 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 -> AgdaAny
d_slot_2088 ~v0 ~v1 v2 = du_slot_2088 v2
du_slot_2088 :: T_GeneralizeTel_6973 -> AgdaAny
du_slot_2088 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2172
      (coe d_'46'generalizedField'45'Γ_6965 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2090 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_6973 -> Integer
d_treasury_2090 ~v0 ~v1 v2 = du_treasury_2090 v2
du_treasury_2090 :: T_GeneralizeTel_6973 -> Integer
du_treasury_2090 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2180
      (coe d_'46'generalizedField'45'Γ_6965 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_11955 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1082
d_certState_2096 ~v0 ~v1 v2 = du_certState_2096 v2
du_certState_2096 ::
  T_GeneralizeTel_11955 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1082
du_certState_2096 v0
  = coe
      d_certState_1970 (coe d_'46'generalizedField'45's_11947 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_11955 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2098 ~v0 ~v1 v2 = du_govSt_2098 v2
du_govSt_2098 ::
  T_GeneralizeTel_11955 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2098 v0
  = coe d_govSt_1968 (coe d_'46'generalizedField'45's_11947 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2100 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_11955 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
d_utxoSt_2100 ~v0 ~v1 v2 = du_utxoSt_2100 v2
du_utxoSt_2100 ::
  T_GeneralizeTel_11955 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
du_utxoSt_2100 v0
  = coe
      d_utxoSt_1966 (coe d_'46'generalizedField'45's_11947 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_11955 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2164 ~v0 ~v1 v2 = du_pparams_2164 v2
du_pparams_2164 ::
  T_GeneralizeTel_11955 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2164 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2176
      (coe d_'46'generalizedField'45'Γ_11951 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_11955 -> AgdaAny
d_slot_2168 ~v0 ~v1 v2 = du_slot_2168 v2
du_slot_2168 :: T_GeneralizeTel_11955 -> AgdaAny
du_slot_2168 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2172
      (coe d_'46'generalizedField'45'Γ_11951 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_11955 -> Integer
d_treasury_2170 ~v0 ~v1 v2 = du_treasury_2170 v2
du_treasury_2170 :: T_GeneralizeTel_11955 -> Integer
du_treasury_2170 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2180
      (coe d_'46'generalizedField'45'Γ_11951 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  T_LState_1958 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2626] -> T_LState_1958 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2190 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_6961 ::
  T_GeneralizeTel_6973 -> T_LState_1958
d_'46'generalizedField'45's_6961 v0
  = case coe v0 of
      C_mkGeneralizeTel_6975 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_6963 ::
  T_GeneralizeTel_6973 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2626
d_'46'generalizedField'45'tx_6963 v0
  = case coe v0 of
      C_mkGeneralizeTel_6975 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_6965 ::
  T_GeneralizeTel_6973 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2160
d_'46'generalizedField'45'Γ_6965 v0
  = case coe v0 of
      C_mkGeneralizeTel_6975 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_6967 ::
  T_GeneralizeTel_6973 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
d_'46'generalizedField'45'utxoSt''_6967 v0
  = case coe v0 of
      C_mkGeneralizeTel_6975 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_6969 ::
  T_GeneralizeTel_6973 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1082
d_'46'generalizedField'45'certState''_6969 v0
  = case coe v0 of
      C_mkGeneralizeTel_6975 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_6971 ::
  T_GeneralizeTel_6973 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_6971 v0
  = case coe v0 of
      C_mkGeneralizeTel_6975 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_6973 a0 a1 = ()
data T_GeneralizeTel_6973
  = C_mkGeneralizeTel_6975 T_LState_1958
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2626
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2160
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1082
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_11947 ::
  T_GeneralizeTel_11955 -> T_LState_1958
d_'46'generalizedField'45's_11947 v0
  = case coe v0 of
      C_mkGeneralizeTel_11957 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_11949 ::
  T_GeneralizeTel_11955 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2626
d_'46'generalizedField'45'tx_11949 v0
  = case coe v0 of
      C_mkGeneralizeTel_11957 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_11951 ::
  T_GeneralizeTel_11955 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2160
d_'46'generalizedField'45'Γ_11951 v0
  = case coe v0 of
      C_mkGeneralizeTel_11957 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_11953 ::
  T_GeneralizeTel_11955 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
d_'46'generalizedField'45'utxoSt''_11953 v0
  = case coe v0 of
      C_mkGeneralizeTel_11957 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_11955 a0 a1 = ()
data T_GeneralizeTel_11955
  = C_mkGeneralizeTel_11957 T_LState_1958
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2626
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2160
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2030
