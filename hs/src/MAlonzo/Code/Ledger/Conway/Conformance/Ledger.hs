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
import qualified MAlonzo.Code.Class.HasCast.Base
import qualified MAlonzo.Code.Class.HasCast.Derive
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
d_Tx_404 a0 = ()
-- _.epoch
d_epoch_478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_478 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1574 (coe v0))
-- _.Tx.body
d_body_1508 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652
d_body_1508 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2854 (coe v0)
-- _.Tx.isValid
d_isValid_1510 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2844 -> Bool
d_isValid_1510 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2858 (coe v0)
-- _.Tx.txAD
d_txAD_1512 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 -> Maybe AgdaAny
d_txAD_1512 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2860 (coe v0)
-- _.Tx.wits
d_wits_1514 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2844 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2824
d_wits_1514 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2856 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1696 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1700 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 -> ()
d_GovState_1700 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'GovEnv_1702 ~v0 ~v1 = du_HasCast'45'GovEnv_1702
du_HasCast'45'GovEnv_1702 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'GovEnv_1702
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2422
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1742 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1760 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1760 v0 ~v1 = du_updateDeposits_1760 v0
du_updateDeposits_1760 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1760 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2700 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1784 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1784 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2248 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1786 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 -> Integer
d_donations_1786 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2250 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1788 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 -> Integer
d_fees_1788 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2246 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1790 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1790 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2244 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1794 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1812 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1018 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1236 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_982] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1236 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1812 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1840 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_1900 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'CertEnv_1900 ~v0 ~v1 = du_HasCast'45'CertEnv_1900
du_HasCast'45'CertEnv_1900 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'CertEnv_1900
  = coe MAlonzo.Code.Ledger.Certs.du_HasCast'45'CertEnv_1206
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2048 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1236 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1200
d_dState_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1244 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2050 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1236 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1220
d_gState_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1248 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2052 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1236 ->
  MAlonzo.Code.Ledger.Certs.T_PState_1076
d_pState_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1246 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LEnv_2156 ~v0 ~v1 = du_HasCast'45'LEnv_2156
du_HasCast'45'LEnv_2156 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LEnv_2156
  = coe MAlonzo.Code.Ledger.Ledger.du_HasCast'45'LEnv_2458
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2158 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2160 ~v0 ~v1 = du_allColdCreds_2160
du_allColdCreds_2160 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_902 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2160
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2532
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1136 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2162 v0 ~v1 = du_rmOrphanDRepVotes_2162 v0
du_rmOrphanDRepVotes_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1136 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2162 v0
  = coe MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2512 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2164 ~v0 ~v1 = du_txgov_2164
du_txgov_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2652 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2164 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2462
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2168 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2390 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_902
d_enactState_2168 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2408 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2170 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2390 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2170 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2406 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2172 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2390 -> Maybe AgdaAny
d_ppolicy_2172 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2404 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2174 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2390 -> AgdaAny
d_slot_2174 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2402 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2176 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2390 -> Integer
d_treasury_2176 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2410 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2178 a0 a1 = ()
data T_LState_2178
  = C_'10214'_'44'_'44'_'10215''737'_2192 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1236
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2186 ::
  T_LState_2178 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
d_utxoSt_2186 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2192 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2188 ::
  T_LState_2178 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2188 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2192 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2190 ::
  T_LState_2178 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1236
d_certState_2190 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2192 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2194 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LState_2194 ~v0 ~v1 = du_HasCast'45'LState_2194
du_HasCast'45'LState_2194 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LState_2194
  = coe
      MAlonzo.Code.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                 (2178 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1742 :: Integer) (16262344046643431141 :: Integer)
                                 "Ledger.Conway.Conformance.Ledger._.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                    (2178 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1700 :: Integer) (16262344046643431141 :: Integer)
                                    "Ledger.Conway.Conformance.Ledger._.GovState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                       (2178 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1840 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2192))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2212 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2212
  = C_LEDGER'45'V_2312 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2392 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1236
d_certState_2216 ~v0 ~v1 v2 = du_certState_2216 v2
du_certState_2216 ::
  T_GeneralizeTel_8325 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1236
