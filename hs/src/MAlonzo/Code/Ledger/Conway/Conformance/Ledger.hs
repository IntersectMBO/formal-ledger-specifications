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
d_Tx_430 a0 = ()
-- _.epoch
d_epoch_504 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny
d_epoch_504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1604
         (coe v0))
-- _.Tx.body
d_body_1546 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006
d_body_1546 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208 (coe v0)
-- _.Tx.isValid
d_isValid_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> Bool
d_isValid_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3212 (coe v0)
-- _.Tx.txAD
d_txAD_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 -> Maybe AgdaAny
d_txAD_1550 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3214 (coe v0)
-- _.Tx.wits
d_wits_1552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3178
d_wits_1552 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3210 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1734 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2450 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1734 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1738 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 -> ()
d_GovState_1738 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1740 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1740 ~v0 ~v1 = du_HasCast'45'GovEnv_1740
du_HasCast'45'GovEnv_1740 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1740
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2480
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1780 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1798 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1798 v0 ~v1 = du_updateDeposits_1798 v0
du_updateDeposits_1798 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_updateDeposits_2762 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1822 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1822 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2310 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1824 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 -> Integer
d_donations_1824 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2312 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1826 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 -> Integer
d_fees_1826 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2308 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1828 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1828 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2306 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1832 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1850 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1044 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1850 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1878 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_1938 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1938 ~v0 ~v1 = du_HasCast'45'CertEnv_1938
du_HasCast'45'CertEnv_1938 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1938
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'CertEnv_1272
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2098 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1244
d_dState_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2100 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1264
d_gState_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1292 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2102 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1142
d_pState_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1290 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2214 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2214 ~v0 ~v1 = du_HasCast'45'LEnv_2214
du_HasCast'45'LEnv_2214 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2214
  = coe MAlonzo.Code.Ledger.Conway.Ledger.du_HasCast'45'LEnv_2520
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2216 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2218 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_928 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_allColdCreds_2218 ~v0 ~v1 = du_allColdCreds_2218
du_allColdCreds_2218 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_928 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
du_allColdCreds_2218
  = coe MAlonzo.Code.Ledger.Conway.Ledger.du_allColdCreds_2594
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2220 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1202 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2220 v0 ~v1 = du_rmOrphanDRepVotes_2220 v0
du_rmOrphanDRepVotes_2220 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1202 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.du_rmOrphanDRepVotes_2574
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2222 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2222 ~v0 ~v1 = du_txgov_2222
du_txgov_2222 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3006 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2222 = coe MAlonzo.Code.Ledger.Conway.Ledger.du_txgov_2524
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2226 ::
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2452 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_928
d_enactState_2226 v0
  = coe MAlonzo.Code.Ledger.Conway.Ledger.d_enactState_2470 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2228 ::
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2452 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_2228 v0
  = coe MAlonzo.Code.Ledger.Conway.Ledger.d_pparams_2468 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2230 ::
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2452 -> Maybe AgdaAny
d_ppolicy_2230 v0
  = coe MAlonzo.Code.Ledger.Conway.Ledger.d_ppolicy_2466 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2232 ::
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2452 -> AgdaAny
d_slot_2232 v0
  = coe MAlonzo.Code.Ledger.Conway.Ledger.d_slot_2464 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2234 ::
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2452 -> Integer
d_treasury_2234 v0
  = coe MAlonzo.Code.Ledger.Conway.Ledger.d_treasury_2472 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2236 a0 a1 = ()
data T_LState_2236
  = C_'10214'_'44'_'44'_'10215''737'_2250 MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2244 ::
  T_LState_2236 -> MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
d_utxoSt_2244 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2250 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2246 ::
  T_LState_2236 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2246 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2250 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2248 ::
  T_LState_2236 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280
d_certState_2248 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2250 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2252 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2252 ~v0 ~v1 = du_HasCast'45'LState_2252
du_HasCast'45'LState_2252 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2252
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
                                 (2236 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1780 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2236 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1738 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2236 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1878 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2250))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2270 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2270
  = C_LEDGER'45'V_2370 MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2450 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2274 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280
