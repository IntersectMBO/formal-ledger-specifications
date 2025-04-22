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
d_epoch_430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_430 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1502 (coe v0))
-- _.Tx.body
d_body_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2636 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534
d_body_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2646 (coe v0)
-- _.Tx.isValid
d_isValid_1404 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2636 -> Bool
d_isValid_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2650 (coe v0)
-- _.Tx.txAD
d_txAD_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2636 -> Maybe AgdaAny
d_txAD_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2652 (coe v0)
-- _.Tx.wits
d_wits_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2636 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2616
d_wits_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2648 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1578 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2164 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1578 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1582 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 -> ()
d_GovState_1582 = erased
-- Ledger.Conway.Conformance.Ledger._.To-GovEnv
d_To'45'GovEnv_1584 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1584 ~v0 ~v1 = du_To'45'GovEnv_1584
du_To'45'GovEnv_1584 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1584
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_To'45'GovEnv_2194
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1624 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1642 v0 ~v1 = du_updateDeposits_1642 v0
du_updateDeposits_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1642 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2488 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1666 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1666 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2058 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1668 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 -> Integer
d_donations_1668 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2060 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1670 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 -> Integer
d_fees_1670 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2056 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1672 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1672 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2054 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1676 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_892 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1694 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1722 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-CertEnv
d_To'45'CertEnv_1788 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_1788 ~v0 ~v1 = du_To'45'CertEnv_1788
du_To'45'CertEnv_1788 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_1788
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_994
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_1884 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1066
d_dState_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_1886 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1086
d_gState_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1114 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_1888 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102 ->
  MAlonzo.Code.Ledger.Certs.T_PState_930
d_pState_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1112 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_1956 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-LEnv
d_To'45'LEnv_1958 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1958 ~v0 ~v1 = du_To'45'LEnv_1958
du_To'45'LEnv_1958 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1958
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2206
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_1960 ~v0 ~v1 = du_allColdCreds_1960
du_allColdCreds_1960 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_1960
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2280
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_1962 v0 ~v1 = du_rmOrphanDRepVotes_1962 v0
du_rmOrphanDRepVotes_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_1962 v0
  = coe MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2260 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1964 ~v0 ~v1 = du_txgov_1964
du_txgov_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1964 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2210
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_1968 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2168 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_enactState_1968 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2186 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_1970 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2168 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1970 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2184 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_1972 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2168 -> Maybe AgdaAny
d_ppolicy_1972 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2182 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_1974 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2168 -> AgdaAny
d_slot_1974 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2180 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_1976 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2168 -> Integer
d_treasury_1976 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2188 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_1978 a0 a1 = ()
data T_LState_1978
  = C_'10214'_'44'_'44'_'10215''737'_1992 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_1986 ::
  T_LState_1978 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044
d_utxoSt_1986 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1992 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_1988 ::
  T_LState_1978 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1988 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1992 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_1990 ::
  T_LState_1978 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
d_certState_1990 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1992 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.To-LState
d_To'45'LState_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_1994 ~v0 ~v1 = du_To'45'LState_1994
du_To'45'LState_1994 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_1994
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
                                 (1978 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1624 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1978 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1582 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1978 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1722 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_1992))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2012 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2012
  = C_LEDGER'45'V_2112 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2192 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
d_certState_2016 ~v0 ~v1 v2 = du_certState_2016 v2
du_certState_2016 ::
  T_GeneralizeTel_7147 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
