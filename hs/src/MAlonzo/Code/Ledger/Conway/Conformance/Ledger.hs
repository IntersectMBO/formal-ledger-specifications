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
d_Tx_582 a0 = ()
-- _.epoch
d_epoch_670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_670 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1712
         (coe v0))
-- _.Tx.body
d_body_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3334
d_body_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
      (coe v0)
-- _.Tx.isValid
d_isValid_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  Bool
d_isValid_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3532
      (coe v0)
-- _.Tx.txAD
d_txAD_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  Maybe AgdaAny
d_txAD_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3534
      (coe v0)
-- _.Tx.txsize
d_txsize_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  Integer
d_txsize_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3530
      (coe v0)
-- _.Tx.wits
d_wits_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3492
d_wits_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3528
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2874 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2034 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  ()
d_GovState_2040 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2042 ~v0 ~v1 = du_HasCast'45'GovEnv_2042
du_HasCast'45'GovEnv_2042 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2042
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2906
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2084 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2104 v0 ~v1 = du_updateDeposits_2104 v0
du_updateDeposits_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2894
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2434
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420 ->
  Integer
d_donations_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2436
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420 ->
  Integer
d_fees_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2432 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2430 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2138 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1350 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2150 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2192 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2262 ~v0 ~v1 = du_HasCast'45'CertEnv_2262
du_HasCast'45'CertEnv_2262 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2262
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1574
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2476 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1542
d_dState_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1586 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2478 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1562
d_gState_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1590 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2480 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390
d_pState_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1588 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2602 ~v0 ~v1 = du_HasCast'45'LEnv_2602
du_HasCast'45'LEnv_2602 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2602
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2924
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2604 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2608 ~v0 ~v1 = du_allColdCreds_2608
du_allColdCreds_2608 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2608
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2992
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2610 v0 ~v1 = du_rmOrphanDRepVotes_2610 v0
du_rmOrphanDRepVotes_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2974
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3334 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2612 ~v0 ~v1 = du_txgov_2612
du_txgov_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3334 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2612
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2928
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2834 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142
d_enactState_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2852
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2834 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2850
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2834 ->
  Maybe AgdaAny
d_ppolicy_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2848
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2834 ->
  AgdaAny
d_slot_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2846
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2834 ->
  Integer
d_treasury_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2854
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2626 a0 a1 = ()
data T_LState_2626
  = C_'10214'_'44'_'44'_'10215''737'_2640 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2634 ::
  T_LState_2626 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420
d_utxoSt_2634 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2640 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2636 ::
  T_LState_2626 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2636 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2640 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2638 ::
  T_LState_2626 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
d_certState_2638 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2640 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2642 ~v0 ~v1 = du_HasCast'45'LState_2642
du_HasCast'45'LState_2642 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2642
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
                                 (2626 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2084 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2626 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2040 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2626 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2192 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2640))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2660 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2660
  = C_LEDGER'45'V_2756 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2832 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
