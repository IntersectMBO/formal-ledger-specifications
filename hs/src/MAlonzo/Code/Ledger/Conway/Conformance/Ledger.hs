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
d_Tx_364 a0 = ()
-- _.epoch
d_epoch_430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_430 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1514 (coe v0))
-- _.Tx.body
d_body_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2652 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2550
d_body_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2662 (coe v0)
-- _.Tx.isValid
d_isValid_1412 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2652 -> Bool
d_isValid_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2666 (coe v0)
-- _.Tx.txAD
d_txAD_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2652 -> Maybe AgdaAny
d_txAD_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2668 (coe v0)
-- _.Tx.wits
d_wits_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2652 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2632
d_wits_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2664 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2180 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1586 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 -> ()
d_GovState_1590 = erased
-- Ledger.Conway.Conformance.Ledger._.To-GovEnv
d_To'45'GovEnv_1592 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1592 ~v0 ~v1 = du_To'45'GovEnv_1592
du_To'45'GovEnv_1592 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1592
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_To'45'GovEnv_2210
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1632 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2550 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1650 v0 ~v1 = du_updateDeposits_1650 v0
du_updateDeposits_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2550 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1650 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2504 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1674 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1674 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2074 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1676 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2060 -> Integer
d_donations_1676 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2076 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1678 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2060 -> Integer
d_fees_1678 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2072 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1680 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1680 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2070 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1684 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_872] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1702 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1730 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-CertEnv
d_To'45'CertEnv_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_1796 ~v0 ~v1 = du_To'45'CertEnv_1796
du_To'45'CertEnv_1796 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_1796
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_1010
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_1892 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1074
d_dState_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1118 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_1894 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1094
d_gState_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1122 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_1896 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110 ->
  MAlonzo.Code.Ledger.Certs.T_PState_946
d_pState_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1120 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_1972 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-LEnv
d_To'45'LEnv_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1974 ~v0 ~v1 = du_To'45'LEnv_1974
du_To'45'LEnv_1974 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1974
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2222
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_1976 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_1976 ~v0 ~v1 = du_allColdCreds_1976
du_allColdCreds_1976 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_1976
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2296
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_968 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_1978 v0 ~v1 = du_rmOrphanDRepVotes_1978 v0
du_rmOrphanDRepVotes_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_968 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_1978 v0
  = coe MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2276 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2550 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1980 ~v0 ~v1 = du_txgov_1980
du_txgov_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2550 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1980 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2226
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_1984 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2184 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_enactState_1984 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2202 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_1986 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2184 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1986 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2200 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_1988 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2184 -> Maybe AgdaAny
d_ppolicy_1988 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2198 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_1990 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2184 -> AgdaAny
d_slot_1990 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2196 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_1992 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2184 -> Integer
d_treasury_1992 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2204 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_1994 a0 a1 = ()
data T_LState_1994
  = C_'10214'_'44'_'44'_'10215''737'_2008 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2060
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2002 ::
  T_LState_1994 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2060
d_utxoSt_2002 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2008 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2004 ::
  T_LState_1994 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2004 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2008 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2006 ::
  T_LState_1994 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
