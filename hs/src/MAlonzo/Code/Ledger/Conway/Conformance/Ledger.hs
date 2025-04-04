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
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2172 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1586 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 -> ()
d_GovState_1590 = erased
-- Ledger.Conway.Conformance.Ledger._.To-GovEnv
d_To'45'GovEnv_1592 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1592 ~v0 ~v1 = du_To'45'GovEnv_1592
du_To'45'GovEnv_1592 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1592
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_To'45'GovEnv_2202
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1632 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
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
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2496 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1674 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1674 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2066 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1676 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052 -> Integer
d_donations_1676 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2068 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1678 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052 -> Integer
d_fees_1678 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2064 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1680 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1680 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2062 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1684 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_892 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1702 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1730 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-CertEnv
d_To'45'CertEnv_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_1796 ~v0 ~v1 = du_To'45'CertEnv_1796
du_To'45'CertEnv_1796 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_1796
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_994
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_1892 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1066
d_dState_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_1894 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1086
d_gState_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1114 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_1896 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  MAlonzo.Code.Ledger.Certs.T_PState_930
d_pState_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1112 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_1964 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-LEnv
d_To'45'LEnv_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1966 ~v0 ~v1 = du_To'45'LEnv_1966
du_To'45'LEnv_1966 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1966
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2214
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_1968 ~v0 ~v1 = du_allColdCreds_1968
du_allColdCreds_1968 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_1968
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2288
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_1970 v0 ~v1 = du_rmOrphanDRepVotes_1970 v0
du_rmOrphanDRepVotes_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_1970 v0
  = coe MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2268 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2550 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1972 ~v0 ~v1 = du_txgov_1972
du_txgov_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2550 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1972 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2218
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_1976 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_enactState_1976 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2194 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_1978 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1978 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2192 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_1980 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 -> Maybe AgdaAny
d_ppolicy_1980 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2190 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_1982 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 -> AgdaAny
d_slot_1982 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2188 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_1984 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 -> Integer
d_treasury_1984 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2196 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_1986 a0 a1 = ()
data T_LState_1986
  = C_'10214'_'44'_'44'_'10215''737'_2000 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_1994 ::
  T_LState_1986 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
d_utxoSt_1994 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2000 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_1996 ::
  T_LState_1986 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1996 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2000 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_1998 ::
  T_LState_1986 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
d_certState_1998 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2000 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.To-LState
d_To'45'LState_2002 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_2002 ~v0 ~v1 = du_To'45'LState_2002
du_To'45'LState_2002 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_2002
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
                                 (1986 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1986 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1986 :: Integer) (16262344046643431141 :: Integer)
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
         (coe C_'10214'_'44'_'44'_'10215''737'_2000))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2020 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2020
  = C_LEDGER'45'V_2120 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2200 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
d_certState_2024 ~v0 ~v1 v2 = du_certState_2024 v2
du_certState_2024 ::
  T_GeneralizeTel_7151 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
