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
d_Tx_518 a0 = ()
-- _.epoch
d_epoch_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_598 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
         (coe v0))
-- _.Tx.body
d_body_1706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3172
d_body_1706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3364
      (coe v0)
-- _.Tx.isValid
d_isValid_1708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3352 ->
  Bool
d_isValid_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3370
      (coe v0)
-- _.Tx.txAD
d_txAD_1710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3352 ->
  Maybe AgdaAny
d_txAD_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3372
      (coe v0)
-- _.Tx.txsize
d_txsize_1712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3352 ->
  Integer
d_txsize_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3368
      (coe v0)
-- _.Tx.wits
d_wits_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3330
d_wits_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3366
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2704 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1886 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  ()
d_GovState_1892 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1894 ~v0 ~v1 = du_HasCast'45'GovEnv_1894
du_HasCast'45'GovEnv_1894 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1894
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2736
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1936 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3172 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1956 v0 ~v1 = du_updateDeposits_1956 v0
du_updateDeposits_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3172 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2788
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2328
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314 ->
  Integer
d_donations_1982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2330
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314 ->
  Integer
d_fees_1984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2326 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2324 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1990 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1256 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1220] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2004 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2038 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2110 ~v0 ~v1 = du_HasCast'45'CertEnv_2110
du_HasCast'45'CertEnv_2110 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2110
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1472
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2316 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1428
d_dState_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1472 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2318 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1448
d_gState_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1476 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2320 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1296
d_pState_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1474 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2440 ~v0 ~v1 = du_HasCast'45'LEnv_2440
du_HasCast'45'LEnv_2440 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2440
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2752
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2442 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2446 ~v0 ~v1 = du_allColdCreds_2446
du_allColdCreds_2446 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2446
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2820
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1320 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2448 v0 ~v1 = du_rmOrphanDRepVotes_2448 v0
du_rmOrphanDRepVotes_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1320 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2802
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3172 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2450 ~v0 ~v1 = du_txgov_2450
du_txgov_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3172 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2450
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2756
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2668 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
d_enactState_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2686
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2668 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2684
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2668 ->
  Maybe AgdaAny
d_ppolicy_2458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2682
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2668 ->
  AgdaAny
d_slot_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2680
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2668 ->
  Integer
d_treasury_2462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2688
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2464 a0 a1 = ()
data T_LState_2464
  = C_'10214'_'44'_'44'_'10215''737'_2478 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2472 ::
  T_LState_2464 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314
d_utxoSt_2472 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2478 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2474 ::
  T_LState_2464 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2474 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2478 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2476 ::
  T_LState_2464 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464
d_certState_2476 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2478 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2480 ~v0 ~v1 = du_HasCast'45'LState_2480
du_HasCast'45'LState_2480 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2480
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
                                 (2464 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1936 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2464 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1892 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2464 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2038 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2478))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2498 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2498
  = C_LEDGER'45'V_2594 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2670 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464