d_certState_2274 ~v0 ~v1 v2 = du_certState_2274 v2
du_certState_2274 ::
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280
du_certState_2274 v0
  = coe
      d_certState_2248 (coe d_'46'generalizedField'45's_8641 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2276 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2276 ~v0 ~v1 v2 = du_govSt_2276 v2
du_govSt_2276 ::
  T_GeneralizeTel_8653 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2276 v0
  = coe d_govSt_2246 (coe d_'46'generalizedField'45's_8641 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2278 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
d_utxoSt_2278 ~v0 ~v1 v2 = du_utxoSt_2278 v2
du_utxoSt_2278 ::
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
du_utxoSt_2278 v0
  = coe d_utxoSt_2244 (coe d_'46'generalizedField'45's_8641 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2300 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008]
d_txcerts_2300 ~v0 ~v1 v2 = du_txcerts_2300 v2
du_txcerts_2300 ::
  T_GeneralizeTel_8653 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1008]
du_txcerts_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3060
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_8643 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2306 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 -> AgdaAny
d_txid_2306 ~v0 ~v1 v2 = du_txid_2306 v2
du_txid_2306 :: T_GeneralizeTel_8653 -> AgdaAny
du_txid_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3080
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_8643 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2320 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822]
d_txvote_2320 ~v0 ~v1 v2 = du_txvote_2320 v2
du_txvote_2320 ::
  T_GeneralizeTel_8653 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_822]
