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
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0))
-- _.isKeyHash
d_isKeyHash_468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_468 = erased
-- _.Tx.body
d_body_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522
d_body_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2634 (coe v0)
-- _.Tx.isValid
d_isValid_1380 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Bool
d_isValid_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2638 (coe v0)
-- _.Tx.txAD
d_txAD_1382 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 -> Maybe AgdaAny
d_txAD_1382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2640 (coe v0)
-- _.Tx.wits
d_wits_1384 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2624 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2604
d_wits_1384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2636 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2140 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1554 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 -> ()
d_GovState_1558 = erased
-- Ledger.Conway.Conformance.Ledger._.To-GovEnv
d_To'45'GovEnv_1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1560 ~v0 ~v1 = du_To'45'GovEnv_1560
du_To'45'GovEnv_1560 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1560
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_To'45'GovEnv_2170
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1600 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1618 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1618 v0 ~v1 = du_updateDeposits_1618 v0
du_updateDeposits_1618 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1618 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2470 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1642 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1642 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2040 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1644 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2026 -> Integer
d_donations_1644 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2042 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1646 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2026 -> Integer
d_fees_1646 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2038 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1648 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1648 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2036 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1652 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_870 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1080 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_834] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1080 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1670 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1698 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-CertEnv
d_To'45'CertEnv_1764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_1764 ~v0 ~v1 = du_To'45'CertEnv_1764
du_To'45'CertEnv_1764 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_1764
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_972
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_1860 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1080 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1044
d_dState_1860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1088 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_1862 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1080 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1064
d_gState_1862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1092 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_1864 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1080 ->
  MAlonzo.Code.Ledger.Certs.T_PState_908
d_pState_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1090 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_1932 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-LEnv
d_To'45'LEnv_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1934 ~v0 ~v1 = du_To'45'LEnv_1934
du_To'45'LEnv_1934 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1934
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2184
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_1936 ~v0 ~v1 = du_allColdCreds_1936
du_allColdCreds_1936 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_1936
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2258
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_1938 v0 ~v1 = du_rmOrphanDRepVotes_1938 v0
du_rmOrphanDRepVotes_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_930 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_1938 v0
  = coe MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2238 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1940 ~v0 ~v1 = du_txgov_1940
du_txgov_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2522 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1940 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2188
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_1944 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2146 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_1944 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2164 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_1946 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2146 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1946 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2162 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_1948 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2146 -> Maybe AgdaAny
d_ppolicy_1948 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2160 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_1950 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2146 -> AgdaAny
d_slot_1950 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2158 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_1952 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2146 -> Integer
d_treasury_1952 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2166 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_1954 a0 a1 = ()
data T_LState_1954
  = C_'10214'_'44'_'44'_'10215''737'_1968 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2026
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1080
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_1962 ::
  T_LState_1954 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2026
d_utxoSt_1962 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1968 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_1964 ::
  T_LState_1954 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1964 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1968 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_1966 ::
  T_LState_1954 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1080
d_certState_1966 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1968 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.To-LState
d_To'45'LState_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_1970 ~v0 ~v1 = du_To'45'LState_1970
du_To'45'LState_1970 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_1970
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
                                 (1954 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1600 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1954 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1558 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1954 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1698 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_1968))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__1988 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__1988
  = C_LEDGER'45'V_2090 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2026
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2170 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1080
d_certState_1992 ~v0 ~v1 v2 = du_certState_1992 v2
du_certState_1992 ::
  T_GeneralizeTel_7445 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1080
