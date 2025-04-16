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
d_epoch_426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_426 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1490 (coe v0))
-- _.Tx.body
d_body_1394 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518
d_body_1394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2630 (coe v0)
-- _.Tx.isValid
d_isValid_1396 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2620 -> Bool
d_isValid_1396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2634 (coe v0)
-- _.Tx.txAD
d_txAD_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 -> Maybe AgdaAny
d_txAD_1398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2636 (coe v0)
-- _.Tx.wits
d_wits_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2620 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2600
d_wits_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2632 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2156 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1570 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 -> ()
d_GovState_1574 = erased
-- Ledger.Conway.Conformance.Ledger._.To-GovEnv
d_To'45'GovEnv_1576 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1576 ~v0 ~v1 = du_To'45'GovEnv_1576
du_To'45'GovEnv_1576 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1576
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_To'45'GovEnv_2186
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1616 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1634 v0 ~v1 = du_updateDeposits_1634 v0
du_updateDeposits_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1634 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2480 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1658 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1658 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2050 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1660 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 -> Integer
d_donations_1660 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2052 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1662 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 -> Integer
d_fees_1662 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2048 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1664 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1664 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2046 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1668 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1686 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_892 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1686 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1714 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-CertEnv
d_To'45'CertEnv_1780 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_1780 ~v0 ~v1 = du_To'45'CertEnv_1780
du_To'45'CertEnv_1780 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_1780
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_994
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_1876 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1066
d_dState_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_1878 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1086
d_gState_1878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1114 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_1880 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  MAlonzo.Code.Ledger.Certs.T_PState_930
d_pState_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1112 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_1948 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-LEnv
d_To'45'LEnv_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1950 ~v0 ~v1 = du_To'45'LEnv_1950
du_To'45'LEnv_1950 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1950
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2198
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_1952 ~v0 ~v1 = du_allColdCreds_1952
du_allColdCreds_1952 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_1952
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2272
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_1954 v0 ~v1 = du_rmOrphanDRepVotes_1954 v0
du_rmOrphanDRepVotes_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_1954 v0
  = coe MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2252 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1956 ~v0 ~v1 = du_txgov_1956
du_txgov_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2518 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1956 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2202
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_1960 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_enactState_1960 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2178 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_1962 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1962 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2176 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_1964 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 -> Maybe AgdaAny
d_ppolicy_1964 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2174 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_1966 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 -> AgdaAny
d_slot_1966 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2172 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_1968 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 -> Integer
d_treasury_1968 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2180 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_1970 a0 a1 = ()
data T_LState_1970
  = C_'10214'_'44'_'44'_'10215''737'_1984 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_1978 ::
  T_LState_1970 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
d_utxoSt_1978 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1984 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_1980 ::
  T_LState_1970 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1980 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1984 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_1982 ::
  T_LState_1970 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
d_certState_1982 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1984 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.To-LState
d_To'45'LState_1986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_1986 ~v0 ~v1 = du_To'45'LState_1986
du_To'45'LState_1986 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_1986
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
                                 (1970 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1616 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1970 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1574 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1970 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1714 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_1984))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2004 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2004
  = C_LEDGER'45'V_2104 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2184 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
d_certState_2008 ~v0 ~v1 v2 = du_certState_2008 v2
du_certState_2008 ::
  T_GeneralizeTel_7135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
