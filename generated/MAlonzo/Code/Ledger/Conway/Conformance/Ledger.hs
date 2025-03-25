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
d_body_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2640 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2538
d_body_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2650 (coe v0)
-- _.Tx.isValid
d_isValid_1406 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2640 -> Bool
d_isValid_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2654 (coe v0)
-- _.Tx.txAD
d_txAD_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2640 -> Maybe AgdaAny
d_txAD_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2656 (coe v0)
-- _.Tx.wits
d_wits_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2640 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2620
d_wits_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2652 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1580 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2166 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1580 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1584 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 -> ()
d_GovState_1584 = erased
-- Ledger.Conway.Conformance.Ledger._.To-GovEnv
d_To'45'GovEnv_1586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1586 ~v0 ~v1 = du_To'45'GovEnv_1586
du_To'45'GovEnv_1586 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1586
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_To'45'GovEnv_2196
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1626 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1644 v0 ~v1 = du_updateDeposits_1644 v0
du_updateDeposits_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1644 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2490 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1668 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1668 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2060 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1670 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046 -> Integer
d_donations_1670 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2062 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1672 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046 -> Integer
d_fees_1672 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2058 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1674 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1674 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2056 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1678 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_886 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1096 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_850] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1096 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1696 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1724 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-CertEnv
d_To'45'CertEnv_1790 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_1790 ~v0 ~v1 = du_To'45'CertEnv_1790
du_To'45'CertEnv_1790 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_1790
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_988
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_1886 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1096 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1060
d_dState_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1104 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_1888 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1096 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1080
d_gState_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1108 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_1890 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1096 ->
  MAlonzo.Code.Ledger.Certs.T_PState_924
d_pState_1890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1106 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_1958 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-LEnv
d_To'45'LEnv_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1960 ~v0 ~v1 = du_To'45'LEnv_1960
du_To'45'LEnv_1960 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1960
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2208
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_844 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_1962 ~v0 ~v1 = du_allColdCreds_1962
du_allColdCreds_1962 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_844 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_1962
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2282
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_946 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_1964 v0 ~v1 = du_rmOrphanDRepVotes_1964 v0
du_rmOrphanDRepVotes_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_946 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_1964 v0
  = coe MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2262 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2538 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1966 ~v0 ~v1 = du_txgov_1966
du_txgov_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2538 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1966 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2212
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_1970 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2170 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_844
d_enactState_1970 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2188 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_1972 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2170 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1972 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2186 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_1974 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2170 -> Maybe AgdaAny
d_ppolicy_1974 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2184 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_1976 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2170 -> AgdaAny
d_slot_1976 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2182 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_1978 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2170 -> Integer
d_treasury_1978 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2190 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_1980 a0 a1 = ()
data T_LState_1980
  = C_'10214'_'44'_'44'_'10215''737'_1994 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1096
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_1988 ::
  T_LState_1980 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046
d_utxoSt_1988 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1994 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_1990 ::
  T_LState_1980 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1990 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1994 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_1992 ::
  T_LState_1980 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1096
d_certState_1992 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1994 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.To-LState
d_To'45'LState_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_1996 ~v0 ~v1 = du_To'45'LState_1996
du_To'45'LState_1996 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_1996
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
                                 (1980 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1626 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1980 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1584 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1980 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1724 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_1994))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2014 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2014
  = C_LEDGER'45'V_2114 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2194 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2018 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1096
d_certState_2018 ~v0 ~v1 v2 = du_certState_2018 v2
du_certState_2018 ::
  T_GeneralizeTel_7135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1096