d_certState_2006 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2008 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.To-LState
d_To'45'LState_2010 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_2010 ~v0 ~v1 = du_To'45'LState_2010
du_To'45'LState_2010 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_2010
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
                                 (1994 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1632 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1994 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1590 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1994 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1730 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2008))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2028 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2028
  = C_LEDGER'45'V_2128 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2060
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2208 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
d_certState_2032 ~v0 ~v1 v2 = du_certState_2032 v2
du_certState_2032 ::
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
du_certState_2032 v0
  = coe
      d_certState_2006 (coe d_'46'generalizedField'45's_7155 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2034 ~v0 ~v1 v2 = du_govSt_2034 v2
du_govSt_2034 ::
  T_GeneralizeTel_7167 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2034 v0
  = coe d_govSt_2004 (coe d_'46'generalizedField'45's_7155 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2060
d_utxoSt_2036 ~v0 ~v1 v2 = du_utxoSt_2036 v2
du_utxoSt_2036 ::
  T_GeneralizeTel_7167 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2060
du_utxoSt_2036 v0
  = coe d_utxoSt_2002 (coe d_'46'generalizedField'45's_7155 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 -> [MAlonzo.Code.Ledger.Certs.T_DCert_872]
d_txcerts_2058 ~v0 ~v1 v2 = du_txcerts_2058 v2
du_txcerts_2058 ::
  T_GeneralizeTel_7167 -> [MAlonzo.Code.Ledger.Certs.T_DCert_872]
du_txcerts_2058 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2604
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2662
         (coe d_'46'generalizedField'45'tx_7157 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 -> AgdaAny
d_txid_2064 ~v0 ~v1 v2 = du_txid_2064 v2
du_txid_2064 :: T_GeneralizeTel_7167 -> AgdaAny
du_txid_2064 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2624
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2662
         (coe d_'46'generalizedField'45'tx_7157 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740]
d_txvote_2078 ~v0 ~v1 v2 = du_txvote_2078 v2
du_txvote_2078 ::
  T_GeneralizeTel_7167 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740]
du_txvote_2078 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2608
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2662
         (coe d_'46'generalizedField'45'tx_7157 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2080 ~v0 ~v1 v2 = du_txwdrls_2080 v2
du_txwdrls_2080 ::
  T_GeneralizeTel_7167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2080 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2606
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2662
         (coe d_'46'generalizedField'45'tx_7157 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_enactState_2084 ~v0 ~v1 v2 = du_enactState_2084 v2
du_enactState_2084 ::
  T_GeneralizeTel_7167 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
du_enactState_2084 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2202
      (coe d_'46'generalizedField'45'Γ_7159 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2086 ~v0 ~v1 v2 = du_pparams_2086 v2
du_pparams_2086 ::
  T_GeneralizeTel_7167 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2086 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2200
      (coe d_'46'generalizedField'45'Γ_7159 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 -> Maybe AgdaAny
d_ppolicy_2088 ~v0 ~v1 v2 = du_ppolicy_2088 v2
du_ppolicy_2088 :: T_GeneralizeTel_7167 -> Maybe AgdaAny
du_ppolicy_2088 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2198
      (coe d_'46'generalizedField'45'Γ_7159 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2090 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 -> AgdaAny
d_slot_2090 ~v0 ~v1 v2 = du_slot_2090 v2
du_slot_2090 :: T_GeneralizeTel_7167 -> AgdaAny
du_slot_2090 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2196
      (coe d_'46'generalizedField'45'Γ_7159 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1074
d_dState_2096 ~v0 ~v1 v2 = du_dState_2096 v2
du_dState_2096 ::
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1074
du_dState_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1118
      (coe
         d_certState_2006 (coe d_'46'generalizedField'45's_7155 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2106 ~v0 ~v1 v2 = du_rewards_2106 v2
du_rewards_2106 ::
  T_GeneralizeTel_7167 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1088
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1118
         (coe
            d_certState_2006 (coe d_'46'generalizedField'45's_7155 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2120 ~v0 ~v1 v2 = du_pparams_2120 v2
du_pparams_2120 ::
  T_GeneralizeTel_7167 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2120 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2200
      (coe d_'46'generalizedField'45'Γ_7159 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 -> AgdaAny
d_slot_2124 ~v0 ~v1 v2 = du_slot_2124 v2
du_slot_2124 :: T_GeneralizeTel_7167 -> AgdaAny
du_slot_2124 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2196
      (coe d_'46'generalizedField'45'Γ_7159 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_7167 -> Integer
d_treasury_2126 ~v0 ~v1 v2 = du_treasury_2126 v2
du_treasury_2126 :: T_GeneralizeTel_7167 -> Integer
du_treasury_2126 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2204
      (coe d_'46'generalizedField'45'Γ_7159 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_12149 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
d_certState_2132 ~v0 ~v1 v2 = du_certState_2132 v2
du_certState_2132 ::
  T_GeneralizeTel_12149 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
du_certState_2132 v0
  = coe
      d_certState_2006 (coe d_'46'generalizedField'45's_12141 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_12149 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2134 ~v0 ~v1 v2 = du_govSt_2134 v2
du_govSt_2134 ::
  T_GeneralizeTel_12149 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2134 v0
  = coe d_govSt_2004 (coe d_'46'generalizedField'45's_12141 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_12149 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2060
d_utxoSt_2136 ~v0 ~v1 v2 = du_utxoSt_2136 v2
du_utxoSt_2136 ::
  T_GeneralizeTel_12149 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2060
du_utxoSt_2136 v0
  = coe
      d_utxoSt_2002 (coe d_'46'generalizedField'45's_12141 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_12149 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2200 ~v0 ~v1 v2 = du_pparams_2200 v2
du_pparams_2200 ::
  T_GeneralizeTel_12149 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2200 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2200
      (coe d_'46'generalizedField'45'Γ_12145 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_12149 -> AgdaAny
d_slot_2204 ~v0 ~v1 v2 = du_slot_2204 v2
du_slot_2204 :: T_GeneralizeTel_12149 -> AgdaAny
du_slot_2204 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2196
      (coe d_'46'generalizedField'45'Γ_12145 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  T_GeneralizeTel_12149 -> Integer
d_treasury_2206 ~v0 ~v1 v2 = du_treasury_2206 v2
du_treasury_2206 :: T_GeneralizeTel_12149 -> Integer
du_treasury_2206 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2204
      (coe d_'46'generalizedField'45'Γ_12145 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2226 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1760 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2184 ->
  T_LState_1994 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2652] -> T_LState_1994 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2226 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_7155 ::
  T_GeneralizeTel_7167 -> T_LState_1994
d_'46'generalizedField'45's_7155 v0
  = case coe v0 of
      C_mkGeneralizeTel_7169 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_7157 ::
  T_GeneralizeTel_7167 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2652
d_'46'generalizedField'45'tx_7157 v0
  = case coe v0 of
      C_mkGeneralizeTel_7169 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_7159 ::
  T_GeneralizeTel_7167 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2184
d_'46'generalizedField'45'Γ_7159 v0
  = case coe v0 of
      C_mkGeneralizeTel_7169 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_7161 ::
  T_GeneralizeTel_7167 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2060
d_'46'generalizedField'45'utxoSt''_7161 v0
  = case coe v0 of
      C_mkGeneralizeTel_7169 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_7163 ::
  T_GeneralizeTel_7167 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
d_'46'generalizedField'45'certState''_7163 v0
  = case coe v0 of
      C_mkGeneralizeTel_7169 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_7165 ::
  T_GeneralizeTel_7167 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_7165 v0
  = case coe v0 of
      C_mkGeneralizeTel_7169 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_7167 a0 a1 = ()
data T_GeneralizeTel_7167
  = C_mkGeneralizeTel_7169 T_LState_1994
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2652
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2184
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2060
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_12141 ::
  T_GeneralizeTel_12149 -> T_LState_1994
d_'46'generalizedField'45's_12141 v0
  = case coe v0 of
      C_mkGeneralizeTel_12151 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_12143 ::
  T_GeneralizeTel_12149 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2652
d_'46'generalizedField'45'tx_12143 v0
  = case coe v0 of
      C_mkGeneralizeTel_12151 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_12145 ::
  T_GeneralizeTel_12149 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2184
d_'46'generalizedField'45'Γ_12145 v0
  = case coe v0 of
      C_mkGeneralizeTel_12151 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_12147 ::
  T_GeneralizeTel_12149 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2060
d_'46'generalizedField'45'utxoSt''_12147 v0
  = case coe v0 of
      C_mkGeneralizeTel_12151 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_12149 a0 a1 = ()
data T_GeneralizeTel_12149
  = C_mkGeneralizeTel_12151 T_LState_1994
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2652
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2184
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2060
