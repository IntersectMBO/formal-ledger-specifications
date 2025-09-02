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
d_Tx_490 a0 = ()
-- _.epoch
d_epoch_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_570 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1660
         (coe v0))
-- _.Tx.body
d_body_1626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116
d_body_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3330
      (coe v0)
-- _.Tx.isValid
d_isValid_1628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318 ->
  Bool
d_isValid_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3336
      (coe v0)
-- _.Tx.txAD
d_txAD_1630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318 ->
  Maybe AgdaAny
d_txAD_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3338
      (coe v0)
-- _.Tx.txsize
d_txsize_1632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318 ->
  Integer
d_txsize_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3334
      (coe v0)
-- _.Tx.wits
d_wits_1634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3296
d_wits_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3332
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2566 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1806 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  ()
d_GovState_1812 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1814 ~v0 ~v1 = du_HasCast'45'GovEnv_1814
du_HasCast'45'GovEnv_1814 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1814
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2598
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1856 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1876 v0 ~v1 = du_updateDeposits_1876 v0
du_updateDeposits_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2668
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2214
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200 ->
  Integer
d_donations_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2216
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200 ->
  Integer
d_fees_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2212 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2210 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1910 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1122 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1380 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1086] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1380 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1924 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1954 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2022 ~v0 ~v1 = du_HasCast'45'CertEnv_2022
du_HasCast'45'CertEnv_2022 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2022
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1368
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1380 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1344
d_dState_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1388 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2206 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1380 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1364
d_gState_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1392 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2208 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1380 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1228
d_pState_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1390 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2320 ~v0 ~v1 = du_HasCast'45'LEnv_2320
du_HasCast'45'LEnv_2320 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2320
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2612
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2322 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2326 ~v0 ~v1 = du_allColdCreds_2326
du_allColdCreds_2326 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2326
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2684
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2328 v0 ~v1 = du_rmOrphanDRepVotes_2328 v0
du_rmOrphanDRepVotes_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1294 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2664
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2330 ~v0 ~v1 = du_txgov_2330
du_txgov_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3116 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2330
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2616
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2540 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000
d_enactState_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2558
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2540 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312
d_pparams_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2556
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2540 ->
  Maybe AgdaAny
d_ppolicy_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2554
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2540 ->
  AgdaAny
d_slot_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2552
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2540 ->
  Integer
d_treasury_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2560
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2344 a0 a1 = ()
data T_LState_2344
  = C_'10214'_'44'_'44'_'10215''737'_2358 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1380
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2352 ::
  T_LState_2344 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
d_utxoSt_2352 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2358 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2354 ::
  T_LState_2344 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2354 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2358 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2356 ::
  T_LState_2344 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1380
d_certState_2356 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2358 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2360 ~v0 ~v1 = du_HasCast'45'LState_2360
du_HasCast'45'LState_2360 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2360
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
                                 (2344 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1856 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2344 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1812 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2344 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1954 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2358))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2378 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2378
  = C_LEDGER'45'V_2476 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2554 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1380