du_certState_2016 v0
  = coe
      d_certState_1990 (coe d_'46'generalizedField'45's_7135 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2018 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2018 ~v0 ~v1 v2 = du_govSt_2018 v2
du_govSt_2018 ::
  T_GeneralizeTel_7147 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2018 v0
  = coe d_govSt_1988 (coe d_'46'generalizedField'45's_7135 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2020 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044
d_utxoSt_2020 ~v0 ~v1 v2 = du_utxoSt_2020 v2
du_utxoSt_2020 ::
  T_GeneralizeTel_7147 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044
du_utxoSt_2020 v0
  = coe d_utxoSt_1986 (coe d_'46'generalizedField'45's_7135 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_2042 ~v0 ~v1 v2 = du_txcerts_2042 v2
du_txcerts_2042 ::
  T_GeneralizeTel_7147 -> [MAlonzo.Code.Ledger.Certs.T_DCert_856]
du_txcerts_2042 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2588
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2646
         (coe d_'46'generalizedField'45'tx_7137 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 -> AgdaAny
d_txid_2048 ~v0 ~v1 v2 = du_txid_2048 v2
du_txid_2048 :: T_GeneralizeTel_7147 -> AgdaAny
du_txid_2048 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2608
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2646
         (coe d_'46'generalizedField'45'tx_7137 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740]
d_txvote_2062 ~v0 ~v1 v2 = du_txvote_2062 v2
du_txvote_2062 ::
  T_GeneralizeTel_7147 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740]
du_txvote_2062 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2592
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2646
         (coe d_'46'generalizedField'45'tx_7137 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2064 ~v0 ~v1 v2 = du_txwdrls_2064 v2
du_txwdrls_2064 ::
  T_GeneralizeTel_7147 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2064 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2590
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2646
         (coe d_'46'generalizedField'45'tx_7137 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_enactState_2068 ~v0 ~v1 v2 = du_enactState_2068 v2
du_enactState_2068 ::
  T_GeneralizeTel_7147 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
du_enactState_2068 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2186
      (coe d_'46'generalizedField'45'Γ_7139 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2070 ~v0 ~v1 v2 = du_pparams_2070 v2
du_pparams_2070 ::
  T_GeneralizeTel_7147 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2070 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2184
      (coe d_'46'generalizedField'45'Γ_7139 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 -> Maybe AgdaAny
d_ppolicy_2072 ~v0 ~v1 v2 = du_ppolicy_2072 v2
du_ppolicy_2072 :: T_GeneralizeTel_7147 -> Maybe AgdaAny
du_ppolicy_2072 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2182
      (coe d_'46'generalizedField'45'Γ_7139 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 -> AgdaAny
d_slot_2074 ~v0 ~v1 v2 = du_slot_2074 v2
du_slot_2074 :: T_GeneralizeTel_7147 -> AgdaAny
du_slot_2074 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2180
      (coe d_'46'generalizedField'45'Γ_7139 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1066
d_dState_2080 ~v0 ~v1 v2 = du_dState_2080 v2
du_dState_2080 ::
  T_GeneralizeTel_7147 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1066
du_dState_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110
      (coe
         d_certState_1990 (coe d_'46'generalizedField'45's_7135 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2090 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2090 ~v0 ~v1 v2 = du_rewards_2090 v2
du_rewards_2090 ::
  T_GeneralizeTel_7147 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1080
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1110
         (coe
            d_certState_1990 (coe d_'46'generalizedField'45's_7135 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2104 ~v0 ~v1 v2 = du_pparams_2104 v2
du_pparams_2104 ::
  T_GeneralizeTel_7147 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2104 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2184
      (coe d_'46'generalizedField'45'Γ_7139 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 -> AgdaAny
d_slot_2108 ~v0 ~v1 v2 = du_slot_2108 v2
du_slot_2108 :: T_GeneralizeTel_7147 -> AgdaAny
du_slot_2108 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2180
      (coe d_'46'generalizedField'45'Γ_7139 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_7147 -> Integer
d_treasury_2110 ~v0 ~v1 v2 = du_treasury_2110 v2
du_treasury_2110 :: T_GeneralizeTel_7147 -> Integer
du_treasury_2110 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2188
      (coe d_'46'generalizedField'45'Γ_7139 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_12129 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
d_certState_2116 ~v0 ~v1 v2 = du_certState_2116 v2
du_certState_2116 ::
  T_GeneralizeTel_12129 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
du_certState_2116 v0
  = coe
      d_certState_1990 (coe d_'46'generalizedField'45's_12121 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_12129 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2118 ~v0 ~v1 v2 = du_govSt_2118 v2
du_govSt_2118 ::
  T_GeneralizeTel_12129 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2118 v0
  = coe d_govSt_1988 (coe d_'46'generalizedField'45's_12121 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_12129 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044
d_utxoSt_2120 ~v0 ~v1 v2 = du_utxoSt_2120 v2
du_utxoSt_2120 ::
  T_GeneralizeTel_12129 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044
du_utxoSt_2120 v0
  = coe
      d_utxoSt_1986 (coe d_'46'generalizedField'45's_12121 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_12129 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2184 ~v0 ~v1 v2 = du_pparams_2184 v2
du_pparams_2184 ::
  T_GeneralizeTel_12129 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2184 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2184
      (coe d_'46'generalizedField'45'Γ_12125 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_12129 -> AgdaAny
d_slot_2188 ~v0 ~v1 v2 = du_slot_2188 v2
du_slot_2188 :: T_GeneralizeTel_12129 -> AgdaAny
du_slot_2188 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2180
      (coe d_'46'generalizedField'45'Γ_12125 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  T_GeneralizeTel_12129 -> Integer
d_treasury_2190 ~v0 ~v1 v2 = du_treasury_2190 v2
du_treasury_2190 :: T_GeneralizeTel_12129 -> Integer
du_treasury_2190 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2188
      (coe d_'46'generalizedField'45'Γ_12125 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2210 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1744 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2168 ->
  T_LState_1978 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2636] -> T_LState_1978 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2210 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_7135 ::
  T_GeneralizeTel_7147 -> T_LState_1978
d_'46'generalizedField'45's_7135 v0
  = case coe v0 of
      C_mkGeneralizeTel_7149 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_7137 ::
  T_GeneralizeTel_7147 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2636
d_'46'generalizedField'45'tx_7137 v0
  = case coe v0 of
      C_mkGeneralizeTel_7149 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_7139 ::
  T_GeneralizeTel_7147 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2168
d_'46'generalizedField'45'Γ_7139 v0
  = case coe v0 of
      C_mkGeneralizeTel_7149 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_7141 ::
  T_GeneralizeTel_7147 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044
d_'46'generalizedField'45'utxoSt''_7141 v0
  = case coe v0 of
      C_mkGeneralizeTel_7149 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_7143 ::
  T_GeneralizeTel_7147 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
d_'46'generalizedField'45'certState''_7143 v0
  = case coe v0 of
      C_mkGeneralizeTel_7149 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_7145 ::
  T_GeneralizeTel_7147 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_7145 v0
  = case coe v0 of
      C_mkGeneralizeTel_7149 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_7147 a0 a1 = ()
data T_GeneralizeTel_7147
  = C_mkGeneralizeTel_7149 T_LState_1978
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2636
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2168
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1102
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_12121 ::
  T_GeneralizeTel_12129 -> T_LState_1978
d_'46'generalizedField'45's_12121 v0
  = case coe v0 of
      C_mkGeneralizeTel_12131 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_12123 ::
  T_GeneralizeTel_12129 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2636
d_'46'generalizedField'45'tx_12123 v0
  = case coe v0 of
      C_mkGeneralizeTel_12131 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_12125 ::
  T_GeneralizeTel_12129 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2168
d_'46'generalizedField'45'Γ_12125 v0
  = case coe v0 of
      C_mkGeneralizeTel_12131 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_12127 ::
  T_GeneralizeTel_12129 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044
d_'46'generalizedField'45'utxoSt''_12127 v0
  = case coe v0 of
      C_mkGeneralizeTel_12131 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_12129 a0 a1 = ()
data T_GeneralizeTel_12129
  = C_mkGeneralizeTel_12131 T_LState_1978
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2636
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2168
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2044
