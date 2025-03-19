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
import qualified MAlonzo.Code.Class.DecEq.Core
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
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo

-- _.DecEq-Credential
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))
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
d_body_1374 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520
d_body_1374 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2632 (coe v0)
-- _.Tx.isValid
d_isValid_1376 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Bool
d_isValid_1376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2636 (coe v0)
-- _.Tx.txAD
d_txAD_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 -> Maybe AgdaAny
d_txAD_1378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2638 (coe v0)
-- _.Tx.wits
d_wits_1380 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2622 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2602
d_wits_1380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2634 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2136 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1550 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 -> ()
d_GovState_1554 = erased
-- Ledger.Conway.Conformance.Ledger._.To-GovEnv
d_To'45'GovEnv_1556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1556 ~v0 ~v1 = du_To'45'GovEnv_1556
du_To'45'GovEnv_1556 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1556
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_To'45'GovEnv_2166
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1596 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1614 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1614 v0 ~v1 = du_updateDeposits_1614 v0
du_updateDeposits_1614 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1614 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2460 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1638 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1638 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2030 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1640 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2016 -> Integer
d_donations_1640 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2032 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1642 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2016 -> Integer
d_fees_1642 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2028 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1644 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2016 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1644 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2026 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1648 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1666 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_868 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1666 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1694 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-CertEnv
d_To'45'CertEnv_1760 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_1760 ~v0 ~v1 = du_To'45'CertEnv_1760
du_To'45'CertEnv_1760 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_1760
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_970
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_1856 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1042
d_dState_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1086 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_1858 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1062
d_gState_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1090 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_1860 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078 ->
  MAlonzo.Code.Ledger.Certs.T_PState_906
d_pState_1860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1088 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_1928 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-LEnv
d_To'45'LEnv_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1930 ~v0 ~v1 = du_To'45'LEnv_1930
du_To'45'LEnv_1930 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1930
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2178
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_1932 ~v0 ~v1 = du_allColdCreds_1932
du_allColdCreds_1932 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_1932
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2252
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_1934 v0 ~v1 = du_rmOrphanDRepVotes_1934 v0
du_rmOrphanDRepVotes_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_1934 v0
  = coe MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2232 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1936 ~v0 ~v1 = du_txgov_1936
du_txgov_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2520 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1936 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2182
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_1940 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_1940 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2158 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_1942 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2140 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1942 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2156 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_1944 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2140 -> Maybe AgdaAny
d_ppolicy_1944 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2154 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_1946 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2140 -> AgdaAny
d_slot_1946 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2152 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_1948 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2140 -> Integer
d_treasury_1948 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2160 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_1950 a0 a1 = ()
data T_LState_1950
  = C_'10214'_'44'_'44'_'10215''737'_1964 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2016
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_1958 ::
  T_LState_1950 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2016
d_utxoSt_1958 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1964 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_1960 ::
  T_LState_1950 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1960 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1964 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_1962 ::
  T_LState_1950 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078
d_certState_1962 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1964 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.To-LState
d_To'45'LState_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_1966 ~v0 ~v1 = du_To'45'LState_1966
du_To'45'LState_1966 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_1966
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
                                 (1950 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1596 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1950 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1554 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1950 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1694 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_1964))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__1986 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__1986
  = C_LEDGER'45'V_2082 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2016
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2162 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_1990 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_8375 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078
d_certState_1990 ~v0 ~v1 v2 = du_certState_1990 v2
du_certState_1990 ::
  T_GeneralizeTel_8375 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078