du_certState_2008 v0
  = coe
      d_certState_1982 (coe d_'46'generalizedField'45's_7123 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2010 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2010 ~v0 ~v1 v2 = du_govSt_2010 v2
du_govSt_2010 ::
  T_GeneralizeTel_7135 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2010 v0
  = coe d_govSt_1980 (coe d_'46'generalizedField'45's_7123 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
d_utxoSt_2012 ~v0 ~v1 v2 = du_utxoSt_2012 v2
du_utxoSt_2012 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
du_utxoSt_2012 v0
  = coe d_utxoSt_1978 (coe d_'46'generalizedField'45's_7123 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_2034 ~v0 ~v1 v2 = du_txcerts_2034 v2
du_txcerts_2034 ::
  T_GeneralizeTel_7135 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
du_txcerts_2034 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2572
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_7125 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2040 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 -> AgdaAny
d_txid_2040 ~v0 ~v1 v2 = du_txid_2040 v2
du_txid_2040 :: T_GeneralizeTel_7135 -> AgdaAny
du_txid_2040 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2592
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_7125 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740]
d_txvote_2054 ~v0 ~v1 v2 = du_txvote_2054 v2
du_txvote_2054 ::
  T_GeneralizeTel_7135 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740]
du_txvote_2054 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2576
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_7125 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2056 ~v0 ~v1 v2 = du_txwdrls_2056 v2
du_txwdrls_2056 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2056 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2574
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2630
         (coe d_'46'generalizedField'45'tx_7125 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2060 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_enactState_2060 ~v0 ~v1 v2 = du_enactState_2060 v2
du_enactState_2060 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
du_enactState_2060 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2178
      (coe d_'46'generalizedField'45'Γ_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2062 ~v0 ~v1 v2 = du_pparams_2062 v2
du_pparams_2062 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2062 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2176
      (coe d_'46'generalizedField'45'Γ_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 -> Maybe AgdaAny
d_ppolicy_2064 ~v0 ~v1 v2 = du_ppolicy_2064 v2
du_ppolicy_2064 :: T_GeneralizeTel_7135 -> Maybe AgdaAny
du_ppolicy_2064 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2174
      (coe d_'46'generalizedField'45'Γ_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2066 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 -> AgdaAny
d_slot_2066 ~v0 ~v1 v2 = du_slot_2066 v2
du_slot_2066 :: T_GeneralizeTel_7135 -> AgdaAny
du_slot_2066 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2172
      (coe d_'46'generalizedField'45'Γ_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1066
d_dState_2072 ~v0 ~v1 v2 = du_dState_2072 v2
du_dState_2072 ::
  T_GeneralizeTel_7135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1066
du_dState_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110
      (coe
         d_certState_1982 (coe d_'46'generalizedField'45's_7123 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2082 ~v0 ~v1 v2 = du_rewards_2082 v2
du_rewards_2082 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1080
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110
         (coe
            d_certState_1982 (coe d_'46'generalizedField'45's_7123 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2096 ~v0 ~v1 v2 = du_pparams_2096 v2
du_pparams_2096 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2096 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2176
      (coe d_'46'generalizedField'45'Γ_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2100 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 -> AgdaAny
d_slot_2100 ~v0 ~v1 v2 = du_slot_2100 v2
du_slot_2100 :: T_GeneralizeTel_7135 -> AgdaAny
du_slot_2100 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2172
      (coe d_'46'generalizedField'45'Γ_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2102 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_7135 -> Integer
d_treasury_2102 ~v0 ~v1 v2 = du_treasury_2102 v2
du_treasury_2102 :: T_GeneralizeTel_7135 -> Integer
du_treasury_2102 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2180
      (coe d_'46'generalizedField'45'Γ_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_12101 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
d_certState_2108 ~v0 ~v1 v2 = du_certState_2108 v2
du_certState_2108 ::
  T_GeneralizeTel_12101 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
du_certState_2108 v0
  = coe
      d_certState_1982 (coe d_'46'generalizedField'45's_12093 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_12101 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2110 ~v0 ~v1 v2 = du_govSt_2110 v2
du_govSt_2110 ::
  T_GeneralizeTel_12101 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2110 v0
  = coe d_govSt_1980 (coe d_'46'generalizedField'45's_12093 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_12101 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
d_utxoSt_2112 ~v0 ~v1 v2 = du_utxoSt_2112 v2
du_utxoSt_2112 ::
  T_GeneralizeTel_12101 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
du_utxoSt_2112 v0
  = coe
      d_utxoSt_1978 (coe d_'46'generalizedField'45's_12093 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_12101 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2176 ~v0 ~v1 v2 = du_pparams_2176 v2
du_pparams_2176 ::
  T_GeneralizeTel_12101 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2176 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2176
      (coe d_'46'generalizedField'45'Γ_12097 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_12101 -> AgdaAny
d_slot_2180 ~v0 ~v1 v2 = du_slot_2180 v2
du_slot_2180 :: T_GeneralizeTel_12101 -> AgdaAny
du_slot_2180 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2172
      (coe d_'46'generalizedField'45'Γ_12097 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  T_GeneralizeTel_12101 -> Integer
d_treasury_2182 ~v0 ~v1 v2 = du_treasury_2182 v2
du_treasury_2182 :: T_GeneralizeTel_12101 -> Integer
du_treasury_2182 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2180
      (coe d_'46'generalizedField'45'Γ_12097 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1736 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2160 ->
  T_LState_1970 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2620] -> T_LState_1970 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2202 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_7123 ::
  T_GeneralizeTel_7135 -> T_LState_1970
d_'46'generalizedField'45's_7123 v0
  = case coe v0 of
      C_mkGeneralizeTel_7137 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_7125 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2620
d_'46'generalizedField'45'tx_7125 v0
  = case coe v0 of
      C_mkGeneralizeTel_7137 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_7127 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2160
d_'46'generalizedField'45'Γ_7127 v0
  = case coe v0 of
      C_mkGeneralizeTel_7137 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_7129 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
d_'46'generalizedField'45'utxoSt''_7129 v0
  = case coe v0 of
      C_mkGeneralizeTel_7137 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_7131 ::
  T_GeneralizeTel_7135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
d_'46'generalizedField'45'certState''_7131 v0
  = case coe v0 of
      C_mkGeneralizeTel_7137 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_7133 ::
  T_GeneralizeTel_7135 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_7133 v0
  = case coe v0 of
      C_mkGeneralizeTel_7137 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_7135 a0 a1 = ()
data T_GeneralizeTel_7135
  = C_mkGeneralizeTel_7137 T_LState_1970
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2620
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2160
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_12093 ::
  T_GeneralizeTel_12101 -> T_LState_1970
d_'46'generalizedField'45's_12093 v0
  = case coe v0 of
      C_mkGeneralizeTel_12103 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_12095 ::
  T_GeneralizeTel_12101 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2620
d_'46'generalizedField'45'tx_12095 v0
  = case coe v0 of
      C_mkGeneralizeTel_12103 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_12097 ::
  T_GeneralizeTel_12101 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2160
d_'46'generalizedField'45'Γ_12097 v0
  = case coe v0 of
      C_mkGeneralizeTel_12103 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_12099 ::
  T_GeneralizeTel_12101 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
d_'46'generalizedField'45'utxoSt''_12099 v0
  = case coe v0 of
      C_mkGeneralizeTel_12103 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_12101 a0 a1 = ()
data T_GeneralizeTel_12101
  = C_mkGeneralizeTel_12103 T_LState_1970
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2620
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2160
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2036
