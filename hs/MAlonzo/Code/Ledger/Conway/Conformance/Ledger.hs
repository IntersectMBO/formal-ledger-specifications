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
d_Tx_360 a0 = ()
-- _.epoch
d_epoch_426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_426 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1516 (coe v0))
-- _.Tx.body
d_body_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536
d_body_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2648 (coe v0)
-- _.Tx.isValid
d_isValid_1384 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2638 -> Bool
d_isValid_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2652 (coe v0)
-- _.Tx.txAD
d_txAD_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 -> Maybe AgdaAny
d_txAD_1386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2654 (coe v0)
-- _.Tx.wits
d_wits_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2638 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2618
d_wits_1388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2650 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2144 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1558 = erased
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
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_To'45'GovEnv_2174
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1604 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1622 v0 ~v1 = du_updateDeposits_1622 v0
du_updateDeposits_1622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1622 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2468 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1646 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1646 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2038 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1648 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 -> Integer
d_donations_1648 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2040 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1650 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 -> Integer
d_fees_1650 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2036 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1652 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1652 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2034 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1656 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1674 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_876 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_840] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 -> ()
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
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_978
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_1864 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050
d_dState_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_1866 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1070
d_gState_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1098 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_1868 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086 ->
  MAlonzo.Code.Ledger.Certs.T_PState_914
d_pState_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1096 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_1936 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-LEnv
d_To'45'LEnv_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1938 ~v0 ~v1 = du_To'45'LEnv_1938
du_To'45'LEnv_1938 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1938
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2186
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_834 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_1940 ~v0 ~v1 = du_allColdCreds_1940
du_allColdCreds_1940 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_834 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_1940
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2260
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_936 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_1942 v0 ~v1 = du_rmOrphanDRepVotes_1942 v0
du_rmOrphanDRepVotes_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_936 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_1942 v0
  = coe MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2240 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1944 ~v0 ~v1 = du_txgov_1944
du_txgov_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2536 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1944 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2190
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_1948 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2148 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_834
d_enactState_1948 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2166 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_1950 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2148 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1950 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2164 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_1952 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2148 -> Maybe AgdaAny
d_ppolicy_1952 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2162 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_1954 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2148 -> AgdaAny
d_slot_1954 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2160 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_1956 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2148 -> Integer
d_treasury_1956 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2168 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_1958 a0 a1 = ()
data T_LState_1958
  = C_'10214'_'44'_'44'_'10215''737'_1972 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_1966 ::
  T_LState_1958 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
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
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
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
  = C_LEDGER'45'V_2092 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2172 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_1996 ~v0 ~v1 v2 = du_certState_1996 v2
du_certState_1996 ::
  T_GeneralizeTel_7109 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
