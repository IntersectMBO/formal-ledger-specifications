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
d_Tx_420 a0 = ()
-- _.epoch
d_epoch_494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_494 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1584 (coe v0))
-- _.Tx.body
d_body_1530 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978
d_body_1530 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_3180 (coe v0)
-- _.Tx.isValid
d_isValid_1532 :: MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> Bool
d_isValid_1532 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_3184 (coe v0)
-- _.Tx.txAD
d_txAD_1534 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 -> Maybe AgdaAny
d_txAD_1534 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_3186 (coe v0)
-- _.Tx.wits
d_wits_1536 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3170 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3150
d_wits_1536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_3182 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1718 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1718 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 -> ()
d_GovState_1722 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1724 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'GovEnv_1724 ~v0 ~v1 = du_HasCast'45'GovEnv_1724
du_HasCast'45'GovEnv_1724 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'GovEnv_1724
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2464
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1764 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1782 v0 ~v1 = du_updateDeposits_1782 v0
du_updateDeposits_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1782 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2744 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1806 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1806 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2292 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1808 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 -> Integer
d_donations_1808 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2294 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1810 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 -> Integer
d_fees_1810 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2290 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1812 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1812 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2288 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1816 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1834 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1028 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1266 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_992] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1266 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1834 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1862 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'CertEnv_1922 ~v0 ~v1 = du_HasCast'45'CertEnv_1922
du_HasCast'45'CertEnv_1922 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'CertEnv_1922
  = coe MAlonzo.Code.Ledger.Certs.du_HasCast'45'CertEnv_1256
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2082 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1266 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1230
d_dState_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1274 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2084 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1266 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1250
d_gState_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1278 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2086 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1266 ->
  MAlonzo.Code.Ledger.Certs.T_PState_1126
d_pState_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1276 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LEnv_2198 ~v0 ~v1 = du_HasCast'45'LEnv_2198
du_HasCast'45'LEnv_2198 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LEnv_2198
  = coe MAlonzo.Code.Ledger.Ledger.du_HasCast'45'LEnv_2502
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2200 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_912 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2202 ~v0 ~v1 = du_allColdCreds_2202
du_allColdCreds_2202 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_912 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2202
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2576
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1186 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2204 v0 ~v1 = du_rmOrphanDRepVotes_2204 v0
du_rmOrphanDRepVotes_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1186 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2204 v0
  = coe MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2556 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2206 ~v0 ~v1 = du_txgov_2206
du_txgov_2206 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2978 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2206 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2506
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2210 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2434 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_912
d_enactState_2210 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2452 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2212 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2212 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2450 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2214 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2434 -> Maybe AgdaAny
d_ppolicy_2214 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2448 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2216 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2434 -> AgdaAny
d_slot_2216 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2446 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2218 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2434 -> Integer
d_treasury_2218 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2454 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2220 a0 a1 = ()
data T_LState_2220
  = C_'10214'_'44'_'44'_'10215''737'_2234 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1266
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2228 ::
  T_LState_2220 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
d_utxoSt_2228 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2234 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2230 ::
  T_LState_2220 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2230 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2234 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2232 ::
  T_LState_2220 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1266
d_certState_2232 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2234 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LState_2236 ~v0 ~v1 = du_HasCast'45'LState_2236
du_HasCast'45'LState_2236 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LState_2236
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
                                 (2220 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1764 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2220 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2220 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1862 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2234))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2254 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2254
  = C_LEDGER'45'V_2354 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2434 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1266
d_certState_2258 ~v0 ~v1 v2 = du_certState_2258 v2
du_certState_2258 ::
  T_GeneralizeTel_8527 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1266