du_certState_1990 v0
  = coe
      d_certState_1962 (coe d_'46'generalizedField'45's_8363 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_8375 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1992 ~v0 ~v1 v2 = du_govSt_1992 v2
du_govSt_1992 ::
  T_GeneralizeTel_8375 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1992 v0
  = coe d_govSt_1960 (coe d_'46'generalizedField'45's_8363 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_8375 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2016
d_utxoSt_1994 ~v0 ~v1 v2 = du_utxoSt_1994 v2
du_utxoSt_1994 ::
  T_GeneralizeTel_8375 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2016
du_utxoSt_1994 v0
  = coe d_utxoSt_1958 (coe d_'46'generalizedField'45's_8363 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_8375 -> [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_2016 ~v0 ~v1 v2 = du_txcerts_2016 v2
du_txcerts_2016 ::
  T_GeneralizeTel_8375 -> [MAlonzo.Code.Ledger.Certs.T_DCert_832]
du_txcerts_2016 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2574
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_8365 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_8375 -> AgdaAny
d_txid_2022 ~v0 ~v1 v2 = du_txid_2022 v2
du_txid_2022 :: T_GeneralizeTel_8375 -> AgdaAny
du_txid_2022 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2594
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_8365 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_8375 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_720]
d_txvote_2036 ~v0 ~v1 v2 = du_txvote_2036 v2
du_txvote_2036 ::
  T_GeneralizeTel_8375 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_720]
du_txvote_2036 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2578
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_8365 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_8375 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2038 ~v0 ~v1 v2 = du_txwdrls_2038 v2
du_txwdrls_2038 ::
  T_GeneralizeTel_8375 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2038 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2576
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2632
         (coe d_'46'generalizedField'45'tx_8365 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_8375 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
d_enactState_2042 ~v0 ~v1 v2 = du_enactState_2042 v2
du_enactState_2042 ::
  T_GeneralizeTel_8375 -> MAlonzo.Code.Ledger.Enact.T_EnactState_826
du_enactState_2042 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2158
      (coe d_'46'generalizedField'45'Γ_8367 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_8375 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2044 ~v0 ~v1 v2 = du_pparams_2044 v2
du_pparams_2044 ::
  T_GeneralizeTel_8375 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2044 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2156
      (coe d_'46'generalizedField'45'Γ_8367 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_8375 -> Maybe AgdaAny
d_ppolicy_2046 ~v0 ~v1 v2 = du_ppolicy_2046 v2
du_ppolicy_2046 :: T_GeneralizeTel_8375 -> Maybe AgdaAny
du_ppolicy_2046 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2154
      (coe d_'46'generalizedField'45'Γ_8367 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_8375 -> AgdaAny
d_slot_2048 ~v0 ~v1 v2 = du_slot_2048 v2
du_slot_2048 :: T_GeneralizeTel_8375 -> AgdaAny
du_slot_2048 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2152
      (coe d_'46'generalizedField'45'Γ_8367 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_8375 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2074 ~v0 ~v1 v2 = du_pparams_2074 v2
du_pparams_2074 ::
  T_GeneralizeTel_8375 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2074 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2156
      (coe d_'46'generalizedField'45'Γ_8367 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_8375 -> AgdaAny
d_slot_2078 ~v0 ~v1 v2 = du_slot_2078 v2
du_slot_2078 :: T_GeneralizeTel_8375 -> AgdaAny
du_slot_2078 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2152
      (coe d_'46'generalizedField'45'Γ_8367 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_8375 -> Integer
d_treasury_2080 ~v0 ~v1 v2 = du_treasury_2080 v2
du_treasury_2080 :: T_GeneralizeTel_8375 -> Integer
du_treasury_2080 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2160
      (coe d_'46'generalizedField'45'Γ_8367 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_15347 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078
d_certState_2086 ~v0 ~v1 v2 = du_certState_2086 v2
du_certState_2086 ::
  T_GeneralizeTel_15347 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078
du_certState_2086 v0
  = coe
      d_certState_1962 (coe d_'46'generalizedField'45's_15339 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_15347 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2088 ~v0 ~v1 v2 = du_govSt_2088 v2
du_govSt_2088 ::
  T_GeneralizeTel_15347 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2088 v0
  = coe d_govSt_1960 (coe d_'46'generalizedField'45's_15339 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2090 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_15347 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2016
d_utxoSt_2090 ~v0 ~v1 v2 = du_utxoSt_2090 v2
du_utxoSt_2090 ::
  T_GeneralizeTel_15347 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2016
du_utxoSt_2090 v0
  = coe
      d_utxoSt_1958 (coe d_'46'generalizedField'45's_15339 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_15347 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2154 ~v0 ~v1 v2 = du_pparams_2154 v2
du_pparams_2154 ::
  T_GeneralizeTel_15347 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2154 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2156
      (coe d_'46'generalizedField'45'Γ_15343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_15347 -> AgdaAny
d_slot_2158 ~v0 ~v1 v2 = du_slot_2158 v2
du_slot_2158 :: T_GeneralizeTel_15347 -> AgdaAny
du_slot_2158 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2152
      (coe d_'46'generalizedField'45'Γ_15343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  T_GeneralizeTel_15347 -> Integer
d_treasury_2160 ~v0 ~v1 v2 = du_treasury_2160 v2
du_treasury_2160 :: T_GeneralizeTel_15347 -> Integer
du_treasury_2160 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2160
      (coe d_'46'generalizedField'45'Γ_15343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2184 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1716 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2140 ->
  T_LState_1950 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2622] -> T_LState_1950 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2184 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8363 ::
  T_GeneralizeTel_8375 -> T_LState_1950
d_'46'generalizedField'45's_8363 v0
  = case coe v0 of
      C_mkGeneralizeTel_8377 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8365 ::
  T_GeneralizeTel_8375 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2622
d_'46'generalizedField'45'tx_8365 v0
  = case coe v0 of
      C_mkGeneralizeTel_8377 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8367 ::
  T_GeneralizeTel_8375 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2140
d_'46'generalizedField'45'Γ_8367 v0
  = case coe v0 of
      C_mkGeneralizeTel_8377 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8369 ::
  T_GeneralizeTel_8375 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2016
d_'46'generalizedField'45'utxoSt''_8369 v0
  = case coe v0 of
      C_mkGeneralizeTel_8377 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState''
d_'46'generalizedField'45'certState''''_8371 ::
  T_GeneralizeTel_8375 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078
d_'46'generalizedField'45'certState''''_8371 v0
  = case coe v0 of
      C_mkGeneralizeTel_8377 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8373 ::
  T_GeneralizeTel_8375 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8373 v0
  = case coe v0 of
      C_mkGeneralizeTel_8377 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8375 a0 a1 = ()
data T_GeneralizeTel_8375
  = C_mkGeneralizeTel_8377 T_LState_1950
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2622
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2140
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2016
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1078
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_15339 ::
  T_GeneralizeTel_15347 -> T_LState_1950
d_'46'generalizedField'45's_15339 v0
  = case coe v0 of
      C_mkGeneralizeTel_15349 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_15341 ::
  T_GeneralizeTel_15347 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2622
d_'46'generalizedField'45'tx_15341 v0
  = case coe v0 of
      C_mkGeneralizeTel_15349 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_15343 ::
  T_GeneralizeTel_15347 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2140
d_'46'generalizedField'45'Γ_15343 v0
  = case coe v0 of
      C_mkGeneralizeTel_15349 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_15345 ::
  T_GeneralizeTel_15347 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2016
d_'46'generalizedField'45'utxoSt''_15345 v0
  = case coe v0 of
      C_mkGeneralizeTel_15349 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_15347 a0 a1 = ()
data T_GeneralizeTel_15347
  = C_mkGeneralizeTel_15349 T_LState_1950
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2622
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2140
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2016
