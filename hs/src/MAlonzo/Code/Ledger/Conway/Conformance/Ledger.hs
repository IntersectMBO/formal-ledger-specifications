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
d_Tx_528 a0 = ()
-- _.epoch
d_epoch_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_608 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
         (coe v0))
-- _.Tx.body
d_body_1720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3202
d_body_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
      (coe v0)
-- _.Tx.isValid
d_isValid_1722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  Bool
d_isValid_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3400
      (coe v0)
-- _.Tx.txAD
d_txAD_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  Maybe AgdaAny
d_txAD_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3402
      (coe v0)
-- _.Tx.txsize
d_txsize_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  Integer
d_txsize_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3398
      (coe v0)
-- _.Tx.wits
d_wits_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3360
d_wits_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3396
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2738 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1900 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  ()
d_GovState_1906 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1908 ~v0 ~v1 = du_HasCast'45'GovEnv_1908
du_HasCast'45'GovEnv_1908 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1908
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2770
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1950 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3202 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1970 v0 ~v1 = du_updateDeposits_1970 v0
du_updateDeposits_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3202 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2816
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  Integer
d_donations_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2358
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  Integer
d_fees_1998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2354 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2352 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2004 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2018 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2052 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2126 ~v0 ~v1 = du_HasCast'45'CertEnv_2126
du_HasCast'45'CertEnv_2126 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2126
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1506
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2340 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1452
d_dState_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2342 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1472
d_gState_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1500 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2344 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328
d_pState_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1498 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2468 ~v0 ~v1 = du_HasCast'45'LEnv_2468
du_HasCast'45'LEnv_2468 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2468
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2786
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2470 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2474 ~v0 ~v1 = du_allColdCreds_2474
du_allColdCreds_2474 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2474
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2854
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2476 v0 ~v1 = du_rmOrphanDRepVotes_2476 v0
du_rmOrphanDRepVotes_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2836
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3202 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2478 ~v0 ~v1 = du_txgov_2478
du_txgov_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3202 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2478
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2790
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2696 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_enactState_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2714
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2696 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2712
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2696 ->
  Maybe AgdaAny
d_ppolicy_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2710
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2696 ->
  AgdaAny
d_slot_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2708
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2696 ->
  Integer
d_treasury_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2716
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2492 a0 a1 = ()
data T_LState_2492
  = C_'10214'_'44'_'44'_'10215''737'_2506 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2500 ::
  T_LState_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
d_utxoSt_2500 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2506 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2502 ::
  T_LState_2492 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2502 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2506 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2504 ::
  T_LState_2492 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488
d_certState_2504 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2506 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2508 ~v0 ~v1 = du_HasCast'45'LState_2508
du_HasCast'45'LState_2508 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2508
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
                                 (2492 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1950 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2492 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1906 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2492 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2052 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2506))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2526 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2526
  = C_LEDGER'45'V_2622 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2698 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488