d_certState_2382 ~v0 ~v1 v2 = du_certState_2382 v2
du_certState_2382 ::
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1380
du_certState_2382 v0
  = coe
      d_certState_2356 (coe d_'46'generalizedField'45's_8493 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2384 ~v0 ~v1 v2 = du_govSt_2384 v2
du_govSt_2384 ::
  T_GeneralizeTel_8505 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2384 v0
  = coe d_govSt_2354 (coe d_'46'generalizedField'45's_8493 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
d_utxoSt_2386 ~v0 ~v1 v2 = du_utxoSt_2386 v2
du_utxoSt_2386 ::
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
du_utxoSt_2386 v0
  = coe d_utxoSt_2352 (coe d_'46'generalizedField'45's_8493 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1086]
d_txcerts_2408 ~v0 ~v1 v2 = du_txcerts_2408 v2
du_txcerts_2408 ::
  T_GeneralizeTel_8505 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1086]
du_txcerts_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3168
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3330
         (coe d_'46'generalizedField'45'tx_8495 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 -> AgdaAny
d_txid_2414 ~v0 ~v1 v2 = du_txid_2414 v2
du_txid_2414 :: T_GeneralizeTel_8505 -> AgdaAny
du_txid_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3186
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3330
         (coe d_'46'generalizedField'45'tx_8495 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_886]
d_txvote_2426 ~v0 ~v1 v2 = du_txvote_2426 v2
du_txvote_2426 ::
  T_GeneralizeTel_8505 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_886]
du_txvote_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3172
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3330
         (coe d_'46'generalizedField'45'tx_8495 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2428 ~v0 ~v1 v2 = du_txwdrls_2428 v2
du_txwdrls_2428 ::
  T_GeneralizeTel_8505 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3170
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3330
         (coe d_'46'generalizedField'45'tx_8495 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000
d_enactState_2432 ~v0 ~v1 v2 = du_enactState_2432 v2
du_enactState_2432 ::
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1000
du_enactState_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2558
      (coe d_'46'generalizedField'45'Γ_8497 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312
d_pparams_2434 ~v0 ~v1 v2 = du_pparams_2434 v2
du_pparams_2434 ::
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312
du_pparams_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2556
      (coe d_'46'generalizedField'45'Γ_8497 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 -> Maybe AgdaAny
d_ppolicy_2436 ~v0 ~v1 v2 = du_ppolicy_2436 v2
du_ppolicy_2436 :: T_GeneralizeTel_8505 -> Maybe AgdaAny
du_ppolicy_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2554
      (coe d_'46'generalizedField'45'Γ_8497 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 -> AgdaAny
d_slot_2438 ~v0 ~v1 v2 = du_slot_2438 v2
du_slot_2438 :: T_GeneralizeTel_8505 -> AgdaAny
du_slot_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2552
      (coe d_'46'generalizedField'45'Γ_8497 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1344
d_dState_2444 ~v0 ~v1 v2 = du_dState_2444 v2
du_dState_2444 ::
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1344
du_dState_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1388
      (coe
         d_certState_2356 (coe d_'46'generalizedField'45's_8493 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2454 ~v0 ~v1 v2 = du_rewards_2454 v2
du_rewards_2454 ::
  T_GeneralizeTel_8505 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1358
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1388
         (coe
            d_certState_2356 (coe d_'46'generalizedField'45's_8493 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312
d_pparams_2468 ~v0 ~v1 v2 = du_pparams_2468 v2
du_pparams_2468 ::
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312
du_pparams_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2556
      (coe d_'46'generalizedField'45'Γ_8497 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 -> AgdaAny
d_slot_2472 ~v0 ~v1 v2 = du_slot_2472 v2
du_slot_2472 :: T_GeneralizeTel_8505 -> AgdaAny
du_slot_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2552
      (coe d_'46'generalizedField'45'Γ_8497 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_8505 -> Integer
d_treasury_2474 ~v0 ~v1 v2 = du_treasury_2474 v2
du_treasury_2474 :: T_GeneralizeTel_8505 -> Integer
du_treasury_2474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2560
      (coe d_'46'generalizedField'45'Γ_8497 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_13609 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1380
d_certState_2480 ~v0 ~v1 v2 = du_certState_2480 v2
du_certState_2480 ::
  T_GeneralizeTel_13609 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1380
du_certState_2480 v0
  = coe
      d_certState_2356 (coe d_'46'generalizedField'45's_13601 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_13609 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2482 ~v0 ~v1 v2 = du_govSt_2482 v2
du_govSt_2482 ::
  T_GeneralizeTel_13609 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2482 v0
  = coe d_govSt_2354 (coe d_'46'generalizedField'45's_13601 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_13609 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
d_utxoSt_2484 ~v0 ~v1 v2 = du_utxoSt_2484 v2
du_utxoSt_2484 ::
  T_GeneralizeTel_13609 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
du_utxoSt_2484 v0
  = coe
      d_utxoSt_2352 (coe d_'46'generalizedField'45's_13601 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_13609 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312
d_pparams_2546 ~v0 ~v1 v2 = du_pparams_2546 v2
du_pparams_2546 ::
  T_GeneralizeTel_13609 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_312
du_pparams_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2556
      (coe d_'46'generalizedField'45'Γ_13605 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_13609 -> AgdaAny
d_slot_2550 ~v0 ~v1 v2 = du_slot_2550 v2
du_slot_2550 :: T_GeneralizeTel_13609 -> AgdaAny
du_slot_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2552
      (coe d_'46'generalizedField'45'Γ_13605 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  T_GeneralizeTel_13609 -> Integer
d_treasury_2552 ~v0 ~v1 v2 = du_treasury_2552 v2
du_treasury_2552 :: T_GeneralizeTel_13609 -> Integer
du_treasury_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2560
      (coe d_'46'generalizedField'45'Γ_13605 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2094 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2540 ->
  T_LState_2344 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318] ->
  T_LState_2344 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2572 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8493 ::
  T_GeneralizeTel_8505 -> T_LState_2344
d_'46'generalizedField'45's_8493 v0
  = case coe v0 of
      C_mkGeneralizeTel_8507 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8495 ::
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318
d_'46'generalizedField'45'tx_8495 v0
  = case coe v0 of
      C_mkGeneralizeTel_8507 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8497 ::
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2540
d_'46'generalizedField'45'Γ_8497 v0
  = case coe v0 of
      C_mkGeneralizeTel_8507 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8499 ::
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
d_'46'generalizedField'45'utxoSt''_8499 v0
  = case coe v0 of
      C_mkGeneralizeTel_8507 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8501 ::
  T_GeneralizeTel_8505 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1380
d_'46'generalizedField'45'certState''_8501 v0
  = case coe v0 of
      C_mkGeneralizeTel_8507 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8503 ::
  T_GeneralizeTel_8505 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8503 v0
  = case coe v0 of
      C_mkGeneralizeTel_8507 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8505 a0 a1 = ()
data T_GeneralizeTel_8505
  = C_mkGeneralizeTel_8507 T_LState_2344
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2540
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1380
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13601 ::
  T_GeneralizeTel_13609 -> T_LState_2344
d_'46'generalizedField'45's_13601 v0
  = case coe v0 of
      C_mkGeneralizeTel_13611 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13603 ::
  T_GeneralizeTel_13609 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318
d_'46'generalizedField'45'tx_13603 v0
  = case coe v0 of
      C_mkGeneralizeTel_13611 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13605 ::
  T_GeneralizeTel_13609 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2540
d_'46'generalizedField'45'Γ_13605 v0
  = case coe v0 of
      C_mkGeneralizeTel_13611 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13607 ::
  T_GeneralizeTel_13609 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
d_'46'generalizedField'45'utxoSt''_13607 v0
  = case coe v0 of
      C_mkGeneralizeTel_13611 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13609 a0 a1 = ()
data T_GeneralizeTel_13609
  = C_mkGeneralizeTel_13611 T_LState_2344
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3318
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2540
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2200
