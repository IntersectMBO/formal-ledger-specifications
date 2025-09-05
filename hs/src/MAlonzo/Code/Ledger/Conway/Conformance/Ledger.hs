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
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184
d_body_1706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
      (coe v0)
-- _.Tx.isValid
d_isValid_1708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  Bool
d_isValid_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3382
      (coe v0)
-- _.Tx.txAD
d_txAD_1710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  Maybe AgdaAny
d_txAD_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3384
      (coe v0)
-- _.Tx.txsize
d_txsize_1712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  Integer
d_txsize_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3380
      (coe v0)
-- _.Tx.wits
d_wits_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3342
d_wits_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3378
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2718 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1886 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  ()
d_GovState_1892 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1894 ~v0 ~v1 = du_HasCast'45'GovEnv_1894
du_HasCast'45'GovEnv_1894 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1894
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2750
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1936 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1956 v0 ~v1 = du_updateDeposits_1956 v0
du_updateDeposits_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2800
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2340
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  Integer
d_donations_1982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2342
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  Integer
d_fees_1984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2338 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2336 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1990 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1278 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2004 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2038 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2110 ~v0 ~v1 = du_HasCast'45'CertEnv_2110
du_HasCast'45'CertEnv_2110 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2110
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1494
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2324 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1440
d_dState_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1484 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2326 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1460
d_gState_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1488 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2328 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1318
d_pState_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1486 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2452 ~v0 ~v1 = du_HasCast'45'LEnv_2452
du_HasCast'45'LEnv_2452 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2452
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2766
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2454 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2458 ~v0 ~v1 = du_allColdCreds_2458
du_allColdCreds_2458 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2834
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2460 v0 ~v1 = du_rmOrphanDRepVotes_2460 v0
du_rmOrphanDRepVotes_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2816
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2462 ~v0 ~v1 = du_txgov_2462
du_txgov_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3184 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2462
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2770
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2680 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
d_enactState_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2698
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2680 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2696
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2680 ->
  Maybe AgdaAny
d_ppolicy_2470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2694
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2680 ->
  AgdaAny
d_slot_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2692
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2680 ->
  Integer
d_treasury_2474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2700
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2476 a0 a1 = ()
data T_LState_2476
  = C_'10214'_'44'_'44'_'10215''737'_2490 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2484 ::
  T_LState_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_utxoSt_2484 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2490 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2486 ::
  T_LState_2476 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2486 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2490 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2488 ::
  T_LState_2476 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476
d_certState_2488 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2490 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2492 ~v0 ~v1 = du_HasCast'45'LState_2492
du_HasCast'45'LState_2492 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2492
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
                                 (2476 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2476 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2476 :: Integer) (16262344046643431141 :: Integer)
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
         (coe C_'10214'_'44'_'44'_'10215''737'_2490))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2510 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2510
  = C_LEDGER'45'V_2606 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2682 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476
