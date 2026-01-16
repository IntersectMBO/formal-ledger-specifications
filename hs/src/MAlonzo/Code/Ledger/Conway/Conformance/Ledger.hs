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
d_Tx_564 a0 = ()
-- _.epoch
d_epoch_652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_652 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1660
         (coe v0))
-- _.Tx.body
d_body_1820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3454 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3274
d_body_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3466
      (coe v0)
-- _.Tx.isValid
d_isValid_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3454 ->
  Bool
d_isValid_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3472
      (coe v0)
-- _.Tx.txAD
d_txAD_1824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3454 ->
  Maybe AgdaAny
d_txAD_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3474
      (coe v0)
-- _.Tx.txsize
d_txsize_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3454 ->
  Integer
d_txsize_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3470
      (coe v0)
-- _.Tx.wits
d_wits_1828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3454 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3432
d_wits_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3468
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2842 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2002 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  ()
d_GovState_2008 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2010 ~v0 ~v1 = du_HasCast'45'GovEnv_2010
du_HasCast'45'GovEnv_2010 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2010
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2874
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2052 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2072 v0 ~v1 = du_updateDeposits_2072 v0
du_updateDeposits_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2864
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2404
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390 ->
  Integer
d_donations_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2406
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390 ->
  Integer
d_fees_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2402 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2400 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2106 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1324 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1288] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2118 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2160 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2230 ~v0 ~v1 = du_HasCast'45'CertEnv_2230
du_HasCast'45'CertEnv_2230 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2230
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1548
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2444 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1516
d_dState_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1560 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2446 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1536
d_gState_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1564 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2448 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1364
d_pState_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1562 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2570 ~v0 ~v1 = du_HasCast'45'LEnv_2570
du_HasCast'45'LEnv_2570 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2570
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2890
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2572 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1116 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2576 ~v0 ~v1 = du_allColdCreds_2576
du_allColdCreds_2576 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1116 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2576
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2958
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2578 v0 ~v1 = du_rmOrphanDRepVotes_2578 v0
du_rmOrphanDRepVotes_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2940
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3274 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2580 ~v0 ~v1 = du_txgov_2580
du_txgov_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3274 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2580
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2894
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2800 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1116
d_enactState_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2818
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2800 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2816
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2800 ->
  Maybe AgdaAny
d_ppolicy_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2814
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2800 ->
  AgdaAny
d_slot_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2812
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2800 ->
  Integer
d_treasury_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2820
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2594 a0 a1 = ()
data T_LState_2594
  = C_'10214'_'44'_'44'_'10215''737'_2608 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2602 ::
  T_LState_2594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390
d_utxoSt_2602 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2608 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2604 ::
  T_LState_2594 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2604 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2608 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2606 ::
  T_LState_2594 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552
d_certState_2606 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2608 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2610 ~v0 ~v1 = du_HasCast'45'LState_2610
du_HasCast'45'LState_2610 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2610
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
                                 (2594 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2052 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2594 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2008 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2594 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2160 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2608))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2628 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2628
  = C_LEDGER'45'V_2724 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2800 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552
d_certState_2632 ~v0 ~v1 v2 = du_certState_2632 v2
du_certState_2632 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552
du_certState_2632 v0
  = coe
      d_certState_2606 (coe d_'46'generalizedField'45's_9215 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2634 ~v0 ~v1 v2 = du_govSt_2634 v2
du_govSt_2634 ::
  T_GeneralizeTel_9227 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2634 v0
  = coe d_govSt_2604 (coe d_'46'generalizedField'45's_9215 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390
d_utxoSt_2636 ~v0 ~v1 v2 = du_utxoSt_2636 v2
du_utxoSt_2636 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390
du_utxoSt_2636 v0
  = coe d_utxoSt_2602 (coe d_'46'generalizedField'45's_9215 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1288]
d_txCerts_2656 ~v0 ~v1 v2 = du_txCerts_2656 v2
du_txCerts_2656 ::
  T_GeneralizeTel_9227 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1288]
du_txCerts_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3322
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3466
         (coe d_'46'generalizedField'45'tx_9217 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_902]
d_txGovVotes_2664 ~v0 ~v1 v2 = du_txGovVotes_2664 v2
du_txGovVotes_2664 ::
  T_GeneralizeTel_9227 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_902]