du_certState_2024 v0
  = coe
      d_certState_1998 (coe d_'46'generalizedField'45's_7139 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2026 ~v0 ~v1 v2 = du_govSt_2026 v2
du_govSt_2026 ::
  T_GeneralizeTel_7151 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2026 v0
  = coe d_govSt_1996 (coe d_'46'generalizedField'45's_7139 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2028 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
d_utxoSt_2028 ~v0 ~v1 v2 = du_utxoSt_2028 v2
du_utxoSt_2028 ::
  T_GeneralizeTel_7151 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
du_utxoSt_2028 v0
  = coe d_utxoSt_1994 (coe d_'46'generalizedField'45's_7139 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_2050 ~v0 ~v1 v2 = du_txcerts_2050 v2
du_txcerts_2050 ::
  T_GeneralizeTel_7151 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
du_txcerts_2050 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2604
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2662
         (coe d_'46'generalizedField'45'tx_7141 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 -> AgdaAny
d_txid_2056 ~v0 ~v1 v2 = du_txid_2056 v2
du_txid_2056 :: T_GeneralizeTel_7151 -> AgdaAny
du_txid_2056 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2624
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2662
         (coe d_'46'generalizedField'45'tx_7141 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740]
d_txvote_2070 ~v0 ~v1 v2 = du_txvote_2070 v2
du_txvote_2070 ::
  T_GeneralizeTel_7151 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740]
du_txvote_2070 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2608
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2662
         (coe d_'46'generalizedField'45'tx_7141 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2072 ~v0 ~v1 v2 = du_txwdrls_2072 v2
du_txwdrls_2072 ::
  T_GeneralizeTel_7151 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2072 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2606
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2662
         (coe d_'46'generalizedField'45'tx_7141 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_enactState_2076 ~v0 ~v1 v2 = du_enactState_2076 v2
du_enactState_2076 ::
  T_GeneralizeTel_7151 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
du_enactState_2076 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2194
      (coe d_'46'generalizedField'45'Γ_7143 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2078 ~v0 ~v1 v2 = du_pparams_2078 v2
du_pparams_2078 ::
  T_GeneralizeTel_7151 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2078 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2192
      (coe d_'46'generalizedField'45'Γ_7143 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 -> Maybe AgdaAny
d_ppolicy_2080 ~v0 ~v1 v2 = du_ppolicy_2080 v2
du_ppolicy_2080 :: T_GeneralizeTel_7151 -> Maybe AgdaAny
du_ppolicy_2080 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2190
      (coe d_'46'generalizedField'45'Γ_7143 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 -> AgdaAny
d_slot_2082 ~v0 ~v1 v2 = du_slot_2082 v2
du_slot_2082 :: T_GeneralizeTel_7151 -> AgdaAny
du_slot_2082 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2188
      (coe d_'46'generalizedField'45'Γ_7143 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1066
d_dState_2088 ~v0 ~v1 v2 = du_dState_2088 v2
du_dState_2088 ::
  T_GeneralizeTel_7151 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1066
du_dState_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110
      (coe
         d_certState_1998 (coe d_'46'generalizedField'45's_7139 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2098 ~v0 ~v1 v2 = du_rewards_2098 v2
du_rewards_2098 ::
  T_GeneralizeTel_7151 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1080
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110
         (coe
            d_certState_1998 (coe d_'46'generalizedField'45's_7139 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2112 ~v0 ~v1 v2 = du_pparams_2112 v2
du_pparams_2112 ::
  T_GeneralizeTel_7151 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2112 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2192
      (coe d_'46'generalizedField'45'Γ_7143 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 -> AgdaAny
d_slot_2116 ~v0 ~v1 v2 = du_slot_2116 v2
du_slot_2116 :: T_GeneralizeTel_7151 -> AgdaAny
du_slot_2116 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2188
      (coe d_'46'generalizedField'45'Γ_7143 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7151 -> Integer
d_treasury_2118 ~v0 ~v1 v2 = du_treasury_2118 v2
du_treasury_2118 :: T_GeneralizeTel_7151 -> Integer
du_treasury_2118 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2196
      (coe d_'46'generalizedField'45'Γ_7143 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_12133 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
d_certState_2124 ~v0 ~v1 v2 = du_certState_2124 v2
du_certState_2124 ::
  T_GeneralizeTel_12133 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
du_certState_2124 v0
  = coe
      d_certState_1998 (coe d_'46'generalizedField'45's_12125 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_12133 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2126 ~v0 ~v1 v2 = du_govSt_2126 v2
du_govSt_2126 ::
  T_GeneralizeTel_12133 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2126 v0
  = coe d_govSt_1996 (coe d_'46'generalizedField'45's_12125 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_12133 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
d_utxoSt_2128 ~v0 ~v1 v2 = du_utxoSt_2128 v2
du_utxoSt_2128 ::
  T_GeneralizeTel_12133 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
du_utxoSt_2128 v0
  = coe
      d_utxoSt_1994 (coe d_'46'generalizedField'45's_12125 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_12133 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2192 ~v0 ~v1 v2 = du_pparams_2192 v2
du_pparams_2192 ::
  T_GeneralizeTel_12133 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2192 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2192
      (coe d_'46'generalizedField'45'Γ_12129 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_12133 -> AgdaAny
d_slot_2196 ~v0 ~v1 v2 = du_slot_2196 v2
du_slot_2196 :: T_GeneralizeTel_12133 -> AgdaAny
du_slot_2196 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2188
      (coe d_'46'generalizedField'45'Γ_12129 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_12133 -> Integer
d_treasury_2198 ~v0 ~v1 v2 = du_treasury_2198 v2
du_treasury_2198 :: T_GeneralizeTel_12133 -> Integer
du_treasury_2198 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2196
      (coe d_'46'generalizedField'45'Γ_12129 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 ->
  T_LState_1986 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2652] -> T_LState_1986 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2218 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_7139 ::
  T_GeneralizeTel_7151 -> T_LState_1986
d_'46'generalizedField'45's_7139 v0
  = case coe v0 of
      C_mkGeneralizeTel_7153 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_7141 ::
  T_GeneralizeTel_7151 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2652
d_'46'generalizedField'45'tx_7141 v0
  = case coe v0 of
      C_mkGeneralizeTel_7153 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_7143 ::
  T_GeneralizeTel_7151 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2176
d_'46'generalizedField'45'Γ_7143 v0
  = case coe v0 of
      C_mkGeneralizeTel_7153 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_7145 ::
  T_GeneralizeTel_7151 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
d_'46'generalizedField'45'utxoSt''_7145 v0
  = case coe v0 of
      C_mkGeneralizeTel_7153 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_7147 ::
  T_GeneralizeTel_7151 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
d_'46'generalizedField'45'certState''_7147 v0
  = case coe v0 of
      C_mkGeneralizeTel_7153 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_7149 ::
  T_GeneralizeTel_7151 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_7149 v0
  = case coe v0 of
      C_mkGeneralizeTel_7153 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_7151 a0 a1 = ()
data T_GeneralizeTel_7151
  = C_mkGeneralizeTel_7153 T_LState_1986
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2652
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2176
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_12125 ::
  T_GeneralizeTel_12133 -> T_LState_1986
d_'46'generalizedField'45's_12125 v0
  = case coe v0 of
      C_mkGeneralizeTel_12135 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_12127 ::
  T_GeneralizeTel_12133 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2652
d_'46'generalizedField'45'tx_12127 v0
  = case coe v0 of
      C_mkGeneralizeTel_12135 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_12129 ::
  T_GeneralizeTel_12133 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2176
d_'46'generalizedField'45'Γ_12129 v0
  = case coe v0 of
      C_mkGeneralizeTel_12135 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_12131 ::
  T_GeneralizeTel_12133 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
d_'46'generalizedField'45'utxoSt''_12131 v0
  = case coe v0 of
      C_mkGeneralizeTel_12135 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_12133 a0 a1 = ()
data T_GeneralizeTel_12133
  = C_mkGeneralizeTel_12135 T_LState_1986
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2652
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2176
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