du_certState_2018 v0
  = coe
      d_certState_1992 (coe d_'46'generalizedField'45's_7123 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2020 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2020 ~v0 ~v1 v2 = du_govSt_2020 v2
du_govSt_2020 ::
  T_GeneralizeTel_7135 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2020 v0
  = coe d_govSt_1990 (coe d_'46'generalizedField'45's_7123 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046
d_utxoSt_2022 ~v0 ~v1 v2 = du_utxoSt_2022 v2
du_utxoSt_2022 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046
du_utxoSt_2022 v0
  = coe d_utxoSt_1988 (coe d_'46'generalizedField'45's_7123 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 -> [MAlonzo.Code.Ledger.Certs.T_DCert_850]
d_txcerts_2044 ~v0 ~v1 v2 = du_txcerts_2044 v2
du_txcerts_2044 ::
  T_GeneralizeTel_7135 -> [MAlonzo.Code.Ledger.Certs.T_DCert_850]
du_txcerts_2044 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2592
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2650
         (coe d_'46'generalizedField'45'tx_7125 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 -> AgdaAny
d_txid_2050 ~v0 ~v1 v2 = du_txid_2050 v2
du_txid_2050 :: T_GeneralizeTel_7135 -> AgdaAny
du_txid_2050 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2612
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2650
         (coe d_'46'generalizedField'45'tx_7125 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_txvote_2064 ~v0 ~v1 v2 = du_txvote_2064 v2
du_txvote_2064 ::
  T_GeneralizeTel_7135 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
du_txvote_2064 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2596
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2650
         (coe d_'46'generalizedField'45'tx_7125 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2066 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2066 ~v0 ~v1 v2 = du_txwdrls_2066 v2
du_txwdrls_2066 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2066 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2594
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2650
         (coe d_'46'generalizedField'45'tx_7125 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.Enact.T_EnactState_844
d_enactState_2070 ~v0 ~v1 v2 = du_enactState_2070 v2
du_enactState_2070 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.Enact.T_EnactState_844
du_enactState_2070 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2188
      (coe d_'46'generalizedField'45'Γ_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2072 ~v0 ~v1 v2 = du_pparams_2072 v2
du_pparams_2072 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2072 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2186
      (coe d_'46'generalizedField'45'Γ_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 -> Maybe AgdaAny
d_ppolicy_2074 ~v0 ~v1 v2 = du_ppolicy_2074 v2
du_ppolicy_2074 :: T_GeneralizeTel_7135 -> Maybe AgdaAny
du_ppolicy_2074 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2184
      (coe d_'46'generalizedField'45'Γ_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 -> AgdaAny
d_slot_2076 ~v0 ~v1 v2 = du_slot_2076 v2
du_slot_2076 :: T_GeneralizeTel_7135 -> AgdaAny
du_slot_2076 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2182
      (coe d_'46'generalizedField'45'Γ_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1060
d_dState_2082 ~v0 ~v1 v2 = du_dState_2082 v2
du_dState_2082 ::
  T_GeneralizeTel_7135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1060
du_dState_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1104
      (coe
         d_certState_1992 (coe d_'46'generalizedField'45's_7123 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2092 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2092 ~v0 ~v1 v2 = du_rewards_2092 v2
du_rewards_2092 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1074
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1104
         (coe
            d_certState_1992 (coe d_'46'generalizedField'45's_7123 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2106 ~v0 ~v1 v2 = du_pparams_2106 v2
du_pparams_2106 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2106 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2186
      (coe d_'46'generalizedField'45'Γ_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 -> AgdaAny
d_slot_2110 ~v0 ~v1 v2 = du_slot_2110 v2
du_slot_2110 :: T_GeneralizeTel_7135 -> AgdaAny
du_slot_2110 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2182
      (coe d_'46'generalizedField'45'Γ_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_7135 -> Integer
d_treasury_2112 ~v0 ~v1 v2 = du_treasury_2112 v2
du_treasury_2112 :: T_GeneralizeTel_7135 -> Integer
du_treasury_2112 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2190
      (coe d_'46'generalizedField'45'Γ_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_12117 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1096
d_certState_2118 ~v0 ~v1 v2 = du_certState_2118 v2
du_certState_2118 ::
  T_GeneralizeTel_12117 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1096
du_certState_2118 v0
  = coe
      d_certState_1992 (coe d_'46'generalizedField'45's_12109 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_12117 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2120 ~v0 ~v1 v2 = du_govSt_2120 v2
du_govSt_2120 ::
  T_GeneralizeTel_12117 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2120 v0
  = coe d_govSt_1990 (coe d_'46'generalizedField'45's_12109 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_12117 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046
d_utxoSt_2122 ~v0 ~v1 v2 = du_utxoSt_2122 v2
du_utxoSt_2122 ::
  T_GeneralizeTel_12117 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046
du_utxoSt_2122 v0
  = coe
      d_utxoSt_1988 (coe d_'46'generalizedField'45's_12109 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2186 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_12117 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2186 ~v0 ~v1 v2 = du_pparams_2186 v2
du_pparams_2186 ::
  T_GeneralizeTel_12117 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2186 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2186
      (coe d_'46'generalizedField'45'Γ_12113 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_12117 -> AgdaAny
d_slot_2190 ~v0 ~v1 v2 = du_slot_2190 v2
du_slot_2190 :: T_GeneralizeTel_12117 -> AgdaAny
du_slot_2190 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2182
      (coe d_'46'generalizedField'45'Γ_12113 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  T_GeneralizeTel_12117 -> Integer
d_treasury_2192 ~v0 ~v1 v2 = du_treasury_2192 v2
du_treasury_2192 :: T_GeneralizeTel_12117 -> Integer
du_treasury_2192 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2190
      (coe d_'46'generalizedField'45'Γ_12113 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1746 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2170 ->
  T_LState_1980 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2640] -> T_LState_1980 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2212 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_7123 ::
  T_GeneralizeTel_7135 -> T_LState_1980
d_'46'generalizedField'45's_7123 v0
  = case coe v0 of
      C_mkGeneralizeTel_7137 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_7125 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2640
d_'46'generalizedField'45'tx_7125 v0
  = case coe v0 of
      C_mkGeneralizeTel_7137 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_7127 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2170
d_'46'generalizedField'45'Γ_7127 v0
  = case coe v0 of
      C_mkGeneralizeTel_7137 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_7129 ::
  T_GeneralizeTel_7135 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046
d_'46'generalizedField'45'utxoSt''_7129 v0
  = case coe v0 of
      C_mkGeneralizeTel_7137 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_7131 ::
  T_GeneralizeTel_7135 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1096
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
  = C_mkGeneralizeTel_7137 T_LState_1980
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2640
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2170
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1096
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_12109 ::
  T_GeneralizeTel_12117 -> T_LState_1980
d_'46'generalizedField'45's_12109 v0
  = case coe v0 of
      C_mkGeneralizeTel_12119 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_12111 ::
  T_GeneralizeTel_12117 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2640
d_'46'generalizedField'45'tx_12111 v0
  = case coe v0 of
      C_mkGeneralizeTel_12119 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_12113 ::
  T_GeneralizeTel_12117 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2170
d_'46'generalizedField'45'Γ_12113 v0
  = case coe v0 of
      C_mkGeneralizeTel_12119 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_12115 ::
  T_GeneralizeTel_12117 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046
d_'46'generalizedField'45'utxoSt''_12115 v0
  = case coe v0 of
      C_mkGeneralizeTel_12119 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_12117 a0 a1 = ()
data T_GeneralizeTel_12117
  = C_mkGeneralizeTel_12119 T_LState_1980
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2640
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2170
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2046