du_txGovVotes_2664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3334
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3466
         (coe d_'46'generalizedField'45'tx_9217 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 -> AgdaAny
d_txId_2666 ~v0 ~v1 v2 = du_txId_2666 v2
du_txId_2666 :: T_GeneralizeTel_9227 -> AgdaAny
du_txId_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3320
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3466
         (coe d_'46'generalizedField'45'tx_9217 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2676 ~v0 ~v1 v2 = du_txWithdrawals_2676 v2
du_txWithdrawals_2676 ::
  T_GeneralizeTel_9227 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3326
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3466
         (coe d_'46'generalizedField'45'tx_9217 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1116
d_enactState_2680 ~v0 ~v1 v2 = du_enactState_2680 v2
du_enactState_2680 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1116
du_enactState_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2818
      (coe d_'46'generalizedField'45'Γ_9219 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2682 ~v0 ~v1 v2 = du_pparams_2682 v2
du_pparams_2682 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_pparams_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2816
      (coe d_'46'generalizedField'45'Γ_9219 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 -> Maybe AgdaAny
d_ppolicy_2684 ~v0 ~v1 v2 = du_ppolicy_2684 v2
du_ppolicy_2684 :: T_GeneralizeTel_9227 -> Maybe AgdaAny
du_ppolicy_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2814
      (coe d_'46'generalizedField'45'Γ_9219 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 -> AgdaAny
d_slot_2686 ~v0 ~v1 v2 = du_slot_2686 v2
du_slot_2686 :: T_GeneralizeTel_9227 -> AgdaAny
du_slot_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2812
      (coe d_'46'generalizedField'45'Γ_9219 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1516
d_dState_2692 ~v0 ~v1 v2 = du_dState_2692 v2
du_dState_2692 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1516
du_dState_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1560
      (coe
         d_certState_2606 (coe d_'46'generalizedField'45's_9215 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2702 ~v0 ~v1 v2 = du_rewards_2702 v2
du_rewards_2702 ::
  T_GeneralizeTel_9227 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1530
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1560
         (coe
            d_certState_2606 (coe d_'46'generalizedField'45's_9215 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2716 ~v0 ~v1 v2 = du_pparams_2716 v2
du_pparams_2716 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_pparams_2716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2816
      (coe d_'46'generalizedField'45'Γ_9219 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 -> AgdaAny
d_slot_2720 ~v0 ~v1 v2 = du_slot_2720 v2
du_slot_2720 :: T_GeneralizeTel_9227 -> AgdaAny
du_slot_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2812
      (coe d_'46'generalizedField'45'Γ_9219 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_9227 -> Integer
d_treasury_2722 ~v0 ~v1 v2 = du_treasury_2722 v2
du_treasury_2722 :: T_GeneralizeTel_9227 -> Integer
du_treasury_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2820
      (coe d_'46'generalizedField'45'Γ_9219 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552
d_certState_2728 ~v0 ~v1 v2 = du_certState_2728 v2
du_certState_2728 ::
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552
du_certState_2728 v0
  = coe
      d_certState_2606 (coe d_'46'generalizedField'45's_14333 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_14341 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2730 ~v0 ~v1 v2 = du_govSt_2730 v2
du_govSt_2730 ::
  T_GeneralizeTel_14341 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2730 v0
  = coe d_govSt_2604 (coe d_'46'generalizedField'45's_14333 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390
d_utxoSt_2732 ~v0 ~v1 v2 = du_utxoSt_2732 v2
du_utxoSt_2732 ::
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390
du_utxoSt_2732 v0
  = coe
      d_utxoSt_2602 (coe d_'46'generalizedField'45's_14333 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2792 ~v0 ~v1 v2 = du_pparams_2792 v2
du_pparams_2792 ::
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_pparams_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2816
      (coe d_'46'generalizedField'45'Γ_14337 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_14341 -> AgdaAny
d_slot_2796 ~v0 ~v1 v2 = du_slot_2796 v2
du_slot_2796 :: T_GeneralizeTel_14341 -> AgdaAny
du_slot_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2812
      (coe d_'46'generalizedField'45'Γ_14337 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  T_GeneralizeTel_14341 -> Integer
d_treasury_2798 ~v0 ~v1 v2 = du_treasury_2798 v2
du_treasury_2798 :: T_GeneralizeTel_14341 -> Integer
du_treasury_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2820
      (coe d_'46'generalizedField'45'Γ_14337 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2398 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2800 ->
  T_LState_2594 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3454] ->
  T_LState_2594 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2818 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9215 ::
  T_GeneralizeTel_9227 -> T_LState_2594
d_'46'generalizedField'45's_9215 v0
  = case coe v0 of
      C_mkGeneralizeTel_9229 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9217 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3454
d_'46'generalizedField'45'tx_9217 v0
  = case coe v0 of
      C_mkGeneralizeTel_9229 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9219 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2800
d_'46'generalizedField'45'Γ_9219 v0
  = case coe v0 of
      C_mkGeneralizeTel_9229 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9221 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390
d_'46'generalizedField'45'utxoSt''_9221 v0
  = case coe v0 of
      C_mkGeneralizeTel_9229 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9223 ::
  T_GeneralizeTel_9227 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552
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
  = C_mkGeneralizeTel_9229 T_LState_2594
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3454
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2800
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1552
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14333 ::
  T_GeneralizeTel_14341 -> T_LState_2594
d_'46'generalizedField'45's_14333 v0
  = case coe v0 of
      C_mkGeneralizeTel_14343 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14335 ::
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3454
d_'46'generalizedField'45'tx_14335 v0
  = case coe v0 of
      C_mkGeneralizeTel_14343 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14337 ::
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2800
d_'46'generalizedField'45'Γ_14337 v0
  = case coe v0 of
      C_mkGeneralizeTel_14343 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14339 ::
  T_GeneralizeTel_14341 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390
d_'46'generalizedField'45'utxoSt''_14339 v0
  = case coe v0 of
      C_mkGeneralizeTel_14343 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14341 a0 a1 = ()
data T_GeneralizeTel_14341
  = C_mkGeneralizeTel_14343 T_LState_2594
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3454
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2800
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2390