du_certState_1992 v0
  = coe
      d_certState_1966 (coe d_'46'generalizedField'45's_7433 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1994 ~v0 ~v1 v2 = du_govSt_1994 v2
du_govSt_1994 ::
  T_GeneralizeTel_7445 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1994 v0
  = coe d_govSt_1964 (coe d_'46'generalizedField'45's_7433 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2026
d_utxoSt_1996 ~v0 ~v1 v2 = du_utxoSt_1996 v2
du_utxoSt_1996 ::
  T_GeneralizeTel_7445 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2026
du_utxoSt_1996 v0
  = coe d_utxoSt_1962 (coe d_'46'generalizedField'45's_7433 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2018 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 -> [MAlonzo.Code.Ledger.Certs.T_DCert_834]
d_txcerts_2018 ~v0 ~v1 v2 = du_txcerts_2018 v2
du_txcerts_2018 ::
  T_GeneralizeTel_7445 -> [MAlonzo.Code.Ledger.Certs.T_DCert_834]
du_txcerts_2018 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2576
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_7435 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 -> AgdaAny
d_txid_2024 ~v0 ~v1 v2 = du_txid_2024 v2
du_txid_2024 :: T_GeneralizeTel_7445 -> AgdaAny
du_txid_2024 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2596
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_7435 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724]
d_txvote_2038 ~v0 ~v1 v2 = du_txvote_2038 v2
du_txvote_2038 ::
  T_GeneralizeTel_7445 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_724]
du_txvote_2038 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2580
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_7435 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2040 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2040 ~v0 ~v1 v2 = du_txwdrls_2040 v2
du_txwdrls_2040 ::
  T_GeneralizeTel_7445 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2040 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2578
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2634
         (coe d_'46'generalizedField'45'tx_7435 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_enactState_2044 ~v0 ~v1 v2 = du_enactState_2044 v2
du_enactState_2044 ::
  T_GeneralizeTel_7445 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
du_enactState_2044 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2164
      (coe d_'46'generalizedField'45'Γ_7437 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2046 ~v0 ~v1 v2 = du_pparams_2046 v2
du_pparams_2046 ::
  T_GeneralizeTel_7445 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2046 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2162
      (coe d_'46'generalizedField'45'Γ_7437 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 -> Maybe AgdaAny
d_ppolicy_2048 ~v0 ~v1 v2 = du_ppolicy_2048 v2
du_ppolicy_2048 :: T_GeneralizeTel_7445 -> Maybe AgdaAny
du_ppolicy_2048 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2160
      (coe d_'46'generalizedField'45'Γ_7437 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 -> AgdaAny
d_slot_2050 ~v0 ~v1 v2 = du_slot_2050 v2
du_slot_2050 :: T_GeneralizeTel_7445 -> AgdaAny
du_slot_2050 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2158
      (coe d_'46'generalizedField'45'Γ_7437 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1044
d_dState_2056 ~v0 ~v1 v2 = du_dState_2056 v2
du_dState_2056 ::
  T_GeneralizeTel_7445 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1044
du_dState_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1088
      (coe
         d_certState_1966 (coe d_'46'generalizedField'45's_7433 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2066 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2066 ~v0 ~v1 v2 = du_rewards_2066 v2
du_rewards_2066 ::
  T_GeneralizeTel_7445 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1058
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1088
         (coe
            d_certState_1966 (coe d_'46'generalizedField'45's_7433 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2082 ~v0 ~v1 v2 = du_pparams_2082 v2
du_pparams_2082 ::
  T_GeneralizeTel_7445 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2082 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2162
      (coe d_'46'generalizedField'45'Γ_7437 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 -> AgdaAny
d_slot_2086 ~v0 ~v1 v2 = du_slot_2086 v2
du_slot_2086 :: T_GeneralizeTel_7445 -> AgdaAny
du_slot_2086 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2158
      (coe d_'46'generalizedField'45'Γ_7437 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_7445 -> Integer
d_treasury_2088 ~v0 ~v1 v2 = du_treasury_2088 v2
du_treasury_2088 :: T_GeneralizeTel_7445 -> Integer
du_treasury_2088 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2166
      (coe d_'46'generalizedField'45'Γ_7437 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2094 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_13413 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1080
d_certState_2094 ~v0 ~v1 v2 = du_certState_2094 v2
du_certState_2094 ::
  T_GeneralizeTel_13413 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1080
du_certState_2094 v0
  = coe
      d_certState_1966 (coe d_'46'generalizedField'45's_13405 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_13413 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2096 ~v0 ~v1 v2 = du_govSt_2096 v2
du_govSt_2096 ::
  T_GeneralizeTel_13413 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2096 v0
  = coe d_govSt_1964 (coe d_'46'generalizedField'45's_13405 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_13413 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2026
d_utxoSt_2098 ~v0 ~v1 v2 = du_utxoSt_2098 v2
du_utxoSt_2098 ::
  T_GeneralizeTel_13413 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2026
du_utxoSt_2098 v0
  = coe
      d_utxoSt_1962 (coe d_'46'generalizedField'45's_13405 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_13413 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2162 ~v0 ~v1 v2 = du_pparams_2162 v2
du_pparams_2162 ::
  T_GeneralizeTel_13413 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2162 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2162
      (coe d_'46'generalizedField'45'Γ_13409 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_13413 -> AgdaAny
d_slot_2166 ~v0 ~v1 v2 = du_slot_2166 v2
du_slot_2166 :: T_GeneralizeTel_13413 -> AgdaAny
du_slot_2166 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2158
      (coe d_'46'generalizedField'45'Γ_13409 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  T_GeneralizeTel_13413 -> Integer
d_treasury_2168 ~v0 ~v1 v2 = du_treasury_2168 v2
du_treasury_2168 :: T_GeneralizeTel_13413 -> Integer
du_treasury_2168 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2166
      (coe d_'46'generalizedField'45'Γ_13409 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1720 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2146 ->
  T_LState_1954 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2624] -> T_LState_1954 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2190 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_7433 ::
  T_GeneralizeTel_7445 -> T_LState_1954
d_'46'generalizedField'45's_7433 v0
  = case coe v0 of
      C_mkGeneralizeTel_7447 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_7435 ::
  T_GeneralizeTel_7445 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2624
d_'46'generalizedField'45'tx_7435 v0
  = case coe v0 of
      C_mkGeneralizeTel_7447 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_7437 ::
  T_GeneralizeTel_7445 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2146
d_'46'generalizedField'45'Γ_7437 v0
  = case coe v0 of
      C_mkGeneralizeTel_7447 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_7439 ::
  T_GeneralizeTel_7445 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2026
d_'46'generalizedField'45'utxoSt''_7439 v0
  = case coe v0 of
      C_mkGeneralizeTel_7447 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_7441 ::
  T_GeneralizeTel_7445 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1080
d_'46'generalizedField'45'certState''_7441 v0
  = case coe v0 of
      C_mkGeneralizeTel_7447 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_7443 ::
  T_GeneralizeTel_7445 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_7443 v0
  = case coe v0 of
      C_mkGeneralizeTel_7447 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_7445 a0 a1 = ()
data T_GeneralizeTel_7445
  = C_mkGeneralizeTel_7447 T_LState_1954
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2624
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2146
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2026
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1080
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13405 ::
  T_GeneralizeTel_13413 -> T_LState_1954
d_'46'generalizedField'45's_13405 v0
  = case coe v0 of
      C_mkGeneralizeTel_13415 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13407 ::
  T_GeneralizeTel_13413 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2624
d_'46'generalizedField'45'tx_13407 v0
  = case coe v0 of
      C_mkGeneralizeTel_13415 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13409 ::
  T_GeneralizeTel_13413 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2146
d_'46'generalizedField'45'Γ_13409 v0
  = case coe v0 of
      C_mkGeneralizeTel_13415 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13411 ::
  T_GeneralizeTel_13413 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2026
d_'46'generalizedField'45'utxoSt''_13411 v0
  = case coe v0 of
      C_mkGeneralizeTel_13415 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13413 a0 a1 = ()
data T_GeneralizeTel_13413
  = C_mkGeneralizeTel_13415 T_LState_1954
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2624
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2146
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2026
