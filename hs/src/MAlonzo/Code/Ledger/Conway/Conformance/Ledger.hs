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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Tx
d_Tx_602 a0 = ()
-- _.epoch
d_epoch_686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_686 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1728
         (coe v0))
-- _.Tx.body
d_body_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3354
d_body_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3546
      (coe v0)
-- _.Tx.isValid
d_isValid_1888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534 ->
  Bool
d_isValid_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3552
      (coe v0)
-- _.Tx.txAD
d_txAD_1890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534 ->
  Maybe AgdaAny
d_txAD_1890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3554
      (coe v0)
-- _.Tx.txsize
d_txsize_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534 ->
  Integer
d_txsize_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3550
      (coe v0)
-- _.Tx.wits
d_wits_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3512
d_wits_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3548
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2912 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2068 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  ()
d_GovState_2074 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2076 ~v0 ~v1 = du_HasCast'45'GovEnv_2076
du_HasCast'45'GovEnv_2076 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2076
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2944
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2118 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2138 v0 ~v1 = du_updateDeposits_2138 v0
du_updateDeposits_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2932
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2472
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458 ->
  Integer
d_donations_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2474
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458 ->
  Integer
d_fees_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2470 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2468 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2172 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1364 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1324] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2184 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2226 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2300 ~v0 ~v1 = du_HasCast'45'CertEnv_2300
du_HasCast'45'CertEnv_2300 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2300
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1588
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2514 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1556
d_dState_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1600 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2516 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1576
d_gState_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1604 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2518 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1404
d_pState_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1602 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2640 ~v0 ~v1 = du_HasCast'45'LEnv_2640
du_HasCast'45'LEnv_2640 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2640
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2968
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2642 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2646 ~v0 ~v1 = du_allColdCreds_2646
du_allColdCreds_2646 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2646
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3036
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1432 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2648 v0 ~v1 = du_rmOrphanDRepVotes_2648 v0
du_rmOrphanDRepVotes_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1432 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3018
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3354 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2650 ~v0 ~v1 = du_txgov_2650
du_txgov_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3354 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2650
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2972
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2878 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_enactState_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2896
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2878 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2894
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2878 ->
  Maybe AgdaAny
d_ppolicy_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2892
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2878 ->
  AgdaAny
d_slot_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2890
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2878 ->
  Integer
d_treasury_2662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2898
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2664 a0 a1 = ()
data T_LState_2664
  = C_'10214'_'44'_'44'_'10215''737'_2678 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2672 ::
  T_LState_2664 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
d_utxoSt_2672 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2678 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2674 ::
  T_LState_2664 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2674 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2678 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2676 ::
  T_LState_2664 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592
d_certState_2676 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2678 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2680 ~v0 ~v1 = du_HasCast'45'LState_2680
du_HasCast'45'LState_2680 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2680
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
         (coe
            MAlonzo.Code.Data.List.Base.du_length_268
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
                                 (2664 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2118 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2664 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2074 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2664 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2226 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2678))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2698 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2698
  = C_LEDGER'45'V_2794 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2870 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592
d_certState_2702 ~v0 ~v1 v2 = du_certState_2702 v2
du_certState_2702 ::
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592
du_certState_2702 v0
  = coe
      d_certState_2676 (coe d_'46'generalizedField'45's_9411 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2704 ~v0 ~v1 v2 = du_govSt_2704 v2
du_govSt_2704 ::
  T_GeneralizeTel_9423 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2704 v0
  = coe d_govSt_2674 (coe d_'46'generalizedField'45's_9411 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
d_utxoSt_2706 ~v0 ~v1 v2 = du_utxoSt_2706 v2
du_utxoSt_2706 ::
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
du_utxoSt_2706 v0
  = coe d_utxoSt_2672 (coe d_'46'generalizedField'45's_9411 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1324]
d_txCerts_2726 ~v0 ~v1 v2 = du_txCerts_2726 v2
du_txCerts_2726 ::
  T_GeneralizeTel_9423 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1324]
du_txCerts_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3402
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3546
         (coe d_'46'generalizedField'45'tx_9413 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_992]
d_txGovVotes_2734 ~v0 ~v1 v2 = du_txGovVotes_2734 v2
du_txGovVotes_2734 ::
  T_GeneralizeTel_9423 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_992]
