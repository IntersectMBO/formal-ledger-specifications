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
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
         (coe v0))
-- _.Tx.body
d_body_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286
d_body_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3478
      (coe v0)
-- _.Tx.isValid
d_isValid_1828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  Bool
d_isValid_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3484
      (coe v0)
-- _.Tx.txAD
d_txAD_1830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  Maybe AgdaAny
d_txAD_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3486
      (coe v0)
-- _.Tx.txsize
d_txsize_1832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  Integer
d_txsize_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3482
      (coe v0)
-- _.Tx.wits
d_wits_1834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3444
d_wits_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3480
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2848 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2008 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  ()
d_GovState_2014 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2016 ~v0 ~v1 = du_HasCast'45'GovEnv_2016
du_HasCast'45'GovEnv_2016 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2016
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2880
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2058 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2078 v0 ~v1 = du_updateDeposits_2078 v0
du_updateDeposits_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2870
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2410
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  Integer
d_donations_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2412
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  Integer
d_fees_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2408 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2406 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2112 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1328 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2124 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2166 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2236 ~v0 ~v1 = du_HasCast'45'CertEnv_2236
du_HasCast'45'CertEnv_2236 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2236
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1552
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2450 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1520
d_dState_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2452 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1540
d_gState_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1568 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2454 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
d_pState_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2576 ~v0 ~v1 = du_HasCast'45'LEnv_2576
du_HasCast'45'LEnv_2576 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2576
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2896
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2578 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2582 ~v0 ~v1 = du_allColdCreds_2582
du_allColdCreds_2582 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2582
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2964
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1396 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2584 v0 ~v1 = du_rmOrphanDRepVotes_2584 v0
du_rmOrphanDRepVotes_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1396 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2946
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2586 ~v0 ~v1 = du_txgov_2586
du_txgov_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2586
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2900
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2806 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120
d_enactState_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2824
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2806 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2822
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2806 ->
  Maybe AgdaAny
d_ppolicy_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2820
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2806 ->
  AgdaAny
d_slot_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2818
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2806 ->
  Integer
d_treasury_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2826
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2600 a0 a1 = ()
data T_LState_2600
  = C_'10214'_'44'_'44'_'10215''737'_2614 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2608 ::
  T_LState_2600 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
d_utxoSt_2608 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2614 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2610 ::
  T_LState_2600 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2610 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2614 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2612 ::
  T_LState_2600 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
d_certState_2612 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2614 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2616 ~v0 ~v1 = du_HasCast'45'LState_2616
du_HasCast'45'LState_2616 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2616
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
                                 (2600 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2058 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2600 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2014 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2600 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2166 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2614))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2634 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2634
  = C_LEDGER'45'V_2730 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2806 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