du_txvote_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3064
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_8643 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2322 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2322 ~v0 ~v1 v2 = du_txwdrls_2322 v2
du_txwdrls_2322 ::
  T_GeneralizeTel_8653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3062
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3208
         (coe d_'46'generalizedField'45'tx_8643 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2326 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_928
d_enactState_2326 ~v0 ~v1 v2 = du_enactState_2326 v2
du_enactState_2326 ::
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_928
du_enactState_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_enactState_2470
      (coe d_'46'generalizedField'45'Γ_8645 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2328 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_2328 ~v0 ~v1 v2 = du_pparams_2328 v2
du_pparams_2328 ::
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
du_pparams_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_pparams_2468
      (coe d_'46'generalizedField'45'Γ_8645 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2330 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 -> Maybe AgdaAny
d_ppolicy_2330 ~v0 ~v1 v2 = du_ppolicy_2330 v2
du_ppolicy_2330 :: T_GeneralizeTel_8653 -> Maybe AgdaAny
du_ppolicy_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_ppolicy_2466
      (coe d_'46'generalizedField'45'Γ_8645 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2332 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 -> AgdaAny
d_slot_2332 ~v0 ~v1 v2 = du_slot_2332 v2
du_slot_2332 :: T_GeneralizeTel_8653 -> AgdaAny
du_slot_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_slot_2464
      (coe d_'46'generalizedField'45'Γ_8645 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2338 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1244
d_dState_2338 ~v0 ~v1 v2 = du_dState_2338 v2
du_dState_2338 ::
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1244
du_dState_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
      (coe
         d_certState_2248 (coe d_'46'generalizedField'45's_8641 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2348 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2348 ~v0 ~v1 v2 = du_rewards_2348 v2
du_rewards_2348 ::
  T_GeneralizeTel_8653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1258
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1288
         (coe
            d_certState_2248 (coe d_'46'generalizedField'45's_8641 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2362 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_2362 ~v0 ~v1 v2 = du_pparams_2362 v2
du_pparams_2362 ::
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
du_pparams_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_pparams_2468
      (coe d_'46'generalizedField'45'Γ_8645 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2366 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 -> AgdaAny
d_slot_2366 ~v0 ~v1 v2 = du_slot_2366 v2
du_slot_2366 :: T_GeneralizeTel_8653 -> AgdaAny
du_slot_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_slot_2464
      (coe d_'46'generalizedField'45'Γ_8645 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2368 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_8653 -> Integer
d_treasury_2368 ~v0 ~v1 v2 = du_treasury_2368 v2
du_treasury_2368 :: T_GeneralizeTel_8653 -> Integer
du_treasury_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_treasury_2472
      (coe d_'46'generalizedField'45'Γ_8645 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2374 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_13689 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280
d_certState_2374 ~v0 ~v1 v2 = du_certState_2374 v2
du_certState_2374 ::
  T_GeneralizeTel_13689 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280
du_certState_2374 v0
  = coe
      d_certState_2248 (coe d_'46'generalizedField'45's_13681 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2376 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_13689 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2376 ~v0 ~v1 v2 = du_govSt_2376 v2
du_govSt_2376 ::
  T_GeneralizeTel_13689 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2376 v0
  = coe d_govSt_2246 (coe d_'46'generalizedField'45's_13681 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2378 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_13689 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
d_utxoSt_2378 ~v0 ~v1 v2 = du_utxoSt_2378 v2
du_utxoSt_2378 ::
  T_GeneralizeTel_13689 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
du_utxoSt_2378 v0
  = coe
      d_utxoSt_2244 (coe d_'46'generalizedField'45's_13681 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2442 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_13689 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_2442 ~v0 ~v1 v2 = du_pparams_2442 v2
du_pparams_2442 ::
  T_GeneralizeTel_13689 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
du_pparams_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_pparams_2468
      (coe d_'46'generalizedField'45'Γ_13685 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2446 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_13689 -> AgdaAny
d_slot_2446 ~v0 ~v1 v2 = du_slot_2446 v2
du_slot_2446 :: T_GeneralizeTel_13689 -> AgdaAny
du_slot_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_slot_2464
      (coe d_'46'generalizedField'45'Γ_13685 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2448 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  T_GeneralizeTel_13689 -> Integer
d_treasury_2448 ~v0 ~v1 v2 = du_treasury_2448 v2
du_treasury_2448 :: T_GeneralizeTel_13689 -> Integer
du_treasury_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_treasury_2472
      (coe d_'46'generalizedField'45'Γ_13685 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2468 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1992 ->
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2452 ->
  T_LState_2236 ->
  [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198] ->
  T_LState_2236 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2468 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8641 ::
  T_GeneralizeTel_8653 -> T_LState_2236
d_'46'generalizedField'45's_8641 v0
  = case coe v0 of
      C_mkGeneralizeTel_8655 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8643 ::
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198
d_'46'generalizedField'45'tx_8643 v0
  = case coe v0 of
      C_mkGeneralizeTel_8655 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8645 ::
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2452
d_'46'generalizedField'45'Γ_8645 v0
  = case coe v0 of
      C_mkGeneralizeTel_8655 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8647 ::
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
d_'46'generalizedField'45'utxoSt''_8647 v0
  = case coe v0 of
      C_mkGeneralizeTel_8655 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8649 ::
  T_GeneralizeTel_8653 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280
d_'46'generalizedField'45'certState''_8649 v0
  = case coe v0 of
      C_mkGeneralizeTel_8655 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8651 ::
  T_GeneralizeTel_8653 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8651 v0
  = case coe v0 of
      C_mkGeneralizeTel_8655 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8653 a0 a1 = ()
data T_GeneralizeTel_8653
  = C_mkGeneralizeTel_8655 T_LState_2236
                           MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198
                           MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2452
                           MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1280
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13681 ::
  T_GeneralizeTel_13689 -> T_LState_2236
d_'46'generalizedField'45's_13681 v0
  = case coe v0 of
      C_mkGeneralizeTel_13691 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13683 ::
  T_GeneralizeTel_13689 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198
d_'46'generalizedField'45'tx_13683 v0
  = case coe v0 of
      C_mkGeneralizeTel_13691 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13685 ::
  T_GeneralizeTel_13689 ->
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2452
d_'46'generalizedField'45'Γ_13685 v0
  = case coe v0 of
      C_mkGeneralizeTel_13691 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13687 ::
  T_GeneralizeTel_13689 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
d_'46'generalizedField'45'utxoSt''_13687 v0
  = case coe v0 of
      C_mkGeneralizeTel_13691 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13689 a0 a1 = ()
data T_GeneralizeTel_13689
  = C_mkGeneralizeTel_13691 T_LState_2236
                            MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3198
                            MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2452
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2296
