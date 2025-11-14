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
d_Tx_560 a0 = ()
-- _.epoch
d_epoch_648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_648 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
         (coe v0))
-- _.Tx.body
d_body_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
d_body_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
      (coe v0)
-- _.Tx.isValid
d_isValid_1812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Bool
d_isValid_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
      (coe v0)
-- _.Tx.txAD
d_txAD_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Maybe AgdaAny
d_txAD_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3454
      (coe v0)
-- _.Tx.txsize
d_txsize_1816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Integer
d_txsize_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3450
      (coe v0)
-- _.Tx.wits
d_wits_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3412
d_wits_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3448
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2832 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1992 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  ()
d_GovState_1998 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2000 ~v0 ~v1 = du_HasCast'45'GovEnv_2000
du_HasCast'45'GovEnv_2000 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2000
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2864
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2042 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2062 v0 ~v1 = du_updateDeposits_2062 v0
du_updateDeposits_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2854
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2394
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  Integer
d_donations_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2396
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  Integer
d_fees_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2392 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2390 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2096 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1318 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2108 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2150 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2220 ~v0 ~v1 = du_HasCast'45'CertEnv_2220
du_HasCast'45'CertEnv_2220 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2220
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1542
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2434 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1510
d_dState_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2436 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1530
d_gState_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1558 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2438 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358
d_pState_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1556 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2560 ~v0 ~v1 = du_HasCast'45'LEnv_2560
du_HasCast'45'LEnv_2560 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2560
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2880
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2562 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2566 ~v0 ~v1 = du_allColdCreds_2566
du_allColdCreds_2566 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2566
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2948
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2568 v0 ~v1 = du_rmOrphanDRepVotes_2568 v0
du_rmOrphanDRepVotes_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2930
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2570 ~v0 ~v1 = du_txgov_2570
du_txgov_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2570
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2884
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2790 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
d_enactState_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2808
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2790 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2806
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2790 ->
  Maybe AgdaAny
d_ppolicy_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2804
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2790 ->
  AgdaAny
d_slot_2580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2802
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2790 ->
  Integer
d_treasury_2582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2810
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2584 a0 a1 = ()
data T_LState_2584
  = C_'10214'_'44'_'44'_'10215''737'_2598 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2592 ::
  T_LState_2584 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
d_utxoSt_2592 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2598 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2594 ::
  T_LState_2584 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2594 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2598 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2596 ::
  T_LState_2584 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546
d_certState_2596 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2598 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2600 ~v0 ~v1 = du_HasCast'45'LState_2600
du_HasCast'45'LState_2600 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2600
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
                                 (2584 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2042 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2584 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1998 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2584 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2150 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2598))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2618 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2618
  = C_LEDGER'45'V_2714 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2790 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546
d_certState_2622 ~v0 ~v1 v2 = du_certState_2622 v2
du_certState_2622 ::
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546
du_certState_2622 v0
  = coe
      d_certState_2596 (coe d_'46'generalizedField'45's_9191 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2624 ~v0 ~v1 v2 = du_govSt_2624 v2
du_govSt_2624 ::
  T_GeneralizeTel_9203 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2624 v0
  = coe d_govSt_2594 (coe d_'46'generalizedField'45's_9191 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
d_utxoSt_2626 ~v0 ~v1 v2 = du_utxoSt_2626 v2
du_utxoSt_2626 ::
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
du_utxoSt_2626 v0
  = coe d_utxoSt_2592 (coe d_'46'generalizedField'45's_9191 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282]
d_txCerts_2646 ~v0 ~v1 v2 = du_txCerts_2646 v2
du_txCerts_2646 ::
  T_GeneralizeTel_9203 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282]
du_txCerts_2646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3302
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_9193 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_896]
d_txGovVotes_2654 ~v0 ~v1 v2 = du_txGovVotes_2654 v2
du_txGovVotes_2654 ::
  T_GeneralizeTel_9203 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_896]