d_certState_2530 ~v0 ~v1 v2 = du_certState_2530 v2
du_certState_2530 ::
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488
du_certState_2530 v0
  = coe
      d_certState_2504 (coe d_'46'generalizedField'45's_8907 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2532 ~v0 ~v1 v2 = du_govSt_2532 v2
du_govSt_2532 ::
  T_GeneralizeTel_8919 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2532 v0
  = coe d_govSt_2502 (coe d_'46'generalizedField'45's_8907 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
d_utxoSt_2534 ~v0 ~v1 v2 = du_utxoSt_2534 v2
du_utxoSt_2534 ::
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
du_utxoSt_2534 v0
  = coe d_utxoSt_2500 (coe d_'46'generalizedField'45's_8907 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252]
d_txCerts_2554 ~v0 ~v1 v2 = du_txCerts_2554 v2
du_txCerts_2554 ::
  T_GeneralizeTel_8919 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252]
du_txCerts_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
         (coe d_'46'generalizedField'45'tx_8909 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
d_txGovVotes_2562 ~v0 ~v1 v2 = du_txGovVotes_2562 v2
du_txGovVotes_2562 ::
  T_GeneralizeTel_8919 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
du_txGovVotes_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3262
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
         (coe d_'46'generalizedField'45'tx_8909 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 -> AgdaAny
d_txId_2564 ~v0 ~v1 v2 = du_txId_2564 v2
du_txId_2564 :: T_GeneralizeTel_8919 -> AgdaAny
du_txId_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
         (coe d_'46'generalizedField'45'tx_8909 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2574 ~v0 ~v1 v2 = du_txWithdrawals_2574 v2
du_txWithdrawals_2574 ::
  T_GeneralizeTel_8919 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3254
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
         (coe d_'46'generalizedField'45'tx_8909 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_enactState_2578 ~v0 ~v1 v2 = du_enactState_2578 v2
du_enactState_2578 ::
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
du_enactState_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2714
      (coe d_'46'generalizedField'45'Γ_8911 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2580 ~v0 ~v1 v2 = du_pparams_2580 v2
du_pparams_2580 ::
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2712
      (coe d_'46'generalizedField'45'Γ_8911 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 -> Maybe AgdaAny
d_ppolicy_2582 ~v0 ~v1 v2 = du_ppolicy_2582 v2
du_ppolicy_2582 :: T_GeneralizeTel_8919 -> Maybe AgdaAny
du_ppolicy_2582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2710
      (coe d_'46'generalizedField'45'Γ_8911 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 -> AgdaAny
d_slot_2584 ~v0 ~v1 v2 = du_slot_2584 v2
du_slot_2584 :: T_GeneralizeTel_8919 -> AgdaAny
du_slot_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2708
      (coe d_'46'generalizedField'45'Γ_8911 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1452
d_dState_2590 ~v0 ~v1 v2 = du_dState_2590 v2
du_dState_2590 ::
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1452
du_dState_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
      (coe
         d_certState_2504 (coe d_'46'generalizedField'45's_8907 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2600 ~v0 ~v1 v2 = du_rewards_2600 v2
du_rewards_2600 ::
  T_GeneralizeTel_8919 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1466
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1496
         (coe
            d_certState_2504 (coe d_'46'generalizedField'45's_8907 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2614 ~v0 ~v1 v2 = du_pparams_2614 v2
du_pparams_2614 ::
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2712
      (coe d_'46'generalizedField'45'Γ_8911 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 -> AgdaAny
d_slot_2618 ~v0 ~v1 v2 = du_slot_2618 v2
du_slot_2618 :: T_GeneralizeTel_8919 -> AgdaAny
du_slot_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2708
      (coe d_'46'generalizedField'45'Γ_8911 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_8919 -> Integer
d_treasury_2620 ~v0 ~v1 v2 = du_treasury_2620 v2
du_treasury_2620 :: T_GeneralizeTel_8919 -> Integer
du_treasury_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2716
      (coe d_'46'generalizedField'45'Γ_8911 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_14017 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488
d_certState_2626 ~v0 ~v1 v2 = du_certState_2626 v2
du_certState_2626 ::
  T_GeneralizeTel_14017 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488
du_certState_2626 v0
  = coe
      d_certState_2504 (coe d_'46'generalizedField'45's_14009 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_14017 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2628 ~v0 ~v1 v2 = du_govSt_2628 v2
du_govSt_2628 ::
  T_GeneralizeTel_14017 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2628 v0
  = coe d_govSt_2502 (coe d_'46'generalizedField'45's_14009 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_14017 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
d_utxoSt_2630 ~v0 ~v1 v2 = du_utxoSt_2630 v2
du_utxoSt_2630 ::
  T_GeneralizeTel_14017 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
du_utxoSt_2630 v0
  = coe
      d_utxoSt_2500 (coe d_'46'generalizedField'45's_14009 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_14017 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2690 ~v0 ~v1 v2 = du_pparams_2690 v2
du_pparams_2690 ::
  T_GeneralizeTel_14017 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2712
      (coe d_'46'generalizedField'45'Γ_14013 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_14017 -> AgdaAny
d_slot_2694 ~v0 ~v1 v2 = du_slot_2694 v2
du_slot_2694 :: T_GeneralizeTel_14017 -> AgdaAny
du_slot_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2708
      (coe d_'46'generalizedField'45'Γ_14013 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  T_GeneralizeTel_14017 -> Integer
d_treasury_2696 ~v0 ~v1 v2 = du_treasury_2696 v2
du_treasury_2696 :: T_GeneralizeTel_14017 -> Integer
du_treasury_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2716
      (coe d_'46'generalizedField'45'Γ_14013 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2696 ->
  T_LState_2492 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382] ->
  T_LState_2492 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2716 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8907 ::
  T_GeneralizeTel_8919 -> T_LState_2492
d_'46'generalizedField'45's_8907 v0
  = case coe v0 of
      C_mkGeneralizeTel_8921 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8909 ::
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382
d_'46'generalizedField'45'tx_8909 v0
  = case coe v0 of
      C_mkGeneralizeTel_8921 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8911 ::
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2696
d_'46'generalizedField'45'Γ_8911 v0
  = case coe v0 of
      C_mkGeneralizeTel_8921 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8913 ::
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
d_'46'generalizedField'45'utxoSt''_8913 v0
  = case coe v0 of
      C_mkGeneralizeTel_8921 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8915 ::
  T_GeneralizeTel_8919 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488
d_'46'generalizedField'45'certState''_8915 v0
  = case coe v0 of
      C_mkGeneralizeTel_8921 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8917 ::
  T_GeneralizeTel_8919 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8917 v0
  = case coe v0 of
      C_mkGeneralizeTel_8921 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8919 a0 a1 = ()
data T_GeneralizeTel_8919
  = C_mkGeneralizeTel_8921 T_LState_2492
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2696
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1488
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14009 ::
  T_GeneralizeTel_14017 -> T_LState_2492
d_'46'generalizedField'45's_14009 v0
  = case coe v0 of
      C_mkGeneralizeTel_14019 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14011 ::
  T_GeneralizeTel_14017 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382
d_'46'generalizedField'45'tx_14011 v0
  = case coe v0 of
      C_mkGeneralizeTel_14019 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14013 ::
  T_GeneralizeTel_14017 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2696
d_'46'generalizedField'45'Γ_14013 v0
  = case coe v0 of
      C_mkGeneralizeTel_14019 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14015 ::
  T_GeneralizeTel_14017 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
d_'46'generalizedField'45'utxoSt''_14015 v0
  = case coe v0 of
      C_mkGeneralizeTel_14019 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14017 a0 a1 = ()
data T_GeneralizeTel_14017
  = C_mkGeneralizeTel_14019 T_LState_2492
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2696
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