du_txGovVotes_2734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3414
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3546
         (coe d_'46'generalizedField'45'tx_9413 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 -> AgdaAny
d_txId_2736 ~v0 ~v1 v2 = du_txId_2736 v2
du_txId_2736 :: T_GeneralizeTel_9423 -> AgdaAny
du_txId_2736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3400
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3546
         (coe d_'46'generalizedField'45'tx_9413 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2746 ~v0 ~v1 v2 = du_txWithdrawals_2746 v2
du_txWithdrawals_2746 ::
  T_GeneralizeTel_9423 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3406
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3546
         (coe d_'46'generalizedField'45'tx_9413 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_enactState_2750 ~v0 ~v1 v2 = du_enactState_2750 v2
du_enactState_2750 ::
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
du_enactState_2750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2896
      (coe d_'46'generalizedField'45'Γ_9415 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2752 ~v0 ~v1 v2 = du_pparams_2752 v2
du_pparams_2752 ::
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2894
      (coe d_'46'generalizedField'45'Γ_9415 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 -> Maybe AgdaAny
d_ppolicy_2754 ~v0 ~v1 v2 = du_ppolicy_2754 v2
du_ppolicy_2754 :: T_GeneralizeTel_9423 -> Maybe AgdaAny
du_ppolicy_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2892
      (coe d_'46'generalizedField'45'Γ_9415 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 -> AgdaAny
d_slot_2756 ~v0 ~v1 v2 = du_slot_2756 v2
du_slot_2756 :: T_GeneralizeTel_9423 -> AgdaAny
du_slot_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2890
      (coe d_'46'generalizedField'45'Γ_9415 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1556
d_dState_2762 ~v0 ~v1 v2 = du_dState_2762 v2
du_dState_2762 ::
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1556
du_dState_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1600
      (coe
         d_certState_2676 (coe d_'46'generalizedField'45's_9411 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2772 ~v0 ~v1 v2 = du_rewards_2772 v2
du_rewards_2772 ::
  T_GeneralizeTel_9423 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1570
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1600
         (coe
            d_certState_2676 (coe d_'46'generalizedField'45's_9411 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2786 ~v0 ~v1 v2 = du_pparams_2786 v2
du_pparams_2786 ::
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2894
      (coe d_'46'generalizedField'45'Γ_9415 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 -> AgdaAny
d_slot_2790 ~v0 ~v1 v2 = du_slot_2790 v2
du_slot_2790 :: T_GeneralizeTel_9423 -> AgdaAny
du_slot_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2890
      (coe d_'46'generalizedField'45'Γ_9415 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_9423 -> Integer
d_treasury_2792 ~v0 ~v1 v2 = du_treasury_2792 v2
du_treasury_2792 :: T_GeneralizeTel_9423 -> Integer
du_treasury_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2898
      (coe d_'46'generalizedField'45'Γ_9415 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_14585 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592
d_certState_2798 ~v0 ~v1 v2 = du_certState_2798 v2
du_certState_2798 ::
  T_GeneralizeTel_14585 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592
du_certState_2798 v0
  = coe
      d_certState_2676 (coe d_'46'generalizedField'45's_14577 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_14585 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2800 ~v0 ~v1 v2 = du_govSt_2800 v2
du_govSt_2800 ::
  T_GeneralizeTel_14585 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2800 v0
  = coe d_govSt_2674 (coe d_'46'generalizedField'45's_14577 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_14585 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
d_utxoSt_2802 ~v0 ~v1 v2 = du_utxoSt_2802 v2
du_utxoSt_2802 ::
  T_GeneralizeTel_14585 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
du_utxoSt_2802 v0
  = coe
      d_utxoSt_2672 (coe d_'46'generalizedField'45's_14577 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_14585 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2862 ~v0 ~v1 v2 = du_pparams_2862 v2
du_pparams_2862 ::
  T_GeneralizeTel_14585 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2894
      (coe d_'46'generalizedField'45'Γ_14581 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_14585 -> AgdaAny
d_slot_2866 ~v0 ~v1 v2 = du_slot_2866 v2
du_slot_2866 :: T_GeneralizeTel_14585 -> AgdaAny
du_slot_2866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2890
      (coe d_'46'generalizedField'45'Γ_14581 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  T_GeneralizeTel_14585 -> Integer
d_treasury_2868 ~v0 ~v1 v2 = du_treasury_2868 v2
du_treasury_2868 :: T_GeneralizeTel_14585 -> Integer
du_treasury_2868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2898
      (coe d_'46'generalizedField'45'Γ_14581 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2462 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2878 ->
  T_LState_2664 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534] ->
  T_LState_2664 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2888 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9411 ::
  T_GeneralizeTel_9423 -> T_LState_2664
d_'46'generalizedField'45's_9411 v0
  = case coe v0 of
      C_mkGeneralizeTel_9425 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9413 ::
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534
d_'46'generalizedField'45'tx_9413 v0
  = case coe v0 of
      C_mkGeneralizeTel_9425 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9415 ::
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2878
d_'46'generalizedField'45'Γ_9415 v0
  = case coe v0 of
      C_mkGeneralizeTel_9425 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9417 ::
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
d_'46'generalizedField'45'utxoSt''_9417 v0
  = case coe v0 of
      C_mkGeneralizeTel_9425 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9419 ::
  T_GeneralizeTel_9423 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592
d_'46'generalizedField'45'certState''_9419 v0
  = case coe v0 of
      C_mkGeneralizeTel_9425 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9421 ::
  T_GeneralizeTel_9423 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9421 v0
  = case coe v0 of
      C_mkGeneralizeTel_9425 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9423 a0 a1 = ()
data T_GeneralizeTel_9423
  = C_mkGeneralizeTel_9425 T_LState_2664
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2878
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1592
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14577 ::
  T_GeneralizeTel_14585 -> T_LState_2664
d_'46'generalizedField'45's_14577 v0
  = case coe v0 of
      C_mkGeneralizeTel_14587 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14579 ::
  T_GeneralizeTel_14585 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534
d_'46'generalizedField'45'tx_14579 v0
  = case coe v0 of
      C_mkGeneralizeTel_14587 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14581 ::
  T_GeneralizeTel_14585 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2878
d_'46'generalizedField'45'Γ_14581 v0
  = case coe v0 of
      C_mkGeneralizeTel_14587 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14583 ::
  T_GeneralizeTel_14585 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
d_'46'generalizedField'45'utxoSt''_14583 v0
  = case coe v0 of
      C_mkGeneralizeTel_14587 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14585 a0 a1 = ()
data T_GeneralizeTel_14585
  = C_mkGeneralizeTel_14587 T_LState_2664
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3534
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2878
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2458
