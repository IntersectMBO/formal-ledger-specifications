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
d_Tx_566 a0 = ()
-- _.epoch
d_epoch_654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_654 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1662
         (coe v0))
-- _.Tx.body
d_body_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3458 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3278
d_body_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3470
      (coe v0)
-- _.Tx.isValid
d_isValid_1824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3458 ->
  Bool
d_isValid_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3476
      (coe v0)
-- _.Tx.txAD
d_txAD_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3458 ->
  Maybe AgdaAny
d_txAD_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3478
      (coe v0)
-- _.Tx.txsize
d_txsize_1828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3458 ->
  Integer
d_txsize_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3474
      (coe v0)
-- _.Tx.wits
d_wits_1830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3458 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3436
d_wits_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3472
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2844 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2004 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  ()
d_GovState_2010 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2012 ~v0 ~v1 = du_HasCast'45'GovEnv_2012
du_HasCast'45'GovEnv_2012 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2012
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2876
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2054 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2074 v0 ~v1 = du_updateDeposits_2074 v0
du_updateDeposits_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2866
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2406
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  Integer
d_donations_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2408
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  Integer
d_fees_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2404 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2402 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2108 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1554 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1554 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2120 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2162 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2232 ~v0 ~v1 = du_HasCast'45'CertEnv_2232
du_HasCast'45'CertEnv_2232 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2232
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1550
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2446 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1554 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1518
d_dState_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1562 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2448 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1554 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1538
d_gState_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1566 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2450 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1554 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_pState_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1564 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2572 ~v0 ~v1 = du_HasCast'45'LEnv_2572
du_HasCast'45'LEnv_2572 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2572
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2892
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2574 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2578 ~v0 ~v1 = du_allColdCreds_2578
du_allColdCreds_2578 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2578
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2960
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2580 v0 ~v1 = du_rmOrphanDRepVotes_2580 v0
du_rmOrphanDRepVotes_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2942
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3278 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2582 ~v0 ~v1 = du_txgov_2582
du_txgov_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3278 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2582
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2896
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2802 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118
d_enactState_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2820
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2802 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
d_pparams_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2818
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2802 ->
  Maybe AgdaAny
d_ppolicy_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2816
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2802 ->
  AgdaAny
d_slot_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2814
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2802 ->
  Integer
d_treasury_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2822
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2596 a0 a1 = ()
data T_LState_2596
  = C_'10214'_'44'_'44'_'10215''737'_2610 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1554
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2604 ::
  T_LState_2596 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
d_utxoSt_2604 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2610 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2606 ::
  T_LState_2596 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2606 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2610 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2608 ::
  T_LState_2596 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1554
d_certState_2608 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2610 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2612 ~v0 ~v1 = du_HasCast'45'LState_2612
du_HasCast'45'LState_2612 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2612
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
                                 (2596 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2054 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2596 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2010 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2596 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2162 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2610))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2630 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2630
  = C_LEDGER'45'V_2726 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2802 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1554