d_certState_2664 ~v0 ~v1 v2 = du_certState_2664 v2
du_certState_2664 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
du_certState_2664 v0
  = coe
      d_certState_2638 (coe d_'46'generalizedField'45's_9337 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2666 ~v0 ~v1 v2 = du_govSt_2666 v2
du_govSt_2666 ::
  T_GeneralizeTel_9349 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2666 v0
  = coe d_govSt_2636 (coe d_'46'generalizedField'45's_9337 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420
d_utxoSt_2668 ~v0 ~v1 v2 = du_utxoSt_2668 v2
du_utxoSt_2668 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420
du_utxoSt_2668 v0
  = coe d_utxoSt_2634 (coe d_'46'generalizedField'45's_9337 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
d_txCerts_2688 ~v0 ~v1 v2 = du_txCerts_2688 v2
du_txCerts_2688 ::
  T_GeneralizeTel_9349 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
du_txCerts_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3382
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
         (coe d_'46'generalizedField'45'tx_9339 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
d_txGovVotes_2696 ~v0 ~v1 v2 = du_txGovVotes_2696 v2
du_txGovVotes_2696 ::
  T_GeneralizeTel_9349 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
du_txGovVotes_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3394
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
         (coe d_'46'generalizedField'45'tx_9339 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 -> AgdaAny
d_txId_2698 ~v0 ~v1 v2 = du_txId_2698 v2
du_txId_2698 :: T_GeneralizeTel_9349 -> AgdaAny
du_txId_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3380
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
         (coe d_'46'generalizedField'45'tx_9339 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2708 ~v0 ~v1 v2 = du_txWithdrawals_2708 v2
du_txWithdrawals_2708 ::
  T_GeneralizeTel_9349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3386
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3526
         (coe d_'46'generalizedField'45'tx_9339 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142
d_enactState_2712 ~v0 ~v1 v2 = du_enactState_2712 v2
du_enactState_2712 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142
du_enactState_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2852
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2714 ~v0 ~v1 v2 = du_pparams_2714 v2
du_pparams_2714 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2850
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 -> Maybe AgdaAny
d_ppolicy_2716 ~v0 ~v1 v2 = du_ppolicy_2716 v2
du_ppolicy_2716 :: T_GeneralizeTel_9349 -> Maybe AgdaAny
du_ppolicy_2716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2848
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 -> AgdaAny
d_slot_2718 ~v0 ~v1 v2 = du_slot_2718 v2
du_slot_2718 :: T_GeneralizeTel_9349 -> AgdaAny
du_slot_2718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2846
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1542
d_dState_2724 ~v0 ~v1 v2 = du_dState_2724 v2
du_dState_2724 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1542
du_dState_2724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1586
      (coe
         d_certState_2638 (coe d_'46'generalizedField'45's_9337 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2734 ~v0 ~v1 v2 = du_rewards_2734 v2
du_rewards_2734 ::
  T_GeneralizeTel_9349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1556
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1586
         (coe
            d_certState_2638 (coe d_'46'generalizedField'45's_9337 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2748 ~v0 ~v1 v2 = du_pparams_2748 v2
du_pparams_2748 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2850
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 -> AgdaAny
d_slot_2752 ~v0 ~v1 v2 = du_slot_2752 v2
du_slot_2752 :: T_GeneralizeTel_9349 -> AgdaAny
du_slot_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2846
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_9349 -> Integer
d_treasury_2754 ~v0 ~v1 v2 = du_treasury_2754 v2
du_treasury_2754 :: T_GeneralizeTel_9349 -> Integer
du_treasury_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2854
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_14479 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
d_certState_2760 ~v0 ~v1 v2 = du_certState_2760 v2
du_certState_2760 ::
  T_GeneralizeTel_14479 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
du_certState_2760 v0
  = coe
      d_certState_2638 (coe d_'46'generalizedField'45's_14471 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_14479 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2762 ~v0 ~v1 v2 = du_govSt_2762 v2
du_govSt_2762 ::
  T_GeneralizeTel_14479 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2762 v0
  = coe d_govSt_2636 (coe d_'46'generalizedField'45's_14471 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_14479 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420
d_utxoSt_2764 ~v0 ~v1 v2 = du_utxoSt_2764 v2
du_utxoSt_2764 ::
  T_GeneralizeTel_14479 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420
du_utxoSt_2764 v0
  = coe
      d_utxoSt_2634 (coe d_'46'generalizedField'45's_14471 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_14479 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2824 ~v0 ~v1 v2 = du_pparams_2824 v2
du_pparams_2824 ::
  T_GeneralizeTel_14479 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2850
      (coe d_'46'generalizedField'45'Γ_14475 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_14479 -> AgdaAny
d_slot_2828 ~v0 ~v1 v2 = du_slot_2828 v2
du_slot_2828 :: T_GeneralizeTel_14479 -> AgdaAny
du_slot_2828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2846
      (coe d_'46'generalizedField'45'Γ_14475 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  T_GeneralizeTel_14479 -> Integer
d_treasury_2830 ~v0 ~v1 v2 = du_treasury_2830 v2
du_treasury_2830 :: T_GeneralizeTel_14479 -> Integer
du_treasury_2830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2854
      (coe d_'46'generalizedField'45'Γ_14475 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2428 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2834 ->
  T_LState_2626 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514] ->
  T_LState_2626 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2850 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9337 ::
  T_GeneralizeTel_9349 -> T_LState_2626
d_'46'generalizedField'45's_9337 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9339 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514
d_'46'generalizedField'45'tx_9339 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9341 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2834
d_'46'generalizedField'45'Γ_9341 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9343 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420
d_'46'generalizedField'45'utxoSt''_9343 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9345 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
d_'46'generalizedField'45'certState''_9345 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9347 ::
  T_GeneralizeTel_9349 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9347 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9349 a0 a1 = ()
data T_GeneralizeTel_9349
  = C_mkGeneralizeTel_9351 T_LState_2626
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2834
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14471 ::
  T_GeneralizeTel_14479 -> T_LState_2626
d_'46'generalizedField'45's_14471 v0
  = case coe v0 of
      C_mkGeneralizeTel_14481 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14473 ::
  T_GeneralizeTel_14479 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514
d_'46'generalizedField'45'tx_14473 v0
  = case coe v0 of
      C_mkGeneralizeTel_14481 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14475 ::
  T_GeneralizeTel_14479 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2834
d_'46'generalizedField'45'Γ_14475 v0
  = case coe v0 of
      C_mkGeneralizeTel_14481 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14477 ::
  T_GeneralizeTel_14479 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420
d_'46'generalizedField'45'utxoSt''_14477 v0
  = case coe v0 of
      C_mkGeneralizeTel_14481 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14479 a0 a1 = ()
data T_GeneralizeTel_14479
  = C_mkGeneralizeTel_14481 T_LState_2626
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3514
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2834
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2420
