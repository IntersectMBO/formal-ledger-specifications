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
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212
d_body_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
      (coe v0)
-- _.Tx.isValid
d_isValid_1722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  Bool
d_isValid_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3410
      (coe v0)
-- _.Tx.txAD
d_txAD_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  Maybe AgdaAny
d_txAD_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3412
      (coe v0)
-- _.Tx.txsize
d_txsize_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  Integer
d_txsize_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3408
      (coe v0)
-- _.Tx.wits
d_wits_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3370
d_wits_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3406
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2754 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1900 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  ()
d_GovState_1906 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1908 ~v0 ~v1 = du_HasCast'45'GovEnv_1908
du_HasCast'45'GovEnv_1908 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1908
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2786
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1950 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1970 v0 ~v1 = du_updateDeposits_1970 v0
du_updateDeposits_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2826
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2366
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352 ->
  Integer
d_donations_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2368
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352 ->
  Integer
d_fees_1998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2364 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2004 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2016 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2058 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2132 ~v0 ~v1 = du_HasCast'45'CertEnv_2132
du_HasCast'45'CertEnv_2132 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2132
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1508
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2352 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1462
d_dState_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1506 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2354 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1482
d_gState_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1510 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2356 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328
d_pState_2356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1508 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2480 ~v0 ~v1 = du_HasCast'45'LEnv_2480
du_HasCast'45'LEnv_2480 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2480
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2796
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2482 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2486 ~v0 ~v1 = du_allColdCreds_2486
du_allColdCreds_2486 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2486
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2864
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2488 v0 ~v1 = du_rmOrphanDRepVotes_2488 v0
du_rmOrphanDRepVotes_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2846
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2490 ~v0 ~v1 = du_txgov_2490
du_txgov_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2490
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2800
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_enactState_2494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2724
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2722
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706 ->
  Maybe AgdaAny
d_ppolicy_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2720
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706 ->
  AgdaAny
d_slot_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2718
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706 ->
  Integer
d_treasury_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2726
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2504 a0 a1 = ()
data T_LState_2504
  = C_'10214'_'44'_'44'_'10215''737'_2518 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2512 ::
  T_LState_2504 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_utxoSt_2512 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2518 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2514 ::
  T_LState_2504 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2514 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2518 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2516 ::
  T_LState_2504 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
d_certState_2516 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2518 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2520 ~v0 ~v1 = du_HasCast'45'LState_2520
du_HasCast'45'LState_2520 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2520
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
                                 (2504 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2504 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2504 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2058 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2518))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2538 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2538
  = C_LEDGER'45'V_2634 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2710 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