du_certState_2216 v0
  = coe
      d_certState_2190 (coe d_'46'generalizedField'45's_8313 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2218 ~v0 ~v1 v2 = du_govSt_2218 v2
du_govSt_2218 ::
  T_GeneralizeTel_8325 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2218 v0
  = coe d_govSt_2188 (coe d_'46'generalizedField'45's_8313 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2220 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
d_utxoSt_2220 ~v0 ~v1 v2 = du_utxoSt_2220 v2
du_utxoSt_2220 ::
  T_GeneralizeTel_8325 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
du_utxoSt_2220 v0
  = coe d_utxoSt_2186 (coe d_'46'generalizedField'45's_8313 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 -> [MAlonzo.Code.Ledger.Certs.T_DCert_982]
d_txcerts_2242 ~v0 ~v1 v2 = du_txcerts_2242 v2
du_txcerts_2242 ::
  T_GeneralizeTel_8325 -> [MAlonzo.Code.Ledger.Certs.T_DCert_982]
du_txcerts_2242 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2706
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_8315 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 -> AgdaAny
d_txid_2248 ~v0 ~v1 v2 = du_txid_2248 v2
du_txid_2248 :: T_GeneralizeTel_8325 -> AgdaAny
du_txid_2248 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2726
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_8315 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_794]
d_txvote_2262 ~v0 ~v1 v2 = du_txvote_2262 v2
du_txvote_2262 ::
  T_GeneralizeTel_8325 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_794]
du_txvote_2262 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2710
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_8315 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2264 ~v0 ~v1 v2 = du_txwdrls_2264 v2
du_txwdrls_2264 ::
  T_GeneralizeTel_8325 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2264 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2708
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2854
         (coe d_'46'generalizedField'45'tx_8315 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 -> MAlonzo.Code.Ledger.Enact.T_EnactState_902
d_enactState_2268 ~v0 ~v1 v2 = du_enactState_2268 v2
du_enactState_2268 ::
  T_GeneralizeTel_8325 -> MAlonzo.Code.Ledger.Enact.T_EnactState_902
du_enactState_2268 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2408
      (coe d_'46'generalizedField'45'Γ_8317 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2270 ~v0 ~v1 v2 = du_pparams_2270 v2
du_pparams_2270 ::
  T_GeneralizeTel_8325 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2270 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2406
      (coe d_'46'generalizedField'45'Γ_8317 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 -> Maybe AgdaAny
d_ppolicy_2272 ~v0 ~v1 v2 = du_ppolicy_2272 v2
du_ppolicy_2272 :: T_GeneralizeTel_8325 -> Maybe AgdaAny
du_ppolicy_2272 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2404
      (coe d_'46'generalizedField'45'Γ_8317 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 -> AgdaAny
d_slot_2274 ~v0 ~v1 v2 = du_slot_2274 v2
du_slot_2274 :: T_GeneralizeTel_8325 -> AgdaAny
du_slot_2274 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2402
      (coe d_'46'generalizedField'45'Γ_8317 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1200
d_dState_2280 ~v0 ~v1 v2 = du_dState_2280 v2
du_dState_2280 ::
  T_GeneralizeTel_8325 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1200
du_dState_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1244
      (coe
         d_certState_2190 (coe d_'46'generalizedField'45's_8313 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2290 ~v0 ~v1 v2 = du_rewards_2290 v2
du_rewards_2290 ::
  T_GeneralizeTel_8325 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1214
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1244
         (coe
            d_certState_2190 (coe d_'46'generalizedField'45's_8313 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2304 ~v0 ~v1 v2 = du_pparams_2304 v2
du_pparams_2304 ::
  T_GeneralizeTel_8325 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2304 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2406
      (coe d_'46'generalizedField'45'Γ_8317 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2308 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 -> AgdaAny
d_slot_2308 ~v0 ~v1 v2 = du_slot_2308 v2
du_slot_2308 :: T_GeneralizeTel_8325 -> AgdaAny
du_slot_2308 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2402
      (coe d_'46'generalizedField'45'Γ_8317 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_8325 -> Integer
d_treasury_2310 ~v0 ~v1 v2 = du_treasury_2310 v2
du_treasury_2310 :: T_GeneralizeTel_8325 -> Integer
du_treasury_2310 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2410
      (coe d_'46'generalizedField'45'Γ_8317 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_13307 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1236
d_certState_2316 ~v0 ~v1 v2 = du_certState_2316 v2
du_certState_2316 ::
  T_GeneralizeTel_13307 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1236
du_certState_2316 v0
  = coe
      d_certState_2190 (coe d_'46'generalizedField'45's_13299 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2318 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_13307 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2318 ~v0 ~v1 v2 = du_govSt_2318 v2
du_govSt_2318 ::
  T_GeneralizeTel_13307 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2318 v0
  = coe d_govSt_2188 (coe d_'46'generalizedField'45's_13299 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_13307 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
d_utxoSt_2320 ~v0 ~v1 v2 = du_utxoSt_2320 v2
du_utxoSt_2320 ::
  T_GeneralizeTel_13307 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
du_utxoSt_2320 v0
  = coe
      d_utxoSt_2186 (coe d_'46'generalizedField'45's_13299 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_13307 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2384 ~v0 ~v1 v2 = du_pparams_2384 v2
du_pparams_2384 ::
  T_GeneralizeTel_13307 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2384 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2406
      (coe d_'46'generalizedField'45'Γ_13303 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_13307 -> AgdaAny
d_slot_2388 ~v0 ~v1 v2 = du_slot_2388 v2
du_slot_2388 :: T_GeneralizeTel_13307 -> AgdaAny
du_slot_2388 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2402
      (coe d_'46'generalizedField'45'Γ_13303 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2390 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  T_GeneralizeTel_13307 -> Integer
d_treasury_2390 ~v0 ~v1 v2 = du_treasury_2390 v2
du_treasury_2390 :: T_GeneralizeTel_13307 -> Integer
du_treasury_2390 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2410
      (coe d_'46'generalizedField'45'Γ_13303 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1932 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2390 ->
  T_LState_2178 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2844] -> T_LState_2178 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2410 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8313 ::
  T_GeneralizeTel_8325 -> T_LState_2178
d_'46'generalizedField'45's_8313 v0
  = case coe v0 of
      C_mkGeneralizeTel_8327 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8315 ::
  T_GeneralizeTel_8325 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2844
d_'46'generalizedField'45'tx_8315 v0
  = case coe v0 of
      C_mkGeneralizeTel_8327 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8317 ::
  T_GeneralizeTel_8325 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2390
d_'46'generalizedField'45'Γ_8317 v0
  = case coe v0 of
      C_mkGeneralizeTel_8327 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8319 ::
  T_GeneralizeTel_8325 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
d_'46'generalizedField'45'utxoSt''_8319 v0
  = case coe v0 of
      C_mkGeneralizeTel_8327 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8321 ::
  T_GeneralizeTel_8325 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1236
d_'46'generalizedField'45'certState''_8321 v0
  = case coe v0 of
      C_mkGeneralizeTel_8327 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8323 ::
  T_GeneralizeTel_8325 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8323 v0
  = case coe v0 of
      C_mkGeneralizeTel_8327 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8325 a0 a1 = ()
data T_GeneralizeTel_8325
  = C_mkGeneralizeTel_8327 T_LState_2178
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2844
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2390
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1236
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13299 ::
  T_GeneralizeTel_13307 -> T_LState_2178
d_'46'generalizedField'45's_13299 v0
  = case coe v0 of
      C_mkGeneralizeTel_13309 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13301 ::
  T_GeneralizeTel_13307 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2844
d_'46'generalizedField'45'tx_13301 v0
  = case coe v0 of
      C_mkGeneralizeTel_13309 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13303 ::
  T_GeneralizeTel_13307 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2390
d_'46'generalizedField'45'Γ_13303 v0
  = case coe v0 of
      C_mkGeneralizeTel_13309 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13305 ::
  T_GeneralizeTel_13307 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
d_'46'generalizedField'45'utxoSt''_13305 v0
  = case coe v0 of
      C_mkGeneralizeTel_13309 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13307 a0 a1 = ()
data T_GeneralizeTel_13307
  = C_mkGeneralizeTel_13309 T_LState_2178
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2844
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2390
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2234
