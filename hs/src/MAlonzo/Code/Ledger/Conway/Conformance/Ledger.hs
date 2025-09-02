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
d_Tx_484 a0 = ()
-- _.epoch
d_epoch_564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_564 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
         (coe v0))
-- _.Tx.body
d_body_1620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3104
d_body_1620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
      (coe v0)
-- _.Tx.isValid
d_isValid_1622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306 ->
  Bool
d_isValid_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3324
      (coe v0)
-- _.Tx.txAD
d_txAD_1624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306 ->
  Maybe AgdaAny
d_txAD_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3326
      (coe v0)
-- _.Tx.txsize
d_txsize_1626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306 ->
  Integer
d_txsize_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3322
      (coe v0)
-- _.Tx.wits
d_wits_1628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3284
d_wits_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3320
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2560 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1800 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  ()
d_GovState_1806 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1808 ~v0 ~v1 = du_HasCast'45'GovEnv_1808
du_HasCast'45'GovEnv_1808 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1808
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2592
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1850 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1870 v0 ~v1 = du_updateDeposits_1870 v0
du_updateDeposits_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3104 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2662
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2208
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  Integer
d_donations_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2210
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  Integer
d_fees_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2206 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2204 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1904 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1116 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1918 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1948 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2016 ~v0 ~v1 = du_HasCast'45'CertEnv_2016
du_HasCast'45'CertEnv_2016 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2016
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1362
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1338
d_dState_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1358
d_gState_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1386 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2202 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1222
d_pState_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1384 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2314 ~v0 ~v1 = du_HasCast'45'LEnv_2314
du_HasCast'45'LEnv_2314 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2314
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2606
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2316 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2320 ~v0 ~v1 = du_allColdCreds_2320
du_allColdCreds_2320 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2320
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2678
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1288 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2322 v0 ~v1 = du_rmOrphanDRepVotes_2322 v0
du_rmOrphanDRepVotes_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1288 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2658
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3104 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2324 ~v0 ~v1 = du_txgov_2324
du_txgov_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3104 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2324
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2610
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2534 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_enactState_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2552
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2534 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2550
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2534 ->
  Maybe AgdaAny
d_ppolicy_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2548
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2534 ->
  AgdaAny
d_slot_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2546
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2534 ->
  Integer
d_treasury_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2554
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2338 a0 a1 = ()
data T_LState_2338
  = C_'10214'_'44'_'44'_'10215''737'_2352 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2346 ::
  T_LState_2338 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
d_utxoSt_2346 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2352 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2348 ::
  T_LState_2338 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2348 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2352 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2350 ::
  T_LState_2338 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374
d_certState_2350 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2352 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2354 ~v0 ~v1 = du_HasCast'45'LState_2354
du_HasCast'45'LState_2354 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2354
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
                                 (2338 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1850 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2338 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1806 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2338 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1948 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2352))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2372 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2372
  = C_LEDGER'45'V_2470 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2548 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374