du_txGovVotes_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3314
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_9193 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 -> AgdaAny
d_txId_2656 ~v0 ~v1 v2 = du_txId_2656 v2
du_txId_2656 :: T_GeneralizeTel_9203 -> AgdaAny
du_txId_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3300
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_9193 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2666 ~v0 ~v1 v2 = du_txWithdrawals_2666 v2
du_txWithdrawals_2666 ::
  T_GeneralizeTel_9203 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3306
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
         (coe d_'46'generalizedField'45'tx_9193 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
d_enactState_2670 ~v0 ~v1 v2 = du_enactState_2670 v2
du_enactState_2670 ::
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1110
du_enactState_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2808
      (coe d_'46'generalizedField'45'Γ_9195 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2672 ~v0 ~v1 v2 = du_pparams_2672 v2
du_pparams_2672 ::
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
du_pparams_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2806
      (coe d_'46'generalizedField'45'Γ_9195 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 -> Maybe AgdaAny
d_ppolicy_2674 ~v0 ~v1 v2 = du_ppolicy_2674 v2
du_ppolicy_2674 :: T_GeneralizeTel_9203 -> Maybe AgdaAny
du_ppolicy_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2804
      (coe d_'46'generalizedField'45'Γ_9195 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 -> AgdaAny
d_slot_2676 ~v0 ~v1 v2 = du_slot_2676 v2
du_slot_2676 :: T_GeneralizeTel_9203 -> AgdaAny
du_slot_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2802
      (coe d_'46'generalizedField'45'Γ_9195 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1510
d_dState_2682 ~v0 ~v1 v2 = du_dState_2682 v2
du_dState_2682 ::
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1510
du_dState_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
      (coe
         d_certState_2596 (coe d_'46'generalizedField'45's_9191 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2692 ~v0 ~v1 v2 = du_rewards_2692 v2
du_rewards_2692 ::
  T_GeneralizeTel_9203 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1524
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1554
         (coe
            d_certState_2596 (coe d_'46'generalizedField'45's_9191 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2706 ~v0 ~v1 v2 = du_pparams_2706 v2
du_pparams_2706 ::
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
du_pparams_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2806
      (coe d_'46'generalizedField'45'Γ_9195 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 -> AgdaAny
d_slot_2710 ~v0 ~v1 v2 = du_slot_2710 v2
du_slot_2710 :: T_GeneralizeTel_9203 -> AgdaAny
du_slot_2710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2802
      (coe d_'46'generalizedField'45'Γ_9195 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_9203 -> Integer
d_treasury_2712 ~v0 ~v1 v2 = du_treasury_2712 v2
du_treasury_2712 :: T_GeneralizeTel_9203 -> Integer
du_treasury_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2810
      (coe d_'46'generalizedField'45'Γ_9195 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_14317 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546
d_certState_2718 ~v0 ~v1 v2 = du_certState_2718 v2
du_certState_2718 ::
  T_GeneralizeTel_14317 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546
du_certState_2718 v0
  = coe
      d_certState_2596 (coe d_'46'generalizedField'45's_14309 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_14317 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2720 ~v0 ~v1 v2 = du_govSt_2720 v2
du_govSt_2720 ::
  T_GeneralizeTel_14317 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2720 v0
  = coe d_govSt_2594 (coe d_'46'generalizedField'45's_14309 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_14317 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
d_utxoSt_2722 ~v0 ~v1 v2 = du_utxoSt_2722 v2
du_utxoSt_2722 ::
  T_GeneralizeTel_14317 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
du_utxoSt_2722 v0
  = coe
      d_utxoSt_2592 (coe d_'46'generalizedField'45's_14309 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_14317 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2782 ~v0 ~v1 v2 = du_pparams_2782 v2
du_pparams_2782 ::
  T_GeneralizeTel_14317 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
du_pparams_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2806
      (coe d_'46'generalizedField'45'Γ_14313 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_14317 -> AgdaAny
d_slot_2786 ~v0 ~v1 v2 = du_slot_2786 v2
du_slot_2786 :: T_GeneralizeTel_14317 -> AgdaAny
du_slot_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2802
      (coe d_'46'generalizedField'45'Γ_14313 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  T_GeneralizeTel_14317 -> Integer
d_treasury_2788 ~v0 ~v1 v2 = du_treasury_2788 v2
du_treasury_2788 :: T_GeneralizeTel_14317 -> Integer
du_treasury_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2810
      (coe d_'46'generalizedField'45'Γ_14313 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2790 ->
  T_LState_2584 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434] ->
  T_LState_2584 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2808 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9191 ::
  T_GeneralizeTel_9203 -> T_LState_2584
d_'46'generalizedField'45's_9191 v0
  = case coe v0 of
      C_mkGeneralizeTel_9205 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9193 ::
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434
d_'46'generalizedField'45'tx_9193 v0
  = case coe v0 of
      C_mkGeneralizeTel_9205 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9195 ::
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2790
d_'46'generalizedField'45'Γ_9195 v0
  = case coe v0 of
      C_mkGeneralizeTel_9205 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9197 ::
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
d_'46'generalizedField'45'utxoSt''_9197 v0
  = case coe v0 of
      C_mkGeneralizeTel_9205 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9199 ::
  T_GeneralizeTel_9203 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546
d_'46'generalizedField'45'certState''_9199 v0
  = case coe v0 of
      C_mkGeneralizeTel_9205 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9201 ::
  T_GeneralizeTel_9203 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9201 v0
  = case coe v0 of
      C_mkGeneralizeTel_9205 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9203 a0 a1 = ()
data T_GeneralizeTel_9203
  = C_mkGeneralizeTel_9205 T_LState_2584
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2790
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1546
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14309 ::
  T_GeneralizeTel_14317 -> T_LState_2584
d_'46'generalizedField'45's_14309 v0
  = case coe v0 of
      C_mkGeneralizeTel_14319 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14311 ::
  T_GeneralizeTel_14317 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434
d_'46'generalizedField'45'tx_14311 v0
  = case coe v0 of
      C_mkGeneralizeTel_14319 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14313 ::
  T_GeneralizeTel_14317 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2790
d_'46'generalizedField'45'Γ_14313 v0
  = case coe v0 of
      C_mkGeneralizeTel_14319 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14315 ::
  T_GeneralizeTel_14317 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
d_'46'generalizedField'45'utxoSt''_14315 v0
  = case coe v0 of
      C_mkGeneralizeTel_14319 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14317 a0 a1 = ()
data T_GeneralizeTel_14317
  = C_mkGeneralizeTel_14319 T_LState_2584
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2790
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2380