d_certState_2638 ~v0 ~v1 v2 = du_certState_2638 v2
du_certState_2638 ::
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
du_certState_2638 v0
  = coe
      d_certState_2612 (coe d_'46'generalizedField'45's_9225 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2640 ~v0 ~v1 v2 = du_govSt_2640 v2
du_govSt_2640 ::
  T_GeneralizeTel_9237 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2640 v0
  = coe d_govSt_2610 (coe d_'46'generalizedField'45's_9225 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
d_utxoSt_2642 ~v0 ~v1 v2 = du_utxoSt_2642 v2
du_utxoSt_2642 ::
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
du_utxoSt_2642 v0
  = coe d_utxoSt_2608 (coe d_'46'generalizedField'45's_9225 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
d_txCerts_2662 ~v0 ~v1 v2 = du_txCerts_2662 v2
du_txCerts_2662 ::
  T_GeneralizeTel_9237 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
du_txCerts_2662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3334
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3478
         (coe d_'46'generalizedField'45'tx_9227 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_906]
d_txGovVotes_2670 ~v0 ~v1 v2 = du_txGovVotes_2670 v2
du_txGovVotes_2670 ::
  T_GeneralizeTel_9237 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_906]
du_txGovVotes_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3346
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3478
         (coe d_'46'generalizedField'45'tx_9227 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 -> AgdaAny
d_txId_2672 ~v0 ~v1 v2 = du_txId_2672 v2
du_txId_2672 :: T_GeneralizeTel_9237 -> AgdaAny
du_txId_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3332
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3478
         (coe d_'46'generalizedField'45'tx_9227 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2682 ~v0 ~v1 v2 = du_txWithdrawals_2682 v2
du_txWithdrawals_2682 ::
  T_GeneralizeTel_9237 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3338
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3478
         (coe d_'46'generalizedField'45'tx_9227 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120
d_enactState_2686 ~v0 ~v1 v2 = du_enactState_2686 v2
du_enactState_2686 ::
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120
du_enactState_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2824
      (coe d_'46'generalizedField'45'Γ_9229 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2688 ~v0 ~v1 v2 = du_pparams_2688 v2
du_pparams_2688 ::
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2822
      (coe d_'46'generalizedField'45'Γ_9229 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 -> Maybe AgdaAny
d_ppolicy_2690 ~v0 ~v1 v2 = du_ppolicy_2690 v2
du_ppolicy_2690 :: T_GeneralizeTel_9237 -> Maybe AgdaAny
du_ppolicy_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2820
      (coe d_'46'generalizedField'45'Γ_9229 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 -> AgdaAny
d_slot_2692 ~v0 ~v1 v2 = du_slot_2692 v2
du_slot_2692 :: T_GeneralizeTel_9237 -> AgdaAny
du_slot_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2818
      (coe d_'46'generalizedField'45'Γ_9229 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1520
d_dState_2698 ~v0 ~v1 v2 = du_dState_2698 v2
du_dState_2698 ::
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1520
du_dState_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
      (coe
         d_certState_2612 (coe d_'46'generalizedField'45's_9225 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2708 ~v0 ~v1 v2 = du_rewards_2708 v2
du_rewards_2708 ::
  T_GeneralizeTel_9237 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1534
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
         (coe
            d_certState_2612 (coe d_'46'generalizedField'45's_9225 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2722 ~v0 ~v1 v2 = du_pparams_2722 v2
du_pparams_2722 ::
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2822
      (coe d_'46'generalizedField'45'Γ_9229 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 -> AgdaAny
d_slot_2726 ~v0 ~v1 v2 = du_slot_2726 v2
du_slot_2726 :: T_GeneralizeTel_9237 -> AgdaAny
du_slot_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2818
      (coe d_'46'generalizedField'45'Γ_9229 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_9237 -> Integer
d_treasury_2728 ~v0 ~v1 v2 = du_treasury_2728 v2
du_treasury_2728 :: T_GeneralizeTel_9237 -> Integer
du_treasury_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2826
      (coe d_'46'generalizedField'45'Γ_9229 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_14351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
d_certState_2734 ~v0 ~v1 v2 = du_certState_2734 v2
du_certState_2734 ::
  T_GeneralizeTel_14351 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
du_certState_2734 v0
  = coe
      d_certState_2612 (coe d_'46'generalizedField'45's_14343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_14351 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2736 ~v0 ~v1 v2 = du_govSt_2736 v2
du_govSt_2736 ::
  T_GeneralizeTel_14351 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2736 v0
  = coe d_govSt_2610 (coe d_'46'generalizedField'45's_14343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_14351 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
d_utxoSt_2738 ~v0 ~v1 v2 = du_utxoSt_2738 v2
du_utxoSt_2738 ::
  T_GeneralizeTel_14351 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
du_utxoSt_2738 v0
  = coe
      d_utxoSt_2608 (coe d_'46'generalizedField'45's_14343 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_14351 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2798 ~v0 ~v1 v2 = du_pparams_2798 v2
du_pparams_2798 ::
  T_GeneralizeTel_14351 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2822
      (coe d_'46'generalizedField'45'Γ_14347 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_14351 -> AgdaAny
d_slot_2802 ~v0 ~v1 v2 = du_slot_2802 v2
du_slot_2802 :: T_GeneralizeTel_14351 -> AgdaAny
du_slot_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2818
      (coe d_'46'generalizedField'45'Γ_14347 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  T_GeneralizeTel_14351 -> Integer
d_treasury_2804 ~v0 ~v1 v2 = du_treasury_2804 v2
du_treasury_2804 :: T_GeneralizeTel_14351 -> Integer
du_treasury_2804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2826
      (coe d_'46'generalizedField'45'Γ_14347 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2806 ->
  T_LState_2600 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466] ->
  T_LState_2600 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2824 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9225 ::
  T_GeneralizeTel_9237 -> T_LState_2600
d_'46'generalizedField'45's_9225 v0
  = case coe v0 of
      C_mkGeneralizeTel_9239 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9227 ::
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466
d_'46'generalizedField'45'tx_9227 v0
  = case coe v0 of
      C_mkGeneralizeTel_9239 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9229 ::
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2806
d_'46'generalizedField'45'Γ_9229 v0
  = case coe v0 of
      C_mkGeneralizeTel_9239 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9231 ::
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
d_'46'generalizedField'45'utxoSt''_9231 v0
  = case coe v0 of
      C_mkGeneralizeTel_9239 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9233 ::
  T_GeneralizeTel_9237 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
d_'46'generalizedField'45'certState''_9233 v0
  = case coe v0 of
      C_mkGeneralizeTel_9239 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9235 ::
  T_GeneralizeTel_9237 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9235 v0
  = case coe v0 of
      C_mkGeneralizeTel_9239 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9237 a0 a1 = ()
data T_GeneralizeTel_9237
  = C_mkGeneralizeTel_9239 T_LState_2600
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2806
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14343 ::
  T_GeneralizeTel_14351 -> T_LState_2600
d_'46'generalizedField'45's_14343 v0
  = case coe v0 of
      C_mkGeneralizeTel_14353 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14345 ::
  T_GeneralizeTel_14351 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466
d_'46'generalizedField'45'tx_14345 v0
  = case coe v0 of
      C_mkGeneralizeTel_14353 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14347 ::
  T_GeneralizeTel_14351 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2806
d_'46'generalizedField'45'Γ_14347 v0
  = case coe v0 of
      C_mkGeneralizeTel_14353 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14349 ::
  T_GeneralizeTel_14351 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
d_'46'generalizedField'45'utxoSt''_14349 v0
  = case coe v0 of
      C_mkGeneralizeTel_14353 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14351 a0 a1 = ()
data T_GeneralizeTel_14351
  = C_mkGeneralizeTel_14353 T_LState_2600
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2806
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2396
