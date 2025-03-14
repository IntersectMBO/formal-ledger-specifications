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
d_body_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2642 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540
d_body_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2652 (coe v0)
-- _.Tx.isValid
d_isValid_1410 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2642 -> Bool
d_isValid_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2656 (coe v0)
-- _.Tx.txAD
d_txAD_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2642 -> Maybe AgdaAny
d_txAD_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2658 (coe v0)
-- _.Tx.wits
d_wits_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2642 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2622
d_wits_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2654 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1584 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2170 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1584 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 -> ()
d_GovState_1588 = erased
-- Ledger.Conway.Conformance.Ledger._.To-GovEnv
d_To'45'GovEnv_1590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1590 ~v0 ~v1 = du_To'45'GovEnv_1590
du_To'45'GovEnv_1590 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1590
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_To'45'GovEnv_2200
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1630 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1648 v0 ~v1 = du_updateDeposits_1648 v0
du_updateDeposits_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1648 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2500 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1672 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1672 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2070 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1674 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056 -> Integer
d_donations_1674 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2072 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1676 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056 -> Integer
d_fees_1676 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2068 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1678 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1678 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2066 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1682 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1700 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1098 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_852] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1098 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1700 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1728 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-CertEnv
d_To'45'CertEnv_1794 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_1794 ~v0 ~v1 = du_To'45'CertEnv_1794
du_To'45'CertEnv_1794 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_1794
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_990
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_1890 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1062
d_dState_1890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1106 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_1892 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1098 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1082
d_gState_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1110 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_1894 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1098 ->
  MAlonzo.Code.Ledger.Certs.T_PState_926
d_pState_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1108 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_1962 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-LEnv
d_To'45'LEnv_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1964 ~v0 ~v1 = du_To'45'LEnv_1964
du_To'45'LEnv_1964 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1964
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2214
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_846 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_1966 ~v0 ~v1 = du_allColdCreds_1966
du_allColdCreds_1966 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_846 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_1966
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2288
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_1968 v0 ~v1 = du_rmOrphanDRepVotes_1968 v0
du_rmOrphanDRepVotes_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_1968 v0
  = coe MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2268 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1970 ~v0 ~v1 = du_txgov_1970
du_txgov_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2540 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1970 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2218
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_1974 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_846
d_enactState_1974 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2194 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_1976 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1976 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2192 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_1978 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 -> Maybe AgdaAny
d_ppolicy_1978 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2190 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_1980 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 -> AgdaAny
d_slot_1980 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2188 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_1982 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 -> Integer
d_treasury_1982 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2196 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_1984 a0 a1 = ()
data T_LState_1984
  = C_'10214'_'44'_'44'_'10215''737'_1998 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1098
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_1992 ::
  T_LState_1984 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
d_utxoSt_1992 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1998 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_1994 ::
  T_LState_1984 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1994 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1998 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_1996 ::
  T_LState_1984 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1098
d_certState_1996 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1998 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.To-LState
d_To'45'LState_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_2000 ~v0 ~v1 = du_To'45'LState_2000
du_To'45'LState_2000 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_2000
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
                                 (1984 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1630 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1984 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1588 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1984 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1728 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_1998))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2018 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2018
  = C_LEDGER'45'V_2118 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2198 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1098