d_certState_2376 ~v0 ~v1 v2 = du_certState_2376 v2
du_certState_2376 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374
du_certState_2376 v0
  = coe
      d_certState_2350 (coe d_'46'generalizedField'45's_8485 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2378 ~v0 ~v1 v2 = du_govSt_2378 v2
du_govSt_2378 ::
  T_GeneralizeTel_8497 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2378 v0
  = coe d_govSt_2348 (coe d_'46'generalizedField'45's_8485 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
d_utxoSt_2380 ~v0 ~v1 v2 = du_utxoSt_2380 v2
du_utxoSt_2380 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
du_utxoSt_2380 v0
  = coe d_utxoSt_2346 (coe d_'46'generalizedField'45's_8485 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080]
d_txcerts_2402 ~v0 ~v1 v2 = du_txcerts_2402 v2
du_txcerts_2402 ::
  T_GeneralizeTel_8497 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1080]
du_txcerts_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3156
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
         (coe d_'46'generalizedField'45'tx_8487 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 -> AgdaAny
d_txid_2408 ~v0 ~v1 v2 = du_txid_2408 v2
du_txid_2408 :: T_GeneralizeTel_8497 -> AgdaAny
du_txid_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3174
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
         (coe d_'46'generalizedField'45'tx_8487 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880]
d_txvote_2420 ~v0 ~v1 v2 = du_txvote_2420 v2
du_txvote_2420 ::
  T_GeneralizeTel_8497 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_880]
du_txvote_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3160
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
         (coe d_'46'generalizedField'45'tx_8487 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2422 ~v0 ~v1 v2 = du_txwdrls_2422 v2
du_txwdrls_2422 ::
  T_GeneralizeTel_8497 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3158
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3318
         (coe d_'46'generalizedField'45'tx_8487 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
d_enactState_2426 ~v0 ~v1 v2 = du_enactState_2426 v2
du_enactState_2426 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_994
du_enactState_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2552
      (coe d_'46'generalizedField'45'Γ_8489 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_2428 ~v0 ~v1 v2 = du_pparams_2428 v2
du_pparams_2428 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
du_pparams_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2550
      (coe d_'46'generalizedField'45'Γ_8489 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 -> Maybe AgdaAny
d_ppolicy_2430 ~v0 ~v1 v2 = du_ppolicy_2430 v2
du_ppolicy_2430 :: T_GeneralizeTel_8497 -> Maybe AgdaAny
du_ppolicy_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2548
      (coe d_'46'generalizedField'45'Γ_8489 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 -> AgdaAny
d_slot_2432 ~v0 ~v1 v2 = du_slot_2432 v2
du_slot_2432 :: T_GeneralizeTel_8497 -> AgdaAny
du_slot_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2546
      (coe d_'46'generalizedField'45'Γ_8489 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1338
d_dState_2438 ~v0 ~v1 v2 = du_dState_2438 v2
du_dState_2438 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1338
du_dState_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
      (coe
         d_certState_2350 (coe d_'46'generalizedField'45's_8485 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2448 ~v0 ~v1 v2 = du_rewards_2448 v2
du_rewards_2448 ::
  T_GeneralizeTel_8497 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1352
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1382
         (coe
            d_certState_2350 (coe d_'46'generalizedField'45's_8485 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_2462 ~v0 ~v1 v2 = du_pparams_2462 v2
du_pparams_2462 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
du_pparams_2462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2550
      (coe d_'46'generalizedField'45'Γ_8489 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 -> AgdaAny
d_slot_2466 ~v0 ~v1 v2 = du_slot_2466 v2
du_slot_2466 :: T_GeneralizeTel_8497 -> AgdaAny
du_slot_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2546
      (coe d_'46'generalizedField'45'Γ_8489 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_8497 -> Integer
d_treasury_2468 ~v0 ~v1 v2 = du_treasury_2468 v2
du_treasury_2468 :: T_GeneralizeTel_8497 -> Integer
du_treasury_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2554
      (coe d_'46'generalizedField'45'Γ_8489 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374
d_certState_2474 ~v0 ~v1 v2 = du_certState_2474 v2
du_certState_2474 ::
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374
du_certState_2474 v0
  = coe
      d_certState_2350 (coe d_'46'generalizedField'45's_13585 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_13593 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2476 ~v0 ~v1 v2 = du_govSt_2476 v2
du_govSt_2476 ::
  T_GeneralizeTel_13593 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2476 v0
  = coe d_govSt_2348 (coe d_'46'generalizedField'45's_13585 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
d_utxoSt_2478 ~v0 ~v1 v2 = du_utxoSt_2478 v2
du_utxoSt_2478 ::
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
du_utxoSt_2478 v0
  = coe
      d_utxoSt_2346 (coe d_'46'generalizedField'45's_13585 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_2540 ~v0 ~v1 v2 = du_pparams_2540 v2
du_pparams_2540 ::
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
du_pparams_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2550
      (coe d_'46'generalizedField'45'Γ_13589 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_13593 -> AgdaAny
d_slot_2544 ~v0 ~v1 v2 = du_slot_2544 v2
du_slot_2544 :: T_GeneralizeTel_13593 -> AgdaAny
du_slot_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2546
      (coe d_'46'generalizedField'45'Γ_13589 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  T_GeneralizeTel_13593 -> Integer
d_treasury_2546 ~v0 ~v1 v2 = du_treasury_2546 v2
du_treasury_2546 :: T_GeneralizeTel_13593 -> Integer
du_treasury_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2554
      (coe d_'46'generalizedField'45'Γ_13589 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2088 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2534 ->
  T_LState_2338 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306] ->
  T_LState_2338 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2566 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8485 ::
  T_GeneralizeTel_8497 -> T_LState_2338
d_'46'generalizedField'45's_8485 v0
  = case coe v0 of
      C_mkGeneralizeTel_8499 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8487 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306
d_'46'generalizedField'45'tx_8487 v0
  = case coe v0 of
      C_mkGeneralizeTel_8499 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8489 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2534
d_'46'generalizedField'45'Γ_8489 v0
  = case coe v0 of
      C_mkGeneralizeTel_8499 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8491 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
d_'46'generalizedField'45'utxoSt''_8491 v0
  = case coe v0 of
      C_mkGeneralizeTel_8499 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8493 ::
  T_GeneralizeTel_8497 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374
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
  = C_mkGeneralizeTel_8499 T_LState_2338
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2534
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1374
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13585 ::
  T_GeneralizeTel_13593 -> T_LState_2338
d_'46'generalizedField'45's_13585 v0
  = case coe v0 of
      C_mkGeneralizeTel_13595 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13587 ::
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306
d_'46'generalizedField'45'tx_13587 v0
  = case coe v0 of
      C_mkGeneralizeTel_13595 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13589 ::
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2534
d_'46'generalizedField'45'Γ_13589 v0
  = case coe v0 of
      C_mkGeneralizeTel_13595 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13591 ::
  T_GeneralizeTel_13593 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
d_'46'generalizedField'45'utxoSt''_13591 v0
  = case coe v0 of
      C_mkGeneralizeTel_13595 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13593 a0 a1 = ()
data T_GeneralizeTel_13593
  = C_mkGeneralizeTel_13595 T_LState_2338
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3306
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2534
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2194
