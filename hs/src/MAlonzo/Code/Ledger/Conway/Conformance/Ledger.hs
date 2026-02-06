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
d_Tx_590 a0 = ()
-- _.epoch
d_epoch_678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_678 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1742
         (coe v0))
-- _.Tx.body
d_body_1868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3550 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3370
d_body_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3562
      (coe v0)
-- _.Tx.isValid
d_isValid_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3550 ->
  Bool
d_isValid_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3568
      (coe v0)
-- _.Tx.txAD
d_txAD_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3550 ->
  Maybe AgdaAny
d_txAD_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3570
      (coe v0)
-- _.Tx.txsize
d_txsize_1874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3550 ->
  Integer
d_txsize_1874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3566
      (coe v0)
-- _.Tx.wits
d_wits_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3550 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3528
d_wits_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3564
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2900 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2060 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  ()
d_GovState_2066 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2068 ~v0 ~v1 = du_HasCast'45'GovEnv_2068
du_HasCast'45'GovEnv_2068 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2068
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2932
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2110 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2130 v0 ~v1 = du_updateDeposits_2130 v0
du_updateDeposits_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2920
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2460
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446 ->
  Integer
d_donations_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2462
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446 ->
  Integer
d_fees_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2458 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2456 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2164 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1362 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1326] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2176 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2218 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2288 ~v0 ~v1 = du_HasCast'45'CertEnv_2288
du_HasCast'45'CertEnv_2288 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2288
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1586
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2502 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1554
d_dState_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1598 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2504 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1574
d_gState_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1602 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2506 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1402
d_pState_2506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1600 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2628 ~v0 ~v1 = du_HasCast'45'LEnv_2628
du_HasCast'45'LEnv_2628 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2628
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2950
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2630 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2634 ~v0 ~v1 = du_allColdCreds_2634
du_allColdCreds_2634 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2634
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3018
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1430 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2636 v0 ~v1 = du_rmOrphanDRepVotes_2636 v0
du_rmOrphanDRepVotes_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1430 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3000
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3370 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2638 ~v0 ~v1 = du_txgov_2638
du_txgov_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3370 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2638
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2954
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2860 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154
d_enactState_2642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2878
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2860 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
d_pparams_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2876
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2860 ->
  Maybe AgdaAny
d_ppolicy_2646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2874
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2860 ->
  AgdaAny
d_slot_2648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2872
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2860 ->
  Integer
d_treasury_2650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2880
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2652 a0 a1 = ()
data T_LState_2652
  = C_'10214'_'44'_'44'_'10215''737'_2666 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2660 ::
  T_LState_2652 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446
d_utxoSt_2660 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2666 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2662 ::
  T_LState_2652 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2662 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2666 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2664 ::
  T_LState_2652 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
d_certState_2664 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2666 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2668 ~v0 ~v1 = du_HasCast'45'LState_2668
du_HasCast'45'LState_2668 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2668
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
                                 (2652 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2110 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2652 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2066 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2652 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2218 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2666))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2686 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2686
  = C_LEDGER'45'V_2782 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2858 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
d_certState_2690 ~v0 ~v1 v2 = du_certState_2690 v2
du_certState_2690 ::
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
du_certState_2690 v0
  = coe
      d_certState_2664 (coe d_'46'generalizedField'45's_9395 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2692 ~v0 ~v1 v2 = du_govSt_2692 v2
du_govSt_2692 ::
  T_GeneralizeTel_9407 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2692 v0
  = coe d_govSt_2662 (coe d_'46'generalizedField'45's_9395 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446
d_utxoSt_2694 ~v0 ~v1 v2 = du_utxoSt_2694 v2
du_utxoSt_2694 ::
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446
du_utxoSt_2694 v0
  = coe d_utxoSt_2660 (coe d_'46'generalizedField'45's_9395 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1326]
d_txCerts_2714 ~v0 ~v1 v2 = du_txCerts_2714 v2
du_txCerts_2714 ::
  T_GeneralizeTel_9407 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1326]
du_txCerts_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3418
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3562
         (coe d_'46'generalizedField'45'tx_9397 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_940]
d_txGovVotes_2722 ~v0 ~v1 v2 = du_txGovVotes_2722 v2
du_txGovVotes_2722 ::
  T_GeneralizeTel_9407 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_940]
