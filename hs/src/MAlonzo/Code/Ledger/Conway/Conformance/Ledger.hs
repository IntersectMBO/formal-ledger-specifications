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
d_Tx_486 a0 = ()
-- _.epoch
d_epoch_566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_566 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1654
         (coe v0))
-- _.Tx.body
d_body_1622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3108
d_body_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3322
      (coe v0)
-- _.Tx.isValid
d_isValid_1624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3310 ->
  Bool
d_isValid_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3328
      (coe v0)
-- _.Tx.txAD
d_txAD_1626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3310 ->
  Maybe AgdaAny
d_txAD_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3330
      (coe v0)
-- _.Tx.txsize
d_txsize_1628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3310 ->
  Integer
d_txsize_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3326
      (coe v0)
-- _.Tx.wits
d_wits_1630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3288
d_wits_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3324
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2562 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1802 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  ()
d_GovState_1808 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1810 ~v0 ~v1 = du_HasCast'45'GovEnv_1810
du_HasCast'45'GovEnv_1810 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1810
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2594
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1852 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3108 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1872 v0 ~v1 = du_updateDeposits_1872 v0
du_updateDeposits_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3108 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2664
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2196 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2210
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2196 ->
  Integer
d_donations_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2212
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2196 ->
  Integer
d_fees_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2208 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2196 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2206 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1906 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1118 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1376 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1082] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1376 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1920 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1950 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2018 ~v0 ~v1 = du_HasCast'45'CertEnv_2018
du_HasCast'45'CertEnv_2018 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2018
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1364
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1376 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1340
d_dState_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2202 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1376 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1360
d_gState_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1388 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1376 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1224
d_pState_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1386 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2316 ~v0 ~v1 = du_HasCast'45'LEnv_2316
du_HasCast'45'LEnv_2316 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2316
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2608
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2318 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_996 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2322 ~v0 ~v1 = du_allColdCreds_2322
du_allColdCreds_2322 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_996 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2322
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2680
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1290 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2324 v0 ~v1 = du_rmOrphanDRepVotes_2324 v0
du_rmOrphanDRepVotes_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1290 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2660
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3108 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2326 ~v0 ~v1 = du_txgov_2326
du_txgov_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3108 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2326
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2612
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2536 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_996
d_enactState_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2554
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2536 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2552
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2536 ->
  Maybe AgdaAny
d_ppolicy_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2550
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2536 ->
  AgdaAny
d_slot_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2548
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2536 ->
  Integer
d_treasury_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2556
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2340 a0 a1 = ()
data T_LState_2340
  = C_'10214'_'44'_'44'_'10215''737'_2354 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2196
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1376
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2348 ::
  T_LState_2340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2196
d_utxoSt_2348 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2354 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2350 ::
  T_LState_2340 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2350 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2354 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2352 ::
  T_LState_2340 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1376