d_certState_2022 ~v0 ~v1 v2 = du_certState_2022 v2
du_certState_2022 ::
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1098
du_certState_2022 v0
  = coe
      d_certState_1996 (coe d_'46'generalizedField'45's_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2024 ~v0 ~v1 v2 = du_govSt_2024 v2
du_govSt_2024 ::
  T_GeneralizeTel_7139 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2024 v0
  = coe d_govSt_1994 (coe d_'46'generalizedField'45's_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
d_utxoSt_2026 ~v0 ~v1 v2 = du_utxoSt_2026 v2
du_utxoSt_2026 ::
  T_GeneralizeTel_7139 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
du_utxoSt_2026 v0
  = coe d_utxoSt_1992 (coe d_'46'generalizedField'45's_7127 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 -> [MAlonzo.Code.Ledger.Certs.T_DCert_852]
d_txcerts_2048 ~v0 ~v1 v2 = du_txcerts_2048 v2
du_txcerts_2048 ::
  T_GeneralizeTel_7139 -> [MAlonzo.Code.Ledger.Certs.T_DCert_852]
du_txcerts_2048 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2594
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2652
         (coe d_'46'generalizedField'45'tx_7129 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 -> AgdaAny
d_txid_2054 ~v0 ~v1 v2 = du_txid_2054 v2
du_txid_2054 :: T_GeneralizeTel_7139 -> AgdaAny
du_txid_2054 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2614
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2652
         (coe d_'46'generalizedField'45'tx_7129 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_738]
d_txvote_2068 ~v0 ~v1 v2 = du_txvote_2068 v2
du_txvote_2068 ::
  T_GeneralizeTel_7139 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_738]
du_txvote_2068 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2598
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2652
         (coe d_'46'generalizedField'45'tx_7129 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2070 ~v0 ~v1 v2 = du_txwdrls_2070 v2
du_txwdrls_2070 ::
  T_GeneralizeTel_7139 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2070 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2596
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2652
         (coe d_'46'generalizedField'45'tx_7129 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 -> MAlonzo.Code.Ledger.Enact.T_EnactState_846
d_enactState_2074 ~v0 ~v1 v2 = du_enactState_2074 v2
du_enactState_2074 ::
  T_GeneralizeTel_7139 -> MAlonzo.Code.Ledger.Enact.T_EnactState_846
du_enactState_2074 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2194
      (coe d_'46'generalizedField'45'Γ_7131 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2076 ~v0 ~v1 v2 = du_pparams_2076 v2
du_pparams_2076 ::
  T_GeneralizeTel_7139 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2076 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2192
      (coe d_'46'generalizedField'45'Γ_7131 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 -> Maybe AgdaAny
d_ppolicy_2078 ~v0 ~v1 v2 = du_ppolicy_2078 v2
du_ppolicy_2078 :: T_GeneralizeTel_7139 -> Maybe AgdaAny
du_ppolicy_2078 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2190
      (coe d_'46'generalizedField'45'Γ_7131 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 -> AgdaAny
d_slot_2080 ~v0 ~v1 v2 = du_slot_2080 v2
du_slot_2080 :: T_GeneralizeTel_7139 -> AgdaAny
du_slot_2080 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2188
      (coe d_'46'generalizedField'45'Γ_7131 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1062
d_dState_2086 ~v0 ~v1 v2 = du_dState_2086 v2
du_dState_2086 ::
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1062
du_dState_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1106
      (coe
         d_certState_1996 (coe d_'46'generalizedField'45's_7127 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2096 ~v0 ~v1 v2 = du_rewards_2096 v2
du_rewards_2096 ::
  T_GeneralizeTel_7139 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1076
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1106
         (coe
            d_certState_1996 (coe d_'46'generalizedField'45's_7127 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2110 ~v0 ~v1 v2 = du_pparams_2110 v2
du_pparams_2110 ::
  T_GeneralizeTel_7139 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2110 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2192
      (coe d_'46'generalizedField'45'Γ_7131 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2114 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 -> AgdaAny
d_slot_2114 ~v0 ~v1 v2 = du_slot_2114 v2
du_slot_2114 :: T_GeneralizeTel_7139 -> AgdaAny
du_slot_2114 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2188
      (coe d_'46'generalizedField'45'Γ_7131 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_7139 -> Integer
d_treasury_2116 ~v0 ~v1 v2 = du_treasury_2116 v2
du_treasury_2116 :: T_GeneralizeTel_7139 -> Integer
du_treasury_2116 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2196
      (coe d_'46'generalizedField'45'Γ_7131 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_12121 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1098
d_certState_2122 ~v0 ~v1 v2 = du_certState_2122 v2
du_certState_2122 ::
  T_GeneralizeTel_12121 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1098
du_certState_2122 v0
  = coe
      d_certState_1996 (coe d_'46'generalizedField'45's_12113 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_12121 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2124 ~v0 ~v1 v2 = du_govSt_2124 v2
du_govSt_2124 ::
  T_GeneralizeTel_12121 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2124 v0
  = coe d_govSt_1994 (coe d_'46'generalizedField'45's_12113 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_12121 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
d_utxoSt_2126 ~v0 ~v1 v2 = du_utxoSt_2126 v2
du_utxoSt_2126 ::
  T_GeneralizeTel_12121 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
du_utxoSt_2126 v0
  = coe
      d_utxoSt_1992 (coe d_'46'generalizedField'45's_12113 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_12121 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2190 ~v0 ~v1 v2 = du_pparams_2190 v2
du_pparams_2190 ::
  T_GeneralizeTel_12121 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2190 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2192
      (coe d_'46'generalizedField'45'Γ_12117 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_12121 -> AgdaAny
d_slot_2194 ~v0 ~v1 v2 = du_slot_2194 v2
du_slot_2194 :: T_GeneralizeTel_12121 -> AgdaAny
du_slot_2194 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2188
      (coe d_'46'generalizedField'45'Γ_12117 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  T_GeneralizeTel_12121 -> Integer
d_treasury_2196 ~v0 ~v1 v2 = du_treasury_2196 v2
du_treasury_2196 :: T_GeneralizeTel_12121 -> Integer
du_treasury_2196 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2196
      (coe d_'46'generalizedField'45'Γ_12117 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1750 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 ->
  T_LState_1984 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2642] -> T_LState_1984 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2216 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_7127 ::
  T_GeneralizeTel_7139 -> T_LState_1984
d_'46'generalizedField'45's_7127 v0
  = case coe v0 of
      C_mkGeneralizeTel_7141 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_7129 ::
  T_GeneralizeTel_7139 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2642
d_'46'generalizedField'45'tx_7129 v0
  = case coe v0 of
      C_mkGeneralizeTel_7141 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_7131 ::
  T_GeneralizeTel_7139 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2176
d_'46'generalizedField'45'Γ_7131 v0
  = case coe v0 of
      C_mkGeneralizeTel_7141 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_7133 ::
  T_GeneralizeTel_7139 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
d_'46'generalizedField'45'utxoSt''_7133 v0
  = case coe v0 of
      C_mkGeneralizeTel_7141 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_7135 ::
  T_GeneralizeTel_7139 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1098
d_'46'generalizedField'45'certState''_7135 v0
  = case coe v0 of
      C_mkGeneralizeTel_7141 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_7137 ::
  T_GeneralizeTel_7139 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_7137 v0
  = case coe v0 of
      C_mkGeneralizeTel_7141 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_7139 a0 a1 = ()
data T_GeneralizeTel_7139
  = C_mkGeneralizeTel_7141 T_LState_1984
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2642
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2176
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1098
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_12113 ::
  T_GeneralizeTel_12121 -> T_LState_1984
d_'46'generalizedField'45's_12113 v0
  = case coe v0 of
      C_mkGeneralizeTel_12123 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_12115 ::
  T_GeneralizeTel_12121 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2642
d_'46'generalizedField'45'tx_12115 v0
  = case coe v0 of
      C_mkGeneralizeTel_12123 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_12117 ::
  T_GeneralizeTel_12121 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2176
d_'46'generalizedField'45'Γ_12117 v0
  = case coe v0 of
      C_mkGeneralizeTel_12123 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_12119 ::
  T_GeneralizeTel_12121 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
d_'46'generalizedField'45'utxoSt''_12119 v0
  = case coe v0 of
      C_mkGeneralizeTel_12123 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_12121 a0 a1 = ()
data T_GeneralizeTel_12121
  = C_mkGeneralizeTel_12123 T_LState_1984
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2642
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2176
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2056