du_certState_2258 v0
  = coe
      d_certState_2232 (coe d_'46'generalizedField'45's_8515 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2260 ~v0 ~v1 v2 = du_govSt_2260 v2
du_govSt_2260 ::
  T_GeneralizeTel_8527 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2260 v0
  = coe d_govSt_2230 (coe d_'46'generalizedField'45's_8515 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
d_utxoSt_2262 ~v0 ~v1 v2 = du_utxoSt_2262 v2
du_utxoSt_2262 ::
  T_GeneralizeTel_8527 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
du_utxoSt_2262 v0
  = coe d_utxoSt_2228 (coe d_'46'generalizedField'45's_8515 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 -> [MAlonzo.Code.Ledger.Certs.T_DCert_992]
d_txcerts_2284 ~v0 ~v1 v2 = du_txcerts_2284 v2
du_txcerts_2284 ::
  T_GeneralizeTel_8527 -> [MAlonzo.Code.Ledger.Certs.T_DCert_992]
du_txcerts_2284 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_3032
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_8517 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 -> AgdaAny
d_txid_2290 ~v0 ~v1 v2 = du_txid_2290 v2
du_txid_2290 :: T_GeneralizeTel_8527 -> AgdaAny
du_txid_2290 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_3052
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_8517 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_804]
d_txvote_2304 ~v0 ~v1 v2 = du_txvote_2304 v2
du_txvote_2304 ::
  T_GeneralizeTel_8527 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_804]
du_txvote_2304 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_3036
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_8517 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2306 ~v0 ~v1 v2 = du_txwdrls_2306 v2
du_txwdrls_2306 ::
  T_GeneralizeTel_8527 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2306 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_3034
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3180
         (coe d_'46'generalizedField'45'tx_8517 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 -> MAlonzo.Code.Ledger.Enact.T_EnactState_912
d_enactState_2310 ~v0 ~v1 v2 = du_enactState_2310 v2
du_enactState_2310 ::
  T_GeneralizeTel_8527 -> MAlonzo.Code.Ledger.Enact.T_EnactState_912
du_enactState_2310 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2452
      (coe d_'46'generalizedField'45'Γ_8519 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2312 ~v0 ~v1 v2 = du_pparams_2312 v2
du_pparams_2312 ::
  T_GeneralizeTel_8527 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2312 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2450
      (coe d_'46'generalizedField'45'Γ_8519 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2314 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 -> Maybe AgdaAny
d_ppolicy_2314 ~v0 ~v1 v2 = du_ppolicy_2314 v2
du_ppolicy_2314 :: T_GeneralizeTel_8527 -> Maybe AgdaAny
du_ppolicy_2314 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2448
      (coe d_'46'generalizedField'45'Γ_8519 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 -> AgdaAny
d_slot_2316 ~v0 ~v1 v2 = du_slot_2316 v2
du_slot_2316 :: T_GeneralizeTel_8527 -> AgdaAny
du_slot_2316 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2446
      (coe d_'46'generalizedField'45'Γ_8519 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1230
d_dState_2322 ~v0 ~v1 v2 = du_dState_2322 v2
du_dState_2322 ::
  T_GeneralizeTel_8527 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1230
du_dState_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1274
      (coe
         d_certState_2232 (coe d_'46'generalizedField'45's_8515 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2332 ~v0 ~v1 v2 = du_rewards_2332 v2
du_rewards_2332 ::
  T_GeneralizeTel_8527 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1244
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1274
         (coe
            d_certState_2232 (coe d_'46'generalizedField'45's_8515 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2346 ~v0 ~v1 v2 = du_pparams_2346 v2
du_pparams_2346 ::
  T_GeneralizeTel_8527 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2346 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2450
      (coe d_'46'generalizedField'45'Γ_8519 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 -> AgdaAny
d_slot_2350 ~v0 ~v1 v2 = du_slot_2350 v2
du_slot_2350 :: T_GeneralizeTel_8527 -> AgdaAny
du_slot_2350 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2446
      (coe d_'46'generalizedField'45'Γ_8519 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_8527 -> Integer
d_treasury_2352 ~v0 ~v1 v2 = du_treasury_2352 v2
du_treasury_2352 :: T_GeneralizeTel_8527 -> Integer
du_treasury_2352 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2454
      (coe d_'46'generalizedField'45'Γ_8519 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_13509 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1266
d_certState_2358 ~v0 ~v1 v2 = du_certState_2358 v2
du_certState_2358 ::
  T_GeneralizeTel_13509 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1266
du_certState_2358 v0
  = coe
      d_certState_2232 (coe d_'46'generalizedField'45's_13501 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_13509 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2360 ~v0 ~v1 v2 = du_govSt_2360 v2
du_govSt_2360 ::
  T_GeneralizeTel_13509 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2360 v0
  = coe d_govSt_2230 (coe d_'46'generalizedField'45's_13501 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_13509 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
d_utxoSt_2362 ~v0 ~v1 v2 = du_utxoSt_2362 v2
du_utxoSt_2362 ::
  T_GeneralizeTel_13509 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
du_utxoSt_2362 v0
  = coe
      d_utxoSt_2228 (coe d_'46'generalizedField'45's_13501 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_13509 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2426 ~v0 ~v1 v2 = du_pparams_2426 v2
du_pparams_2426 ::
  T_GeneralizeTel_13509 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2426 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2450
      (coe d_'46'generalizedField'45'Γ_13505 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_13509 -> AgdaAny
d_slot_2430 ~v0 ~v1 v2 = du_slot_2430 v2
du_slot_2430 :: T_GeneralizeTel_13509 -> AgdaAny
du_slot_2430 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2446
      (coe d_'46'generalizedField'45'Γ_13505 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  T_GeneralizeTel_13509 -> Integer
d_treasury_2432 ~v0 ~v1 v2 = du_treasury_2432 v2
du_treasury_2432 :: T_GeneralizeTel_13509 -> Integer
du_treasury_2432 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2454
      (coe d_'46'generalizedField'45'Γ_13505 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1974 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2434 ->
  T_LState_2220 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_3170] -> T_LState_2220 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2452 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8515 ::
  T_GeneralizeTel_8527 -> T_LState_2220
d_'46'generalizedField'45's_8515 v0
  = case coe v0 of
      C_mkGeneralizeTel_8529 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8517 ::
  T_GeneralizeTel_8527 -> MAlonzo.Code.Ledger.Transaction.T_Tx_3170
d_'46'generalizedField'45'tx_8517 v0
  = case coe v0 of
      C_mkGeneralizeTel_8529 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8519 ::
  T_GeneralizeTel_8527 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2434
d_'46'generalizedField'45'Γ_8519 v0
  = case coe v0 of
      C_mkGeneralizeTel_8529 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8521 ::
  T_GeneralizeTel_8527 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
d_'46'generalizedField'45'utxoSt''_8521 v0
  = case coe v0 of
      C_mkGeneralizeTel_8529 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8523 ::
  T_GeneralizeTel_8527 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1266
d_'46'generalizedField'45'certState''_8523 v0
  = case coe v0 of
      C_mkGeneralizeTel_8529 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8525 ::
  T_GeneralizeTel_8527 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8525 v0
  = case coe v0 of
      C_mkGeneralizeTel_8529 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8527 a0 a1 = ()
data T_GeneralizeTel_8527
  = C_mkGeneralizeTel_8529 T_LState_2220
                           MAlonzo.Code.Ledger.Transaction.T_Tx_3170
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2434
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1266
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13501 ::
  T_GeneralizeTel_13509 -> T_LState_2220
d_'46'generalizedField'45's_13501 v0
  = case coe v0 of
      C_mkGeneralizeTel_13511 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13503 ::
  T_GeneralizeTel_13509 -> MAlonzo.Code.Ledger.Transaction.T_Tx_3170
d_'46'generalizedField'45'tx_13503 v0
  = case coe v0 of
      C_mkGeneralizeTel_13511 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13505 ::
  T_GeneralizeTel_13509 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2434
d_'46'generalizedField'45'Γ_13505 v0
  = case coe v0 of
      C_mkGeneralizeTel_13511 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13507 ::
  T_GeneralizeTel_13509 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
d_'46'generalizedField'45'utxoSt''_13507 v0
  = case coe v0 of
      C_mkGeneralizeTel_13511 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13509 a0 a1 = ()
data T_GeneralizeTel_13509
  = C_mkGeneralizeTel_13511 T_LState_2220
                            MAlonzo.Code.Ledger.Transaction.T_Tx_3170
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2434
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2278