d_certState_2634 ~v0 ~v1 v2 = du_certState_2634 v2
du_certState_2634 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1554
du_certState_2634 v0
  = coe
      d_certState_2608 (coe d_'46'generalizedField'45's_9215 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2636 ~v0 ~v1 v2 = du_govSt_2636 v2
du_govSt_2636 ::
  T_GeneralizeTel_9227 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2636 v0
  = coe d_govSt_2606 (coe d_'46'generalizedField'45's_9215 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
d_utxoSt_2638 ~v0 ~v1 v2 = du_utxoSt_2638 v2
du_utxoSt_2638 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
du_utxoSt_2638 v0
  = coe d_utxoSt_2604 (coe d_'46'generalizedField'45's_9215 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
d_txCerts_2658 ~v0 ~v1 v2 = du_txCerts_2658 v2
du_txCerts_2658 ::
  T_GeneralizeTel_9227 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
du_txCerts_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3326
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3470
         (coe d_'46'generalizedField'45'tx_9217 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_904]
d_txGovVotes_2666 ~v0 ~v1 v2 = du_txGovVotes_2666 v2
du_txGovVotes_2666 ::
  T_GeneralizeTel_9227 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_904]
du_txGovVotes_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3338
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3470
         (coe d_'46'generalizedField'45'tx_9217 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 -> AgdaAny
d_txId_2668 ~v0 ~v1 v2 = du_txId_2668 v2
du_txId_2668 :: T_GeneralizeTel_9227 -> AgdaAny
du_txId_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3470
         (coe d_'46'generalizedField'45'tx_9217 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2678 ~v0 ~v1 v2 = du_txWithdrawals_2678 v2
du_txWithdrawals_2678 ::
  T_GeneralizeTel_9227 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3330
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3470
         (coe d_'46'generalizedField'45'tx_9217 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118
d_enactState_2682 ~v0 ~v1 v2 = du_enactState_2682 v2
du_enactState_2682 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1118
du_enactState_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2820
      (coe d_'46'generalizedField'45'Γ_9219 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
d_pparams_2684 ~v0 ~v1 v2 = du_pparams_2684 v2
du_pparams_2684 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
du_pparams_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2818
      (coe d_'46'generalizedField'45'Γ_9219 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 -> Maybe AgdaAny
d_ppolicy_2686 ~v0 ~v1 v2 = du_ppolicy_2686 v2
du_ppolicy_2686 :: T_GeneralizeTel_9227 -> Maybe AgdaAny
du_ppolicy_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2816
      (coe d_'46'generalizedField'45'Γ_9219 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 -> AgdaAny
d_slot_2688 ~v0 ~v1 v2 = du_slot_2688 v2
du_slot_2688 :: T_GeneralizeTel_9227 -> AgdaAny
du_slot_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2814
      (coe d_'46'generalizedField'45'Γ_9219 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1518
d_dState_2694 ~v0 ~v1 v2 = du_dState_2694 v2
du_dState_2694 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1518
du_dState_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1562
      (coe
         d_certState_2608 (coe d_'46'generalizedField'45's_9215 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2704 ~v0 ~v1 v2 = du_rewards_2704 v2
du_rewards_2704 ::
  T_GeneralizeTel_9227 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1532
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1562
         (coe
            d_certState_2608 (coe d_'46'generalizedField'45's_9215 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
d_pparams_2718 ~v0 ~v1 v2 = du_pparams_2718 v2
du_pparams_2718 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
du_pparams_2718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2818
      (coe d_'46'generalizedField'45'Γ_9219 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 -> AgdaAny
d_slot_2722 ~v0 ~v1 v2 = du_slot_2722 v2
du_slot_2722 :: T_GeneralizeTel_9227 -> AgdaAny
du_slot_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2814
      (coe d_'46'generalizedField'45'Γ_9219 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_9227 -> Integer
d_treasury_2724 ~v0 ~v1 v2 = du_treasury_2724 v2
du_treasury_2724 :: T_GeneralizeTel_9227 -> Integer
du_treasury_2724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2822
      (coe d_'46'generalizedField'45'Γ_9219 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1554
d_certState_2730 ~v0 ~v1 v2 = du_certState_2730 v2
du_certState_2730 ::
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1554
du_certState_2730 v0
  = coe
      d_certState_2608 (coe d_'46'generalizedField'45's_14333 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_14341 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2732 ~v0 ~v1 v2 = du_govSt_2732 v2
du_govSt_2732 ::
  T_GeneralizeTel_14341 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2732 v0
  = coe d_govSt_2606 (coe d_'46'generalizedField'45's_14333 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
d_utxoSt_2734 ~v0 ~v1 v2 = du_utxoSt_2734 v2
du_utxoSt_2734 ::
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
du_utxoSt_2734 v0
  = coe
      d_utxoSt_2604 (coe d_'46'generalizedField'45's_14333 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
d_pparams_2794 ~v0 ~v1 v2 = du_pparams_2794 v2
du_pparams_2794 ::
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_278
du_pparams_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2818
      (coe d_'46'generalizedField'45'Γ_14337 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_14341 -> AgdaAny
d_slot_2798 ~v0 ~v1 v2 = du_slot_2798 v2
du_slot_2798 :: T_GeneralizeTel_14341 -> AgdaAny
du_slot_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2814
      (coe d_'46'generalizedField'45'Γ_14337 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  T_GeneralizeTel_14341 -> Integer
d_treasury_2800 ~v0 ~v1 v2 = du_treasury_2800 v2
du_treasury_2800 :: T_GeneralizeTel_14341 -> Integer
du_treasury_2800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2822
      (coe d_'46'generalizedField'45'Γ_14337 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2400 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2802 ->
  T_LState_2596 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3458] ->
  T_LState_2596 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2820 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9215 ::
  T_GeneralizeTel_9227 -> T_LState_2596
d_'46'generalizedField'45's_9215 v0
  = case coe v0 of
      C_mkGeneralizeTel_9229 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9217 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3458
d_'46'generalizedField'45'tx_9217 v0
  = case coe v0 of
      C_mkGeneralizeTel_9229 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9219 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2802
d_'46'generalizedField'45'Γ_9219 v0
  = case coe v0 of
      C_mkGeneralizeTel_9229 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9221 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
d_'46'generalizedField'45'utxoSt''_9221 v0
  = case coe v0 of
      C_mkGeneralizeTel_9229 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9223 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1554
d_'46'generalizedField'45'certState''_9223 v0
  = case coe v0 of
      C_mkGeneralizeTel_9229 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9225 ::
  T_GeneralizeTel_9227 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9225 v0
  = case coe v0 of
      C_mkGeneralizeTel_9229 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9227 a0 a1 = ()
data T_GeneralizeTel_9227
  = C_mkGeneralizeTel_9229 T_LState_2596
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3458
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2802
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1554
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14333 ::
  T_GeneralizeTel_14341 -> T_LState_2596
d_'46'generalizedField'45's_14333 v0
  = case coe v0 of
      C_mkGeneralizeTel_14343 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14335 ::
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3458
d_'46'generalizedField'45'tx_14335 v0
  = case coe v0 of
      C_mkGeneralizeTel_14343 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14337 ::
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2802
d_'46'generalizedField'45'Γ_14337 v0
  = case coe v0 of
      C_mkGeneralizeTel_14343 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14339 ::
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
d_'46'generalizedField'45'utxoSt''_14339 v0
  = case coe v0 of
      C_mkGeneralizeTel_14343 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14341 a0 a1 = ()
data T_GeneralizeTel_14341
  = C_mkGeneralizeTel_14343 T_LState_2596
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3458
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2802
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2392