d_certState_2352 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2354 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2356 ~v0 ~v1 = du_HasCast'45'LState_2356
du_HasCast'45'LState_2356 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2356
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
                                 (2340 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1852 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2340 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1808 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2340 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1950 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2354))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2374 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2374
  = C_LEDGER'45'V_2472 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2196
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2550 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1376
d_certState_2378 ~v0 ~v1 v2 = du_certState_2378 v2
du_certState_2378 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1376
du_certState_2378 v0
  = coe
      d_certState_2352 (coe d_'46'generalizedField'45's_8485 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2380 ~v0 ~v1 v2 = du_govSt_2380 v2
du_govSt_2380 ::
  T_GeneralizeTel_8497 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2380 v0
  = coe d_govSt_2350 (coe d_'46'generalizedField'45's_8485 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2196
d_utxoSt_2382 ~v0 ~v1 v2 = du_utxoSt_2382 v2
du_utxoSt_2382 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2196
du_utxoSt_2382 v0
  = coe d_utxoSt_2348 (coe d_'46'generalizedField'45's_8485 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1082]
d_txcerts_2404 ~v0 ~v1 v2 = du_txcerts_2404 v2
du_txcerts_2404 ::
  T_GeneralizeTel_8497 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1082]
du_txcerts_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3160
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3322
         (coe d_'46'generalizedField'45'tx_8487 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 -> AgdaAny
d_txid_2410 ~v0 ~v1 v2 = du_txid_2410 v2
du_txid_2410 :: T_GeneralizeTel_8497 -> AgdaAny
du_txid_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3178
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3322
         (coe d_'46'generalizedField'45'tx_8487 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_882]
d_txvote_2422 ~v0 ~v1 v2 = du_txvote_2422 v2
du_txvote_2422 ::
  T_GeneralizeTel_8497 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_882]
du_txvote_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3164
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3322
         (coe d_'46'generalizedField'45'tx_8487 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2424 ~v0 ~v1 v2 = du_txwdrls_2424 v2
du_txwdrls_2424 ::
  T_GeneralizeTel_8497 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3162
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3322
         (coe d_'46'generalizedField'45'tx_8487 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_996
d_enactState_2428 ~v0 ~v1 v2 = du_enactState_2428 v2
du_enactState_2428 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_996
du_enactState_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2554
      (coe d_'46'generalizedField'45'Γ_8489 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_2430 ~v0 ~v1 v2 = du_pparams_2430 v2
du_pparams_2430 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
du_pparams_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2552
      (coe d_'46'generalizedField'45'Γ_8489 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 -> Maybe AgdaAny
d_ppolicy_2432 ~v0 ~v1 v2 = du_ppolicy_2432 v2
du_ppolicy_2432 :: T_GeneralizeTel_8497 -> Maybe AgdaAny
du_ppolicy_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2550
      (coe d_'46'generalizedField'45'Γ_8489 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 -> AgdaAny
d_slot_2434 ~v0 ~v1 v2 = du_slot_2434 v2
du_slot_2434 :: T_GeneralizeTel_8497 -> AgdaAny
du_slot_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2548
      (coe d_'46'generalizedField'45'Γ_8489 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1340
d_dState_2440 ~v0 ~v1 v2 = du_dState_2440 v2
du_dState_2440 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1340
du_dState_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
      (coe
         d_certState_2352 (coe d_'46'generalizedField'45's_8485 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2450 ~v0 ~v1 v2 = du_rewards_2450 v2
du_rewards_2450 ::
  T_GeneralizeTel_8497 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1354
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1384
         (coe
            d_certState_2352 (coe d_'46'generalizedField'45's_8485 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_2464 ~v0 ~v1 v2 = du_pparams_2464 v2
du_pparams_2464 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
du_pparams_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2552
      (coe d_'46'generalizedField'45'Γ_8489 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 -> AgdaAny
d_slot_2468 ~v0 ~v1 v2 = du_slot_2468 v2
du_slot_2468 :: T_GeneralizeTel_8497 -> AgdaAny
du_slot_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2548
      (coe d_'46'generalizedField'45'Γ_8489 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_8497 -> Integer
d_treasury_2470 ~v0 ~v1 v2 = du_treasury_2470 v2
du_treasury_2470 :: T_GeneralizeTel_8497 -> Integer
du_treasury_2470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2556
      (coe d_'46'generalizedField'45'Γ_8489 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1376
d_certState_2476 ~v0 ~v1 v2 = du_certState_2476 v2
du_certState_2476 ::
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1376
du_certState_2476 v0
  = coe
      d_certState_2352 (coe d_'46'generalizedField'45's_13585 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_13593 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2478 ~v0 ~v1 v2 = du_govSt_2478 v2
du_govSt_2478 ::
  T_GeneralizeTel_13593 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2478 v0
  = coe d_govSt_2350 (coe d_'46'generalizedField'45's_13585 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2196
d_utxoSt_2480 ~v0 ~v1 v2 = du_utxoSt_2480 v2
du_utxoSt_2480 ::
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2196
du_utxoSt_2480 v0
  = coe
      d_utxoSt_2348 (coe d_'46'generalizedField'45's_13585 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_2542 ~v0 ~v1 v2 = du_pparams_2542 v2
du_pparams_2542 ::
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
du_pparams_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2552
      (coe d_'46'generalizedField'45'Γ_13589 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_13593 -> AgdaAny
d_slot_2546 ~v0 ~v1 v2 = du_slot_2546 v2
du_slot_2546 :: T_GeneralizeTel_13593 -> AgdaAny
du_slot_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2548
      (coe d_'46'generalizedField'45'Γ_13589 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  T_GeneralizeTel_13593 -> Integer
d_treasury_2548 ~v0 ~v1 v2 = du_treasury_2548 v2
du_treasury_2548 :: T_GeneralizeTel_13593 -> Integer
du_treasury_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2556
      (coe d_'46'generalizedField'45'Γ_13589 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2090 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2536 ->
  T_LState_2340 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3310] ->
  T_LState_2340 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2568 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8485 ::
  T_GeneralizeTel_8497 -> T_LState_2340
d_'46'generalizedField'45's_8485 v0
  = case coe v0 of
      C_mkGeneralizeTel_8499 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8487 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3310
d_'46'generalizedField'45'tx_8487 v0
  = case coe v0 of
      C_mkGeneralizeTel_8499 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8489 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2536
d_'46'generalizedField'45'Γ_8489 v0
  = case coe v0 of
      C_mkGeneralizeTel_8499 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8491 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2196
d_'46'generalizedField'45'utxoSt''_8491 v0
  = case coe v0 of
      C_mkGeneralizeTel_8499 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8493 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1376
d_'46'generalizedField'45'certState''_8493 v0
  = case coe v0 of
      C_mkGeneralizeTel_8499 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8495 ::
  T_GeneralizeTel_8497 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8495 v0
  = case coe v0 of
      C_mkGeneralizeTel_8499 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8497 a0 a1 = ()
data T_GeneralizeTel_8497
  = C_mkGeneralizeTel_8499 T_LState_2340
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3310
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2536
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2196
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1376
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13585 ::
  T_GeneralizeTel_13593 -> T_LState_2340
d_'46'generalizedField'45's_13585 v0
  = case coe v0 of
      C_mkGeneralizeTel_13595 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13587 ::
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3310
d_'46'generalizedField'45'tx_13587 v0
  = case coe v0 of
      C_mkGeneralizeTel_13595 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13589 ::
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2536
d_'46'generalizedField'45'Γ_13589 v0
  = case coe v0 of
      C_mkGeneralizeTel_13595 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13591 ::
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2196
d_'46'generalizedField'45'utxoSt''_13591 v0
  = case coe v0 of
      C_mkGeneralizeTel_13595 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13593 a0 a1 = ()
data T_GeneralizeTel_13593
  = C_mkGeneralizeTel_13595 T_LState_2340
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3310
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2536
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2196
