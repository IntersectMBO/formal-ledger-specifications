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
d_Tx_506 a0 = ()
-- _.epoch
d_epoch_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_592 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
         (coe v0))
-- _.Tx.body
d_body_1664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3324 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3144
d_body_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3336
      (coe v0)
-- _.Tx.isValid
d_isValid_1666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3324 ->
  Bool
d_isValid_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3342
      (coe v0)
-- _.Tx.txAD
d_txAD_1668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3324 ->
  Maybe AgdaAny
d_txAD_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3344
      (coe v0)
-- _.Tx.txsize
d_txsize_1670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3324 ->
  Integer
d_txsize_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3340
      (coe v0)
-- _.Tx.wits
d_wits_1672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3324 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3302
d_wits_1672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3338
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2662 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1844 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  ()
d_GovState_1850 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1852 ~v0 ~v1 = du_HasCast'45'GovEnv_1852
du_HasCast'45'GovEnv_1852 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1852
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2694
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1894 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1914 v0 ~v1 = du_updateDeposits_1914 v0
du_updateDeposits_1914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2746
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2286
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272 ->
  Integer
d_donations_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2288
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272 ->
  Integer
d_fees_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2284 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2282 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1948 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1228 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1192] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1962 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1996 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2068 ~v0 ~v1 = du_HasCast'45'CertEnv_2068
du_HasCast'45'CertEnv_2068 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2068
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1444
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2274 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1400
d_dState_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1444 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2276 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1420
d_gState_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1448 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2278 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1268
d_pState_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1446 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2398 ~v0 ~v1 = du_HasCast'45'LEnv_2398
du_HasCast'45'LEnv_2398 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2398
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2710
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2400 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2404 ~v0 ~v1 = du_allColdCreds_2404
du_allColdCreds_2404 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2404
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2780
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1292 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2406 v0 ~v1 = du_rmOrphanDRepVotes_2406 v0
du_rmOrphanDRepVotes_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1292 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2760
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3144 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2408 ~v0 ~v1 = du_txgov_2408
du_txgov_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3144 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2408
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2714
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2626 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016
d_enactState_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2644
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2626 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2642
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2626 ->
  Maybe AgdaAny
d_ppolicy_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2640
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2626 ->
  AgdaAny
d_slot_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2638
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2626 ->
  Integer
d_treasury_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2646
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2422 a0 a1 = ()
data T_LState_2422
  = C_'10214'_'44'_'44'_'10215''737'_2436 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2430 ::
  T_LState_2422 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272
d_utxoSt_2430 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2436 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2432 ::
  T_LState_2422 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2432 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2436 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2434 ::
  T_LState_2422 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436
d_certState_2434 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2436 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2438 ~v0 ~v1 = du_HasCast'45'LState_2438
du_HasCast'45'LState_2438 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2438
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
                                 (2422 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1894 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2422 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1850 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2422 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1996 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2436))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2456 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2456
  = C_LEDGER'45'V_2552 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2628 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436
d_certState_2460 ~v0 ~v1 v2 = du_certState_2460 v2
du_certState_2460 ::
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436
du_certState_2460 v0
  = coe
      d_certState_2434 (coe d_'46'generalizedField'45's_8775 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2462 ~v0 ~v1 v2 = du_govSt_2462 v2
du_govSt_2462 ::
  T_GeneralizeTel_8787 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2462 v0
  = coe d_govSt_2432 (coe d_'46'generalizedField'45's_8775 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272
d_utxoSt_2464 ~v0 ~v1 v2 = du_utxoSt_2464 v2
du_utxoSt_2464 ::
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272
du_utxoSt_2464 v0
  = coe d_utxoSt_2430 (coe d_'46'generalizedField'45's_8775 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1192]
d_txCerts_2484 ~v0 ~v1 v2 = du_txCerts_2484 v2
du_txCerts_2484 ::
  T_GeneralizeTel_8787 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1192]
du_txCerts_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3192
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3336
         (coe d_'46'generalizedField'45'tx_8777 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_916]
d_txGovVotes_2492 ~v0 ~v1 v2 = du_txGovVotes_2492 v2
du_txGovVotes_2492 ::
  T_GeneralizeTel_8787 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_916]