d_certState_2542 ~v0 ~v1 v2 = du_certState_2542 v2
du_certState_2542 ::
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
du_certState_2542 v0
  = coe
      d_certState_2516 (coe d_'46'generalizedField'45's_8941 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2544 ~v0 ~v1 v2 = du_govSt_2544 v2
du_govSt_2544 ::
  T_GeneralizeTel_8953 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2544 v0
  = coe d_govSt_2514 (coe d_'46'generalizedField'45's_8941 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_utxoSt_2546 ~v0 ~v1 v2 = du_utxoSt_2546 v2
du_utxoSt_2546 ::
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
du_utxoSt_2546 v0
  = coe d_utxoSt_2512 (coe d_'46'generalizedField'45's_8941 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252]
d_txCerts_2566 ~v0 ~v1 v2 = du_txCerts_2566 v2
du_txCerts_2566 ::
  T_GeneralizeTel_8953 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252]
du_txCerts_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3260
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
         (coe d_'46'generalizedField'45'tx_8943 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
d_txGovVotes_2574 ~v0 ~v1 v2 = du_txGovVotes_2574 v2
du_txGovVotes_2574 ::
  T_GeneralizeTel_8953 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
du_txGovVotes_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3272
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
         (coe d_'46'generalizedField'45'tx_8943 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 -> AgdaAny
d_txId_2576 ~v0 ~v1 v2 = du_txId_2576 v2
du_txId_2576 :: T_GeneralizeTel_8953 -> AgdaAny
du_txId_2576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3258
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
         (coe d_'46'generalizedField'45'tx_8943 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2586 ~v0 ~v1 v2 = du_txWithdrawals_2586 v2
du_txWithdrawals_2586 ::
  T_GeneralizeTel_8953 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3264
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
         (coe d_'46'generalizedField'45'tx_8943 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_enactState_2590 ~v0 ~v1 v2 = du_enactState_2590 v2
du_enactState_2590 ::
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
du_enactState_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2724
      (coe d_'46'generalizedField'45'Γ_8945 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2592 ~v0 ~v1 v2 = du_pparams_2592 v2
du_pparams_2592 ::
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2722
      (coe d_'46'generalizedField'45'Γ_8945 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 -> Maybe AgdaAny
d_ppolicy_2594 ~v0 ~v1 v2 = du_ppolicy_2594 v2
du_ppolicy_2594 :: T_GeneralizeTel_8953 -> Maybe AgdaAny
du_ppolicy_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2720
      (coe d_'46'generalizedField'45'Γ_8945 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 -> AgdaAny
d_slot_2596 ~v0 ~v1 v2 = du_slot_2596 v2
du_slot_2596 :: T_GeneralizeTel_8953 -> AgdaAny
du_slot_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2718
      (coe d_'46'generalizedField'45'Γ_8945 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1462
d_dState_2602 ~v0 ~v1 v2 = du_dState_2602 v2
du_dState_2602 ::
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1462
du_dState_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1506
      (coe
         d_certState_2516 (coe d_'46'generalizedField'45's_8941 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2612 ~v0 ~v1 v2 = du_rewards_2612 v2
du_rewards_2612 ::
  T_GeneralizeTel_8953 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1476
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1506
         (coe
            d_certState_2516 (coe d_'46'generalizedField'45's_8941 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2626 ~v0 ~v1 v2 = du_pparams_2626 v2
du_pparams_2626 ::
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2722
      (coe d_'46'generalizedField'45'Γ_8945 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 -> AgdaAny
d_slot_2630 ~v0 ~v1 v2 = du_slot_2630 v2
du_slot_2630 :: T_GeneralizeTel_8953 -> AgdaAny
du_slot_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2718
      (coe d_'46'generalizedField'45'Γ_8945 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8953 -> Integer
d_treasury_2632 ~v0 ~v1 v2 = du_treasury_2632 v2
du_treasury_2632 :: T_GeneralizeTel_8953 -> Integer
du_treasury_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2726
      (coe d_'46'generalizedField'45'Γ_8945 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_14051 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
d_certState_2638 ~v0 ~v1 v2 = du_certState_2638 v2
du_certState_2638 ::
  T_GeneralizeTel_14051 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
du_certState_2638 v0
  = coe
      d_certState_2516 (coe d_'46'generalizedField'45's_14043 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_14051 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2640 ~v0 ~v1 v2 = du_govSt_2640 v2
du_govSt_2640 ::
  T_GeneralizeTel_14051 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2640 v0
  = coe d_govSt_2514 (coe d_'46'generalizedField'45's_14043 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_14051 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_utxoSt_2642 ~v0 ~v1 v2 = du_utxoSt_2642 v2
du_utxoSt_2642 ::
  T_GeneralizeTel_14051 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
du_utxoSt_2642 v0
  = coe
      d_utxoSt_2512 (coe d_'46'generalizedField'45's_14043 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_14051 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2702 ~v0 ~v1 v2 = du_pparams_2702 v2
du_pparams_2702 ::
  T_GeneralizeTel_14051 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2722
      (coe d_'46'generalizedField'45'Γ_14047 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_14051 -> AgdaAny
d_slot_2706 ~v0 ~v1 v2 = du_slot_2706 v2
du_slot_2706 :: T_GeneralizeTel_14051 -> AgdaAny
du_slot_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2718
      (coe d_'46'generalizedField'45'Γ_14047 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_14051 -> Integer
d_treasury_2708 ~v0 ~v1 v2 = du_treasury_2708 v2
du_treasury_2708 :: T_GeneralizeTel_14051 -> Integer
du_treasury_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2726
      (coe d_'46'generalizedField'45'Γ_14047 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706 ->
  T_LState_2504 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392] ->
  T_LState_2504 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2728 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8941 ::
  T_GeneralizeTel_8953 -> T_LState_2504
d_'46'generalizedField'45's_8941 v0
  = case coe v0 of
      C_mkGeneralizeTel_8955 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8943 ::
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392
d_'46'generalizedField'45'tx_8943 v0
  = case coe v0 of
      C_mkGeneralizeTel_8955 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8945 ::
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706
d_'46'generalizedField'45'Γ_8945 v0
  = case coe v0 of
      C_mkGeneralizeTel_8955 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8947 ::
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_'46'generalizedField'45'utxoSt''_8947 v0
  = case coe v0 of
      C_mkGeneralizeTel_8955 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8949 ::
  T_GeneralizeTel_8953 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
d_'46'generalizedField'45'certState''_8949 v0
  = case coe v0 of
      C_mkGeneralizeTel_8955 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8951 ::
  T_GeneralizeTel_8953 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8951 v0
  = case coe v0 of
      C_mkGeneralizeTel_8955 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8953 a0 a1 = ()
data T_GeneralizeTel_8953
  = C_mkGeneralizeTel_8955 T_LState_2504
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14043 ::
  T_GeneralizeTel_14051 -> T_LState_2504
d_'46'generalizedField'45's_14043 v0
  = case coe v0 of
      C_mkGeneralizeTel_14053 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14045 ::
  T_GeneralizeTel_14051 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392
d_'46'generalizedField'45'tx_14045 v0
  = case coe v0 of
      C_mkGeneralizeTel_14053 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14047 ::
  T_GeneralizeTel_14051 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706
d_'46'generalizedField'45'Γ_14047 v0
  = case coe v0 of
      C_mkGeneralizeTel_14053 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14049 ::
  T_GeneralizeTel_14051 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_'46'generalizedField'45'utxoSt''_14049 v0
  = case coe v0 of
      C_mkGeneralizeTel_14053 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14051 a0 a1 = ()
data T_GeneralizeTel_14051
  = C_mkGeneralizeTel_14053 T_LState_2504
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