d_certState_2502 ~v0 ~v1 v2 = du_certState_2502 v2
du_certState_2502 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464
du_certState_2502 v0
  = coe
      d_certState_2476 (coe d_'46'generalizedField'45's_8821 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2504 ~v0 ~v1 v2 = du_govSt_2504 v2
du_govSt_2504 ::
  T_GeneralizeTel_8833 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2504 v0
  = coe d_govSt_2474 (coe d_'46'generalizedField'45's_8821 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314
d_utxoSt_2506 ~v0 ~v1 v2 = du_utxoSt_2506 v2
du_utxoSt_2506 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314
du_utxoSt_2506 v0
  = coe d_utxoSt_2472 (coe d_'46'generalizedField'45's_8821 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1220]
d_txCerts_2526 ~v0 ~v1 v2 = du_txCerts_2526 v2
du_txCerts_2526 ::
  T_GeneralizeTel_8833 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1220]
du_txCerts_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3364
         (coe d_'46'generalizedField'45'tx_8823 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
d_txGovVotes_2534 ~v0 ~v1 v2 = du_txGovVotes_2534 v2
du_txGovVotes_2534 ::
  T_GeneralizeTel_8833 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
du_txGovVotes_2534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3364
         (coe d_'46'generalizedField'45'tx_8823 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 -> AgdaAny
d_txId_2536 ~v0 ~v1 v2 = du_txId_2536 v2
du_txId_2536 :: T_GeneralizeTel_8833 -> AgdaAny
du_txId_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3364
         (coe d_'46'generalizedField'45'tx_8823 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2546 ~v0 ~v1 v2 = du_txWithdrawals_2546 v2
du_txWithdrawals_2546 ::
  T_GeneralizeTel_8833 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3364
         (coe d_'46'generalizedField'45'tx_8823 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
d_enactState_2550 ~v0 ~v1 v2 = du_enactState_2550 v2
du_enactState_2550 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
du_enactState_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2686
      (coe d_'46'generalizedField'45'Γ_8825 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2552 ~v0 ~v1 v2 = du_pparams_2552 v2
du_pparams_2552 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2684
      (coe d_'46'generalizedField'45'Γ_8825 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 -> Maybe AgdaAny
d_ppolicy_2554 ~v0 ~v1 v2 = du_ppolicy_2554 v2
du_ppolicy_2554 :: T_GeneralizeTel_8833 -> Maybe AgdaAny
du_ppolicy_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2682
      (coe d_'46'generalizedField'45'Γ_8825 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 -> AgdaAny
d_slot_2556 ~v0 ~v1 v2 = du_slot_2556 v2
du_slot_2556 :: T_GeneralizeTel_8833 -> AgdaAny
du_slot_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2680
      (coe d_'46'generalizedField'45'Γ_8825 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1428
d_dState_2562 ~v0 ~v1 v2 = du_dState_2562 v2
du_dState_2562 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1428
du_dState_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1472
      (coe
         d_certState_2476 (coe d_'46'generalizedField'45's_8821 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2572 ~v0 ~v1 v2 = du_rewards_2572 v2
du_rewards_2572 ::
  T_GeneralizeTel_8833 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1442
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1472
         (coe
            d_certState_2476 (coe d_'46'generalizedField'45's_8821 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2586 ~v0 ~v1 v2 = du_pparams_2586 v2
du_pparams_2586 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2684
      (coe d_'46'generalizedField'45'Γ_8825 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 -> AgdaAny
d_slot_2590 ~v0 ~v1 v2 = du_slot_2590 v2
du_slot_2590 :: T_GeneralizeTel_8833 -> AgdaAny
du_slot_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2680
      (coe d_'46'generalizedField'45'Γ_8825 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_8833 -> Integer
d_treasury_2592 ~v0 ~v1 v2 = du_treasury_2592 v2
du_treasury_2592 :: T_GeneralizeTel_8833 -> Integer
du_treasury_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2688
      (coe d_'46'generalizedField'45'Γ_8825 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464
d_certState_2598 ~v0 ~v1 v2 = du_certState_2598 v2
du_certState_2598 ::
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464
du_certState_2598 v0
  = coe
      d_certState_2476 (coe d_'46'generalizedField'45's_13915 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_13923 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2600 ~v0 ~v1 v2 = du_govSt_2600 v2
du_govSt_2600 ::
  T_GeneralizeTel_13923 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2600 v0
  = coe d_govSt_2474 (coe d_'46'generalizedField'45's_13915 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314
d_utxoSt_2602 ~v0 ~v1 v2 = du_utxoSt_2602 v2
du_utxoSt_2602 ::
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314
du_utxoSt_2602 v0
  = coe
      d_utxoSt_2472 (coe d_'46'generalizedField'45's_13915 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2662 ~v0 ~v1 v2 = du_pparams_2662 v2
du_pparams_2662 ::
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2684
      (coe d_'46'generalizedField'45'Γ_13919 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_13923 -> AgdaAny
d_slot_2666 ~v0 ~v1 v2 = du_slot_2666 v2
du_slot_2666 :: T_GeneralizeTel_13923 -> AgdaAny
du_slot_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2680
      (coe d_'46'generalizedField'45'Γ_13919 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  T_GeneralizeTel_13923 -> Integer
d_treasury_2668 ~v0 ~v1 v2 = du_treasury_2668 v2
du_treasury_2668 :: T_GeneralizeTel_13923 -> Integer
du_treasury_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2688
      (coe d_'46'generalizedField'45'Γ_13919 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2212 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2668 ->
  T_LState_2464 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3352] ->
  T_LState_2464 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2688 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8821 ::
  T_GeneralizeTel_8833 -> T_LState_2464
d_'46'generalizedField'45's_8821 v0
  = case coe v0 of
      C_mkGeneralizeTel_8835 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8823 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3352
d_'46'generalizedField'45'tx_8823 v0
  = case coe v0 of
      C_mkGeneralizeTel_8835 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8825 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2668
d_'46'generalizedField'45'Γ_8825 v0
  = case coe v0 of
      C_mkGeneralizeTel_8835 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8827 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314
d_'46'generalizedField'45'utxoSt''_8827 v0
  = case coe v0 of
      C_mkGeneralizeTel_8835 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8829 ::
  T_GeneralizeTel_8833 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464
d_'46'generalizedField'45'certState''_8829 v0
  = case coe v0 of
      C_mkGeneralizeTel_8835 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8831 ::
  T_GeneralizeTel_8833 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8831 v0
  = case coe v0 of
      C_mkGeneralizeTel_8835 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8833 a0 a1 = ()
data T_GeneralizeTel_8833
  = C_mkGeneralizeTel_8835 T_LState_2464
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3352
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2668
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1464
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13915 ::
  T_GeneralizeTel_13923 -> T_LState_2464
d_'46'generalizedField'45's_13915 v0
  = case coe v0 of
      C_mkGeneralizeTel_13925 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13917 ::
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3352
d_'46'generalizedField'45'tx_13917 v0
  = case coe v0 of
      C_mkGeneralizeTel_13925 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13919 ::
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2668
d_'46'generalizedField'45'Γ_13919 v0
  = case coe v0 of
      C_mkGeneralizeTel_13925 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13921 ::
  T_GeneralizeTel_13923 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314
d_'46'generalizedField'45'utxoSt''_13921 v0
  = case coe v0 of
      C_mkGeneralizeTel_13925 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13923 a0 a1 = ()
data T_GeneralizeTel_13923
  = C_mkGeneralizeTel_13925 T_LState_2464
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3352
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2668
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2314
