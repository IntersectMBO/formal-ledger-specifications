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
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Conway.Enact
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Ledger
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Utxo
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Tx
d_Tx_412 a0 = ()
-- _.epoch
d_epoch_486 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny
d_epoch_486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
         (coe v0))
-- _.Tx.body
d_body_1524 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_1524 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v0)
-- _.Tx.isValid
d_isValid_1526 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Bool
d_isValid_1526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v0)
-- _.Tx.txAD
d_txAD_1528 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Maybe AgdaAny
d_txAD_1528 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3150 (coe v0)
-- _.Tx.txsize
d_txsize_1530 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Integer
d_txsize_1530 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3146 (coe v0)
-- _.Tx.wits
d_wits_1532 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3110
d_wits_1532 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1698 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2414 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1698 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1702 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 -> ()
d_GovState_1702 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1704 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1704 ~v0 ~v1 = du_HasCast'45'GovEnv_1704
du_HasCast'45'GovEnv_1704 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1704
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2444
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1744 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1762 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1762 v0 ~v1 = du_updateDeposits_1762 v0
du_updateDeposits_1762 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_updateDeposits_2526 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1786 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1786 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2074 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1788 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 -> Integer
d_donations_1788 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2076 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1790 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 -> Integer
d_fees_1790 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2072 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1792 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1792 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2070 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1796 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1810 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1058 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1810 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1838 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_1898 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1898 ~v0 ~v1 = du_HasCast'45'CertEnv_1898
du_HasCast'45'CertEnv_1898 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1898
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'CertEnv_1286
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2058 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1258
d_dState_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1302 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2060 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1278
d_gState_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1306 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2062 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1156
d_pState_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1304 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2174 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2174 ~v0 ~v1 = du_HasCast'45'LEnv_2174
du_HasCast'45'LEnv_2174 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2174
  = coe MAlonzo.Code.Ledger.Conway.Ledger.du_HasCast'45'LEnv_2456
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2176 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2178 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_allColdCreds_2178 ~v0 ~v1 = du_allColdCreds_2178
du_allColdCreds_2178 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
du_allColdCreds_2178
  = coe MAlonzo.Code.Ledger.Conway.Ledger.du_allColdCreds_2528
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2180 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2180 v0 ~v1 = du_rmOrphanDRepVotes_2180 v0
du_rmOrphanDRepVotes_2180 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.du_rmOrphanDRepVotes_2508
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2182 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2182 ~v0 ~v1 = du_txgov_2182
du_txgov_2182 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2182 = coe MAlonzo.Code.Ledger.Conway.Ledger.du_txgov_2460
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2186 ::
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2388 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942
d_enactState_2186 v0
  = coe MAlonzo.Code.Ledger.Conway.Ledger.d_enactState_2406 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2188 ::
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2388 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_2188 v0
  = coe MAlonzo.Code.Ledger.Conway.Ledger.d_pparams_2404 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2190 ::
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2388 -> Maybe AgdaAny
d_ppolicy_2190 v0
  = coe MAlonzo.Code.Ledger.Conway.Ledger.d_ppolicy_2402 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2192 ::
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2388 -> AgdaAny
d_slot_2192 v0
  = coe MAlonzo.Code.Ledger.Conway.Ledger.d_slot_2400 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2194 ::
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2388 -> Integer
d_treasury_2194 v0
  = coe MAlonzo.Code.Ledger.Conway.Ledger.d_treasury_2408 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2196 a0 a1 = ()
data T_LState_2196
  = C_'10214'_'44'_'44'_'10215''737'_2210 MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2204 ::
  T_LState_2196 -> MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
d_utxoSt_2204 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2210 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2206 ::
  T_LState_2196 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2206 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2210 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2208 ::
  T_LState_2196 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294
d_certState_2208 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2210 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2212 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2212 ~v0 ~v1 = du_HasCast'45'LState_2212
du_HasCast'45'LState_2212 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2212
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                 (2196 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1744 :: Integer) (16262344046643431141 :: Integer)
                                 "Ledger.Conway.Conformance.Ledger._.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                    (2196 :: Integer) (16262344046643431141 :: Integer)
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
                                    "Ledger.Conway.Conformance.Ledger._.GovState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
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
                                       (2196 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1838 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2210))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2230 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2230
  = C_LEDGER'45'V_2328 MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2406 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2234 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294