du_txGovVotes_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3430
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3562
         (coe d_'46'generalizedField'45'tx_9397 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 -> AgdaAny
d_txId_2724 ~v0 ~v1 v2 = du_txId_2724 v2
du_txId_2724 :: T_GeneralizeTel_9407 -> AgdaAny
du_txId_2724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3416
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3562
         (coe d_'46'generalizedField'45'tx_9397 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2734 ~v0 ~v1 v2 = du_txWithdrawals_2734 v2
du_txWithdrawals_2734 ::
  T_GeneralizeTel_9407 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3422
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3562
         (coe d_'46'generalizedField'45'tx_9397 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154
d_enactState_2738 ~v0 ~v1 v2 = du_enactState_2738 v2
du_enactState_2738 ::
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1154
du_enactState_2738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2878
      (coe d_'46'generalizedField'45'Γ_9399 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
d_pparams_2740 ~v0 ~v1 v2 = du_pparams_2740 v2
du_pparams_2740 ::
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
du_pparams_2740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2876
      (coe d_'46'generalizedField'45'Γ_9399 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 -> Maybe AgdaAny
d_ppolicy_2742 ~v0 ~v1 v2 = du_ppolicy_2742 v2
du_ppolicy_2742 :: T_GeneralizeTel_9407 -> Maybe AgdaAny
du_ppolicy_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2874
      (coe d_'46'generalizedField'45'Γ_9399 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 -> AgdaAny
d_slot_2744 ~v0 ~v1 v2 = du_slot_2744 v2
du_slot_2744 :: T_GeneralizeTel_9407 -> AgdaAny
du_slot_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2872
      (coe d_'46'generalizedField'45'Γ_9399 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1554
d_dState_2750 ~v0 ~v1 v2 = du_dState_2750 v2
du_dState_2750 ::
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1554
du_dState_2750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1598
      (coe
         d_certState_2664 (coe d_'46'generalizedField'45's_9395 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2760 ~v0 ~v1 v2 = du_rewards_2760 v2
du_rewards_2760 ::
  T_GeneralizeTel_9407 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1568
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1598
         (coe
            d_certState_2664 (coe d_'46'generalizedField'45's_9395 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
d_pparams_2774 ~v0 ~v1 v2 = du_pparams_2774 v2
du_pparams_2774 ::
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
du_pparams_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2876
      (coe d_'46'generalizedField'45'Γ_9399 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 -> AgdaAny
d_slot_2778 ~v0 ~v1 v2 = du_slot_2778 v2
du_slot_2778 :: T_GeneralizeTel_9407 -> AgdaAny
du_slot_2778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2872
      (coe d_'46'generalizedField'45'Γ_9399 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_9407 -> Integer
d_treasury_2780 ~v0 ~v1 v2 = du_treasury_2780 v2
du_treasury_2780 :: T_GeneralizeTel_9407 -> Integer
du_treasury_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2880
      (coe d_'46'generalizedField'45'Γ_9399 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_14569 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
d_certState_2786 ~v0 ~v1 v2 = du_certState_2786 v2
du_certState_2786 ::
  T_GeneralizeTel_14569 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
du_certState_2786 v0
  = coe
      d_certState_2664 (coe d_'46'generalizedField'45's_14561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_14569 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2788 ~v0 ~v1 v2 = du_govSt_2788 v2
du_govSt_2788 ::
  T_GeneralizeTel_14569 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2788 v0
  = coe d_govSt_2662 (coe d_'46'generalizedField'45's_14561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_14569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446
d_utxoSt_2790 ~v0 ~v1 v2 = du_utxoSt_2790 v2
du_utxoSt_2790 ::
  T_GeneralizeTel_14569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446
du_utxoSt_2790 v0
  = coe
      d_utxoSt_2660 (coe d_'46'generalizedField'45's_14561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_14569 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
d_pparams_2850 ~v0 ~v1 v2 = du_pparams_2850 v2
du_pparams_2850 ::
  T_GeneralizeTel_14569 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
du_pparams_2850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2876
      (coe d_'46'generalizedField'45'Γ_14565 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_14569 -> AgdaAny
d_slot_2854 ~v0 ~v1 v2 = du_slot_2854 v2
du_slot_2854 :: T_GeneralizeTel_14569 -> AgdaAny
du_slot_2854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2872
      (coe d_'46'generalizedField'45'Γ_14565 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  T_GeneralizeTel_14569 -> Integer
d_treasury_2856 ~v0 ~v1 v2 = du_treasury_2856 v2
du_treasury_2856 :: T_GeneralizeTel_14569 -> Integer
du_treasury_2856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2880
      (coe d_'46'generalizedField'45'Γ_14565 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2450 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2860 ->
  T_LState_2652 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3550] ->
  T_LState_2652 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2876 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9395 ::
  T_GeneralizeTel_9407 -> T_LState_2652
d_'46'generalizedField'45's_9395 v0
  = case coe v0 of
      C_mkGeneralizeTel_9409 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9397 ::
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3550
d_'46'generalizedField'45'tx_9397 v0
  = case coe v0 of
      C_mkGeneralizeTel_9409 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9399 ::
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2860
d_'46'generalizedField'45'Γ_9399 v0
  = case coe v0 of
      C_mkGeneralizeTel_9409 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9401 ::
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446
d_'46'generalizedField'45'utxoSt''_9401 v0
  = case coe v0 of
      C_mkGeneralizeTel_9409 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9403 ::
  T_GeneralizeTel_9407 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
d_'46'generalizedField'45'certState''_9403 v0
  = case coe v0 of
      C_mkGeneralizeTel_9409 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9405 ::
  T_GeneralizeTel_9407 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9405 v0
  = case coe v0 of
      C_mkGeneralizeTel_9409 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9407 a0 a1 = ()
data T_GeneralizeTel_9407
  = C_mkGeneralizeTel_9409 T_LState_2652
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3550
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2860
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14561 ::
  T_GeneralizeTel_14569 -> T_LState_2652
d_'46'generalizedField'45's_14561 v0
  = case coe v0 of
      C_mkGeneralizeTel_14571 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14563 ::
  T_GeneralizeTel_14569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3550
d_'46'generalizedField'45'tx_14563 v0
  = case coe v0 of
      C_mkGeneralizeTel_14571 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14565 ::
  T_GeneralizeTel_14569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2860
d_'46'generalizedField'45'Γ_14565 v0
  = case coe v0 of
      C_mkGeneralizeTel_14571 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14567 ::
  T_GeneralizeTel_14569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446
d_'46'generalizedField'45'utxoSt''_14567 v0
  = case coe v0 of
      C_mkGeneralizeTel_14571 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14569 a0 a1 = ()
data T_GeneralizeTel_14569
  = C_mkGeneralizeTel_14571 T_LState_2652
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3550
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2860
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2446