du_certState_1996 v0
  = coe
      d_certState_1970 (coe d_'46'generalizedField'45's_7097 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1998 ~v0 ~v1 v2 = du_govSt_1998 v2
du_govSt_1998 ::
  T_GeneralizeTel_7109 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1998 v0
  = coe d_govSt_1968 (coe d_'46'generalizedField'45's_7097 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
d_utxoSt_2000 ~v0 ~v1 v2 = du_utxoSt_2000 v2
du_utxoSt_2000 ::
  T_GeneralizeTel_7109 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
du_utxoSt_2000 v0
  = coe d_utxoSt_1966 (coe d_'46'generalizedField'45's_7097 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 -> [MAlonzo.Code.Ledger.Certs.T_DCert_840]
d_txcerts_2022 ~v0 ~v1 v2 = du_txcerts_2022 v2
du_txcerts_2022 ::
  T_GeneralizeTel_7109 -> [MAlonzo.Code.Ledger.Certs.T_DCert_840]
du_txcerts_2022 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2590
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_7099 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2028 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 -> AgdaAny
d_txid_2028 ~v0 ~v1 v2 = du_txid_2028 v2
du_txid_2028 :: T_GeneralizeTel_7109 -> AgdaAny
du_txid_2028 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2610
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_7099 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_728]
d_txvote_2042 ~v0 ~v1 v2 = du_txvote_2042 v2
du_txvote_2042 ::
  T_GeneralizeTel_7109 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_728]
du_txvote_2042 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2594
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_7099 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2044 ~v0 ~v1 v2 = du_txwdrls_2044 v2
du_txwdrls_2044 ::
  T_GeneralizeTel_7109 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2044 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2592
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2648
         (coe d_'46'generalizedField'45'tx_7099 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 -> MAlonzo.Code.Ledger.Enact.T_EnactState_834
d_enactState_2048 ~v0 ~v1 v2 = du_enactState_2048 v2
du_enactState_2048 ::
  T_GeneralizeTel_7109 -> MAlonzo.Code.Ledger.Enact.T_EnactState_834
du_enactState_2048 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2166
      (coe d_'46'generalizedField'45'Γ_7101 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2050 ~v0 ~v1 v2 = du_pparams_2050 v2
du_pparams_2050 ::
  T_GeneralizeTel_7109 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2050 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2164
      (coe d_'46'generalizedField'45'Γ_7101 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 -> Maybe AgdaAny
d_ppolicy_2052 ~v0 ~v1 v2 = du_ppolicy_2052 v2
du_ppolicy_2052 :: T_GeneralizeTel_7109 -> Maybe AgdaAny
du_ppolicy_2052 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2162
      (coe d_'46'generalizedField'45'Γ_7101 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 -> AgdaAny
d_slot_2054 ~v0 ~v1 v2 = du_slot_2054 v2
du_slot_2054 :: T_GeneralizeTel_7109 -> AgdaAny
du_slot_2054 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2160
      (coe d_'46'generalizedField'45'Γ_7101 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2060 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050
d_dState_2060 ~v0 ~v1 v2 = du_dState_2060 v2
du_dState_2060 ::
  T_GeneralizeTel_7109 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1050
du_dState_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094
      (coe
         d_certState_1970 (coe d_'46'generalizedField'45's_7097 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2070 ~v0 ~v1 v2 = du_rewards_2070 v2
du_rewards_2070 ::
  T_GeneralizeTel_7109 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1064
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1094
         (coe
            d_certState_1970 (coe d_'46'generalizedField'45's_7097 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2084 ~v0 ~v1 v2 = du_pparams_2084 v2
du_pparams_2084 ::
  T_GeneralizeTel_7109 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2084 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2164
      (coe d_'46'generalizedField'45'Γ_7101 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 -> AgdaAny
d_slot_2088 ~v0 ~v1 v2 = du_slot_2088 v2
du_slot_2088 :: T_GeneralizeTel_7109 -> AgdaAny
du_slot_2088 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2160
      (coe d_'46'generalizedField'45'Γ_7101 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2090 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_7109 -> Integer
d_treasury_2090 ~v0 ~v1 v2 = du_treasury_2090 v2
du_treasury_2090 :: T_GeneralizeTel_7109 -> Integer
du_treasury_2090 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2168
      (coe d_'46'generalizedField'45'Γ_7101 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_12091 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_certState_2096 ~v0 ~v1 v2 = du_certState_2096 v2
du_certState_2096 ::
  T_GeneralizeTel_12091 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
du_certState_2096 v0
  = coe
      d_certState_1970 (coe d_'46'generalizedField'45's_12083 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_12091 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2098 ~v0 ~v1 v2 = du_govSt_2098 v2
du_govSt_2098 ::
  T_GeneralizeTel_12091 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2098 v0
  = coe d_govSt_1968 (coe d_'46'generalizedField'45's_12083 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2100 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_12091 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
d_utxoSt_2100 ~v0 ~v1 v2 = du_utxoSt_2100 v2
du_utxoSt_2100 ::
  T_GeneralizeTel_12091 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
du_utxoSt_2100 v0
  = coe
      d_utxoSt_1966 (coe d_'46'generalizedField'45's_12083 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_12091 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2164 ~v0 ~v1 v2 = du_pparams_2164 v2
du_pparams_2164 ::
  T_GeneralizeTel_12091 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2164 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2164
      (coe d_'46'generalizedField'45'Γ_12087 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_12091 -> AgdaAny
d_slot_2168 ~v0 ~v1 v2 = du_slot_2168 v2
du_slot_2168 :: T_GeneralizeTel_12091 -> AgdaAny
du_slot_2168 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2160
      (coe d_'46'generalizedField'45'Γ_12087 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_12091 -> Integer
d_treasury_2170 ~v0 ~v1 v2 = du_treasury_2170 v2
du_treasury_2170 :: T_GeneralizeTel_12091 -> Integer
du_treasury_2170 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2168
      (coe d_'46'generalizedField'45'Γ_12087 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2148 ->
  T_LState_1958 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2638] -> T_LState_1958 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2190 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_7097 ::
  T_GeneralizeTel_7109 -> T_LState_1958
d_'46'generalizedField'45's_7097 v0
  = case coe v0 of
      C_mkGeneralizeTel_7111 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_7099 ::
  T_GeneralizeTel_7109 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2638
d_'46'generalizedField'45'tx_7099 v0
  = case coe v0 of
      C_mkGeneralizeTel_7111 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_7101 ::
  T_GeneralizeTel_7109 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2148
d_'46'generalizedField'45'Γ_7101 v0
  = case coe v0 of
      C_mkGeneralizeTel_7111 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_7103 ::
  T_GeneralizeTel_7109 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
d_'46'generalizedField'45'utxoSt''_7103 v0
  = case coe v0 of
      C_mkGeneralizeTel_7111 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_7105 ::
  T_GeneralizeTel_7109 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
d_'46'generalizedField'45'certState''_7105 v0
  = case coe v0 of
      C_mkGeneralizeTel_7111 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_7107 ::
  T_GeneralizeTel_7109 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_7107 v0
  = case coe v0 of
      C_mkGeneralizeTel_7111 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_7109 a0 a1 = ()
data T_GeneralizeTel_7109
  = C_mkGeneralizeTel_7111 T_LState_1958
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2638
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2148
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1086
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_12083 ::
  T_GeneralizeTel_12091 -> T_LState_1958
d_'46'generalizedField'45's_12083 v0
  = case coe v0 of
      C_mkGeneralizeTel_12093 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_12085 ::
  T_GeneralizeTel_12091 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2638
d_'46'generalizedField'45'tx_12085 v0
  = case coe v0 of
      C_mkGeneralizeTel_12093 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_12087 ::
  T_GeneralizeTel_12091 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2148
d_'46'generalizedField'45'Γ_12087 v0
  = case coe v0 of
      C_mkGeneralizeTel_12093 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_12089 ::
  T_GeneralizeTel_12091 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
d_'46'generalizedField'45'utxoSt''_12089 v0
  = case coe v0 of
      C_mkGeneralizeTel_12093 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_12091 a0 a1 = ()
data T_GeneralizeTel_12091
  = C_mkGeneralizeTel_12093 T_LState_1958
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2638
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2148
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2024