d_certState_2234 ~v0 ~v1 v2 = du_certState_2234 v2
du_certState_2234 ::
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294
du_certState_2234 v0
  = coe
      d_certState_2208 (coe d_'46'generalizedField'45's_8523 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2236 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2236 ~v0 ~v1 v2 = du_govSt_2236 v2
du_govSt_2236 ::
  T_GeneralizeTel_8535 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2236 v0
  = coe d_govSt_2206 (coe d_'46'generalizedField'45's_8523 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2238 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
d_utxoSt_2238 ~v0 ~v1 v2 = du_utxoSt_2238 v2
du_utxoSt_2238 ::
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
du_utxoSt_2238 v0
  = coe d_utxoSt_2204 (coe d_'46'generalizedField'45's_8523 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2260 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcerts_2260 ~v0 ~v1 v2 = du_txcerts_2260 v2
du_txcerts_2260 ::
  T_GeneralizeTel_8535 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
du_txcerts_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2994
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_8525 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2266 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 -> AgdaAny
d_txid_2266 ~v0 ~v1 v2 = du_txid_2266 v2
du_txid_2266 :: T_GeneralizeTel_8535 -> AgdaAny
du_txid_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3012
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_8525 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2278 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836]
d_txvote_2278 ~v0 ~v1 v2 = du_txvote_2278 v2
du_txvote_2278 ::
  T_GeneralizeTel_8535 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836]
du_txvote_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_2998
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_8525 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2280 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2280 ~v0 ~v1 v2 = du_txwdrls_2280 v2
du_txwdrls_2280 ::
  T_GeneralizeTel_8535 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2996
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142
         (coe d_'46'generalizedField'45'tx_8525 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2284 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942
d_enactState_2284 ~v0 ~v1 v2 = du_enactState_2284 v2
du_enactState_2284 ::
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_942
du_enactState_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_enactState_2406
      (coe d_'46'generalizedField'45'Γ_8527 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2286 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_2286 ~v0 ~v1 v2 = du_pparams_2286 v2
du_pparams_2286 ::
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
du_pparams_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_pparams_2404
      (coe d_'46'generalizedField'45'Γ_8527 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2288 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 -> Maybe AgdaAny
d_ppolicy_2288 ~v0 ~v1 v2 = du_ppolicy_2288 v2
du_ppolicy_2288 :: T_GeneralizeTel_8535 -> Maybe AgdaAny
du_ppolicy_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_ppolicy_2402
      (coe d_'46'generalizedField'45'Γ_8527 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2290 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 -> AgdaAny
d_slot_2290 ~v0 ~v1 v2 = du_slot_2290 v2
du_slot_2290 :: T_GeneralizeTel_8535 -> AgdaAny
du_slot_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_slot_2400
      (coe d_'46'generalizedField'45'Γ_8527 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2296 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1258
d_dState_2296 ~v0 ~v1 v2 = du_dState_2296 v2
du_dState_2296 ::
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1258
du_dState_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1302
      (coe
         d_certState_2208 (coe d_'46'generalizedField'45's_8523 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2306 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2306 ~v0 ~v1 v2 = du_rewards_2306 v2
du_rewards_2306 ::
  T_GeneralizeTel_8535 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1272
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1302
         (coe
            d_certState_2208 (coe d_'46'generalizedField'45's_8523 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2320 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_2320 ~v0 ~v1 v2 = du_pparams_2320 v2
du_pparams_2320 ::
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
du_pparams_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_pparams_2404
      (coe d_'46'generalizedField'45'Γ_8527 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2324 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 -> AgdaAny
d_slot_2324 ~v0 ~v1 v2 = du_slot_2324 v2
du_slot_2324 :: T_GeneralizeTel_8535 -> AgdaAny
du_slot_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_slot_2400
      (coe d_'46'generalizedField'45'Γ_8527 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2326 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_8535 -> Integer
d_treasury_2326 ~v0 ~v1 v2 = du_treasury_2326 v2
du_treasury_2326 :: T_GeneralizeTel_8535 -> Integer
du_treasury_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_treasury_2408
      (coe d_'46'generalizedField'45'Γ_8527 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2332 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_13565 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294
d_certState_2332 ~v0 ~v1 v2 = du_certState_2332 v2
du_certState_2332 ::
  T_GeneralizeTel_13565 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294
du_certState_2332 v0
  = coe
      d_certState_2208 (coe d_'46'generalizedField'45's_13557 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2334 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_13565 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2334 ~v0 ~v1 v2 = du_govSt_2334 v2
du_govSt_2334 ::
  T_GeneralizeTel_13565 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2334 v0
  = coe d_govSt_2206 (coe d_'46'generalizedField'45's_13557 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2336 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_13565 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
d_utxoSt_2336 ~v0 ~v1 v2 = du_utxoSt_2336 v2
du_utxoSt_2336 ::
  T_GeneralizeTel_13565 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
du_utxoSt_2336 v0
  = coe
      d_utxoSt_2204 (coe d_'46'generalizedField'45's_13557 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2398 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_13565 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_2398 ~v0 ~v1 v2 = du_pparams_2398 v2
du_pparams_2398 ::
  T_GeneralizeTel_13565 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
du_pparams_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_pparams_2404
      (coe d_'46'generalizedField'45'Γ_13561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2402 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_13565 -> AgdaAny
d_slot_2402 ~v0 ~v1 v2 = du_slot_2402 v2
du_slot_2402 :: T_GeneralizeTel_13565 -> AgdaAny
du_slot_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_slot_2400
      (coe d_'46'generalizedField'45'Γ_13561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2404 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  T_GeneralizeTel_13565 -> Integer
d_treasury_2404 ~v0 ~v1 v2 = du_treasury_2404 v2
du_treasury_2404 :: T_GeneralizeTel_13565 -> Integer
du_treasury_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_treasury_2408
      (coe d_'46'generalizedField'45'Γ_13561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2424 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956 ->
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2388 ->
  T_LState_2196 ->
  [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130] ->
  T_LState_2196 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2424 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8523 ::
  T_GeneralizeTel_8535 -> T_LState_2196
d_'46'generalizedField'45's_8523 v0
  = case coe v0 of
      C_mkGeneralizeTel_8537 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8525 ::
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130
d_'46'generalizedField'45'tx_8525 v0
  = case coe v0 of
      C_mkGeneralizeTel_8537 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8527 ::
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2388
d_'46'generalizedField'45'Γ_8527 v0
  = case coe v0 of
      C_mkGeneralizeTel_8537 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8529 ::
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
d_'46'generalizedField'45'utxoSt''_8529 v0
  = case coe v0 of
      C_mkGeneralizeTel_8537 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8531 ::
  T_GeneralizeTel_8535 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294
d_'46'generalizedField'45'certState''_8531 v0
  = case coe v0 of
      C_mkGeneralizeTel_8537 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8533 ::
  T_GeneralizeTel_8535 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8533 v0
  = case coe v0 of
      C_mkGeneralizeTel_8537 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8535 a0 a1 = ()
data T_GeneralizeTel_8535
  = C_mkGeneralizeTel_8537 T_LState_2196
                           MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130
                           MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2388
                           MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1294
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13557 ::
  T_GeneralizeTel_13565 -> T_LState_2196
d_'46'generalizedField'45's_13557 v0
  = case coe v0 of
      C_mkGeneralizeTel_13567 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13559 ::
  T_GeneralizeTel_13565 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130
d_'46'generalizedField'45'tx_13559 v0
  = case coe v0 of
      C_mkGeneralizeTel_13567 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13561 ::
  T_GeneralizeTel_13565 ->
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2388
d_'46'generalizedField'45'Γ_13561 v0
  = case coe v0 of
      C_mkGeneralizeTel_13567 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13563 ::
  T_GeneralizeTel_13565 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
d_'46'generalizedField'45'utxoSt''_13563 v0
  = case coe v0 of
      C_mkGeneralizeTel_13567 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13565 a0 a1 = ()
data T_GeneralizeTel_13565
  = C_mkGeneralizeTel_13567 T_LState_2196
                            MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130
                            MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2388
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2060