d_certState_2514 ~v0 ~v1 v2 = du_certState_2514 v2
du_certState_2514 ::
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476
du_certState_2514 v0
  = coe
      d_certState_2488 (coe d_'46'generalizedField'45's_8863 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2516 ~v0 ~v1 v2 = du_govSt_2516 v2
du_govSt_2516 ::
  T_GeneralizeTel_8875 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2516 v0
  = coe d_govSt_2486 (coe d_'46'generalizedField'45's_8863 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_utxoSt_2518 ~v0 ~v1 v2 = du_utxoSt_2518 v2
du_utxoSt_2518 ::
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
du_utxoSt_2518 v0
  = coe d_utxoSt_2484 (coe d_'46'generalizedField'45's_8863 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242]
d_txCerts_2538 ~v0 ~v1 v2 = du_txCerts_2538 v2
du_txCerts_2538 ::
  T_GeneralizeTel_8875 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1242]
du_txCerts_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_8865 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
d_txGovVotes_2546 ~v0 ~v1 v2 = du_txGovVotes_2546 v2
du_txGovVotes_2546 ::
  T_GeneralizeTel_8875 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
du_txGovVotes_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_8865 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 -> AgdaAny
d_txId_2548 ~v0 ~v1 v2 = du_txId_2548 v2
du_txId_2548 :: T_GeneralizeTel_8875 -> AgdaAny
du_txId_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_8865 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2558 ~v0 ~v1 v2 = du_txWithdrawals_2558 v2
du_txWithdrawals_2558 ::
  T_GeneralizeTel_8875 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3376
         (coe d_'46'generalizedField'45'tx_8865 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
d_enactState_2562 ~v0 ~v1 v2 = du_enactState_2562 v2
du_enactState_2562 ::
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1044
du_enactState_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2698
      (coe d_'46'generalizedField'45'Γ_8867 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2564 ~v0 ~v1 v2 = du_pparams_2564 v2
du_pparams_2564 ::
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2696
      (coe d_'46'generalizedField'45'Γ_8867 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 -> Maybe AgdaAny
d_ppolicy_2566 ~v0 ~v1 v2 = du_ppolicy_2566 v2
du_ppolicy_2566 :: T_GeneralizeTel_8875 -> Maybe AgdaAny
du_ppolicy_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2694
      (coe d_'46'generalizedField'45'Γ_8867 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 -> AgdaAny
d_slot_2568 ~v0 ~v1 v2 = du_slot_2568 v2
du_slot_2568 :: T_GeneralizeTel_8875 -> AgdaAny
du_slot_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2692
      (coe d_'46'generalizedField'45'Γ_8867 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1440
d_dState_2574 ~v0 ~v1 v2 = du_dState_2574 v2
du_dState_2574 ::
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1440
du_dState_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1484
      (coe
         d_certState_2488 (coe d_'46'generalizedField'45's_8863 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2584 ~v0 ~v1 v2 = du_rewards_2584 v2
du_rewards_2584 ::
  T_GeneralizeTel_8875 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1484
         (coe
            d_certState_2488 (coe d_'46'generalizedField'45's_8863 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2598 ~v0 ~v1 v2 = du_pparams_2598 v2
du_pparams_2598 ::
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2696
      (coe d_'46'generalizedField'45'Γ_8867 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 -> AgdaAny
d_slot_2602 ~v0 ~v1 v2 = du_slot_2602 v2
du_slot_2602 :: T_GeneralizeTel_8875 -> AgdaAny
du_slot_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2692
      (coe d_'46'generalizedField'45'Γ_8867 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_8875 -> Integer
d_treasury_2604 ~v0 ~v1 v2 = du_treasury_2604 v2
du_treasury_2604 :: T_GeneralizeTel_8875 -> Integer
du_treasury_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2700
      (coe d_'46'generalizedField'45'Γ_8867 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_13965 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476
d_certState_2610 ~v0 ~v1 v2 = du_certState_2610 v2
du_certState_2610 ::
  T_GeneralizeTel_13965 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476
du_certState_2610 v0
  = coe
      d_certState_2488 (coe d_'46'generalizedField'45's_13957 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_13965 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2612 ~v0 ~v1 v2 = du_govSt_2612 v2
du_govSt_2612 ::
  T_GeneralizeTel_13965 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2612 v0
  = coe d_govSt_2486 (coe d_'46'generalizedField'45's_13957 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_13965 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_utxoSt_2614 ~v0 ~v1 v2 = du_utxoSt_2614 v2
du_utxoSt_2614 ::
  T_GeneralizeTel_13965 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
du_utxoSt_2614 v0
  = coe
      d_utxoSt_2484 (coe d_'46'generalizedField'45's_13957 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_13965 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_2674 ~v0 ~v1 v2 = du_pparams_2674 v2
du_pparams_2674 ::
  T_GeneralizeTel_13965 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
du_pparams_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2696
      (coe d_'46'generalizedField'45'Γ_13961 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_13965 -> AgdaAny
d_slot_2678 ~v0 ~v1 v2 = du_slot_2678 v2
du_slot_2678 :: T_GeneralizeTel_13965 -> AgdaAny
du_slot_2678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2692
      (coe d_'46'generalizedField'45'Γ_13961 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  T_GeneralizeTel_13965 -> Integer
d_treasury_2680 ~v0 ~v1 v2 = du_treasury_2680 v2
du_treasury_2680 :: T_GeneralizeTel_13965 -> Integer
du_treasury_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2700
      (coe d_'46'generalizedField'45'Γ_13961 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2224 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2680 ->
  T_LState_2476 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364] ->
  T_LState_2476 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2700 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8863 ::
  T_GeneralizeTel_8875 -> T_LState_2476
d_'46'generalizedField'45's_8863 v0
  = case coe v0 of
      C_mkGeneralizeTel_8877 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8865 ::
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364
d_'46'generalizedField'45'tx_8865 v0
  = case coe v0 of
      C_mkGeneralizeTel_8877 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8867 ::
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2680
d_'46'generalizedField'45'Γ_8867 v0
  = case coe v0 of
      C_mkGeneralizeTel_8877 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8869 ::
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_'46'generalizedField'45'utxoSt''_8869 v0
  = case coe v0 of
      C_mkGeneralizeTel_8877 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8871 ::
  T_GeneralizeTel_8875 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476
d_'46'generalizedField'45'certState''_8871 v0
  = case coe v0 of
      C_mkGeneralizeTel_8877 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8873 ::
  T_GeneralizeTel_8875 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8873 v0
  = case coe v0 of
      C_mkGeneralizeTel_8877 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8875 a0 a1 = ()
data T_GeneralizeTel_8875
  = C_mkGeneralizeTel_8877 T_LState_2476
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2680
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1476
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13957 ::
  T_GeneralizeTel_13965 -> T_LState_2476
d_'46'generalizedField'45's_13957 v0
  = case coe v0 of
      C_mkGeneralizeTel_13967 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13959 ::
  T_GeneralizeTel_13965 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364
d_'46'generalizedField'45'tx_13959 v0
  = case coe v0 of
      C_mkGeneralizeTel_13967 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13961 ::
  T_GeneralizeTel_13965 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2680
d_'46'generalizedField'45'Γ_13961 v0
  = case coe v0 of
      C_mkGeneralizeTel_13967 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13963 ::
  T_GeneralizeTel_13965 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
d_'46'generalizedField'45'utxoSt''_13963 v0
  = case coe v0 of
      C_mkGeneralizeTel_13967 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13965 a0 a1 = ()
data T_GeneralizeTel_13965
  = C_mkGeneralizeTel_13967 T_LState_2476
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3364
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2680
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2326