du_txGovVotes_2492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3204
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3336
         (coe d_'46'generalizedField'45'tx_8777 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 -> AgdaAny
d_txId_2494 ~v0 ~v1 v2 = du_txId_2494 v2
du_txId_2494 :: T_GeneralizeTel_8787 -> AgdaAny
du_txId_2494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3190
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3336
         (coe d_'46'generalizedField'45'tx_8777 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2504 ~v0 ~v1 v2 = du_txWithdrawals_2504 v2
du_txWithdrawals_2504 ::
  T_GeneralizeTel_8787 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3196
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3336
         (coe d_'46'generalizedField'45'tx_8777 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016
d_enactState_2508 ~v0 ~v1 v2 = du_enactState_2508 v2
du_enactState_2508 ::
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1016
du_enactState_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2644
      (coe d_'46'generalizedField'45'Γ_8779 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2510 ~v0 ~v1 v2 = du_pparams_2510 v2
du_pparams_2510 ::
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2642
      (coe d_'46'generalizedField'45'Γ_8779 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 -> Maybe AgdaAny
d_ppolicy_2512 ~v0 ~v1 v2 = du_ppolicy_2512 v2
du_ppolicy_2512 :: T_GeneralizeTel_8787 -> Maybe AgdaAny
du_ppolicy_2512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2640
      (coe d_'46'generalizedField'45'Γ_8779 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 -> AgdaAny
d_slot_2514 ~v0 ~v1 v2 = du_slot_2514 v2
du_slot_2514 :: T_GeneralizeTel_8787 -> AgdaAny
du_slot_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2638
      (coe d_'46'generalizedField'45'Γ_8779 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1400
d_dState_2520 ~v0 ~v1 v2 = du_dState_2520 v2
du_dState_2520 ::
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1400
du_dState_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1444
      (coe
         d_certState_2434 (coe d_'46'generalizedField'45's_8775 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2530 ~v0 ~v1 v2 = du_rewards_2530 v2
du_rewards_2530 ::
  T_GeneralizeTel_8787 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1414
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1444
         (coe
            d_certState_2434 (coe d_'46'generalizedField'45's_8775 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2544 ~v0 ~v1 v2 = du_pparams_2544 v2
du_pparams_2544 ::
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2642
      (coe d_'46'generalizedField'45'Γ_8779 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 -> AgdaAny
d_slot_2548 ~v0 ~v1 v2 = du_slot_2548 v2
du_slot_2548 :: T_GeneralizeTel_8787 -> AgdaAny
du_slot_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2638
      (coe d_'46'generalizedField'45'Γ_8779 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_8787 -> Integer
d_treasury_2550 ~v0 ~v1 v2 = du_treasury_2550 v2
du_treasury_2550 :: T_GeneralizeTel_8787 -> Integer
du_treasury_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2646
      (coe d_'46'generalizedField'45'Γ_8779 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_13877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436
d_certState_2556 ~v0 ~v1 v2 = du_certState_2556 v2
du_certState_2556 ::
  T_GeneralizeTel_13877 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436
du_certState_2556 v0
  = coe
      d_certState_2434 (coe d_'46'generalizedField'45's_13869 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_13877 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2558 ~v0 ~v1 v2 = du_govSt_2558 v2
du_govSt_2558 ::
  T_GeneralizeTel_13877 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2558 v0
  = coe d_govSt_2432 (coe d_'46'generalizedField'45's_13869 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_13877 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272
d_utxoSt_2560 ~v0 ~v1 v2 = du_utxoSt_2560 v2
du_utxoSt_2560 ::
  T_GeneralizeTel_13877 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272
du_utxoSt_2560 v0
  = coe
      d_utxoSt_2430 (coe d_'46'generalizedField'45's_13869 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_13877 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2620 ~v0 ~v1 v2 = du_pparams_2620 v2
du_pparams_2620 ::
  T_GeneralizeTel_13877 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2642
      (coe d_'46'generalizedField'45'Γ_13873 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_13877 -> AgdaAny
d_slot_2624 ~v0 ~v1 v2 = du_slot_2624 v2
du_slot_2624 :: T_GeneralizeTel_13877 -> AgdaAny
du_slot_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2638
      (coe d_'46'generalizedField'45'Γ_13873 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  T_GeneralizeTel_13877 -> Integer
d_treasury_2626 ~v0 ~v1 v2 = du_treasury_2626 v2
du_treasury_2626 :: T_GeneralizeTel_13877 -> Integer
du_treasury_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2646
      (coe d_'46'generalizedField'45'Γ_13873 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2170 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2626 ->
  T_LState_2422 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3324] ->
  T_LState_2422 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2646 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8775 ::
  T_GeneralizeTel_8787 -> T_LState_2422
d_'46'generalizedField'45's_8775 v0
  = case coe v0 of
      C_mkGeneralizeTel_8789 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8777 ::
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3324
d_'46'generalizedField'45'tx_8777 v0
  = case coe v0 of
      C_mkGeneralizeTel_8789 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8779 ::
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2626
d_'46'generalizedField'45'Γ_8779 v0
  = case coe v0 of
      C_mkGeneralizeTel_8789 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8781 ::
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272
d_'46'generalizedField'45'utxoSt''_8781 v0
  = case coe v0 of
      C_mkGeneralizeTel_8789 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8783 ::
  T_GeneralizeTel_8787 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436
d_'46'generalizedField'45'certState''_8783 v0
  = case coe v0 of
      C_mkGeneralizeTel_8789 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8785 ::
  T_GeneralizeTel_8787 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8785 v0
  = case coe v0 of
      C_mkGeneralizeTel_8789 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8787 a0 a1 = ()
data T_GeneralizeTel_8787
  = C_mkGeneralizeTel_8789 T_LState_2422
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3324
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2626
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1436
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13869 ::
  T_GeneralizeTel_13877 -> T_LState_2422
d_'46'generalizedField'45's_13869 v0
  = case coe v0 of
      C_mkGeneralizeTel_13879 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13871 ::
  T_GeneralizeTel_13877 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3324
d_'46'generalizedField'45'tx_13871 v0
  = case coe v0 of
      C_mkGeneralizeTel_13879 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13873 ::
  T_GeneralizeTel_13877 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2626
d_'46'generalizedField'45'Γ_13873 v0
  = case coe v0 of
      C_mkGeneralizeTel_13879 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13875 ::
  T_GeneralizeTel_13877 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272
d_'46'generalizedField'45'utxoSt''_13875 v0
  = case coe v0 of
      C_mkGeneralizeTel_13879 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13877 a0 a1 = ()
data T_GeneralizeTel_13877
  = C_mkGeneralizeTel_13879 T_LState_2422
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3324
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2626
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2272
