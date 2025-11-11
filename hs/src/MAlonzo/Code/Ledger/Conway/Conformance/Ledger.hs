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
d_Tx_552 a0 = ()
-- _.epoch
d_epoch_636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_636 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
         (coe v0))
-- _.Tx.body
d_body_1782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3250
d_body_1782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3442
      (coe v0)
-- _.Tx.isValid
d_isValid_1784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430 ->
  Bool
d_isValid_1784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3448
      (coe v0)
-- _.Tx.txAD
d_txAD_1786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430 ->
  Maybe AgdaAny
d_txAD_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3450
      (coe v0)
-- _.Tx.txsize
d_txsize_1788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430 ->
  Integer
d_txsize_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3446
      (coe v0)
-- _.Tx.wits
d_wits_1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3408
d_wits_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3444
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2816 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1964 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  ()
d_GovState_1970 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1972 ~v0 ~v1 = du_HasCast'45'GovEnv_1972
du_HasCast'45'GovEnv_1972 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1972
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2848
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2014 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3250 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2034 v0 ~v1 = du_updateDeposits_2034 v0
du_updateDeposits_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3250 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2838
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2378
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2364 ->
  Integer
d_donations_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2380
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2364 ->
  Integer
d_fees_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2376 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2374 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2068 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1324 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1542 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1288] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1542 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2080 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2122 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2196 ~v0 ~v1 = du_HasCast'45'CertEnv_2196
du_HasCast'45'CertEnv_2196 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2196
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1548
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2414 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1542 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1506
d_dState_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1550 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2416 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1542 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1526
d_gState_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1554 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2418 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1542 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1364
d_pState_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1552 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2544 ~v0 ~v1 = du_HasCast'45'LEnv_2544
du_HasCast'45'LEnv_2544 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2864
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2546 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1094 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2550 ~v0 ~v1 = du_allColdCreds_2550
du_allColdCreds_2550 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1094 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2932
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2552 v0 ~v1 = du_rmOrphanDRepVotes_2552 v0
du_rmOrphanDRepVotes_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2914
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3250 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2554 ~v0 ~v1 = du_txgov_2554
du_txgov_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3250 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2554
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2868
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2774 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1094
d_enactState_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2792
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2774 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2790
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2774 ->
  Maybe AgdaAny
d_ppolicy_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2788
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2774 ->
  AgdaAny
d_slot_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2786
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2774 ->
  Integer
d_treasury_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2794
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2568 a0 a1 = ()
data T_LState_2568
  = C_'10214'_'44'_'44'_'10215''737'_2582 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2364
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1542
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2576 ::
  T_LState_2568 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2364
d_utxoSt_2576 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2582 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2578 ::
  T_LState_2568 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2578 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2582 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2580 ::
  T_LState_2568 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1542
d_certState_2580 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2582 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2584 ~v0 ~v1 = du_HasCast'45'LState_2584
du_HasCast'45'LState_2584 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2584
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
                                 (2568 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2014 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2568 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1970 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2568 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2122 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2582))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2602 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2602
  = C_LEDGER'45'V_2698 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2364
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2774 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1542
d_certState_2606 ~v0 ~v1 v2 = du_certState_2606 v2
du_certState_2606 ::
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1542
du_certState_2606 v0
  = coe
      d_certState_2580 (coe d_'46'generalizedField'45's_9169 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2608 ~v0 ~v1 v2 = du_govSt_2608 v2
du_govSt_2608 ::
  T_GeneralizeTel_9181 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2608 v0
  = coe d_govSt_2578 (coe d_'46'generalizedField'45's_9169 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2364
d_utxoSt_2610 ~v0 ~v1 v2 = du_utxoSt_2610 v2
du_utxoSt_2610 ::
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2364
du_utxoSt_2610 v0
  = coe d_utxoSt_2576 (coe d_'46'generalizedField'45's_9169 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1288]
d_txCerts_2630 ~v0 ~v1 v2 = du_txCerts_2630 v2
du_txCerts_2630 ::
  T_GeneralizeTel_9181 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1288]
du_txCerts_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3298
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3442
         (coe d_'46'generalizedField'45'tx_9171 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_896]
d_txGovVotes_2638 ~v0 ~v1 v2 = du_txGovVotes_2638 v2
du_txGovVotes_2638 ::
  T_GeneralizeTel_9181 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_896]
du_txGovVotes_2638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3310
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3442
         (coe d_'46'generalizedField'45'tx_9171 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 -> AgdaAny
d_txId_2640 ~v0 ~v1 v2 = du_txId_2640 v2
du_txId_2640 :: T_GeneralizeTel_9181 -> AgdaAny
du_txId_2640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3296
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3442
         (coe d_'46'generalizedField'45'tx_9171 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2650 ~v0 ~v1 v2 = du_txWithdrawals_2650 v2
du_txWithdrawals_2650 ::
  T_GeneralizeTel_9181 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3302
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3442
         (coe d_'46'generalizedField'45'tx_9171 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1094
d_enactState_2654 ~v0 ~v1 v2 = du_enactState_2654 v2
du_enactState_2654 ::
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1094
du_enactState_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2792
      (coe d_'46'generalizedField'45'Γ_9173 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2656 ~v0 ~v1 v2 = du_pparams_2656 v2
du_pparams_2656 ::
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
du_pparams_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2790
      (coe d_'46'generalizedField'45'Γ_9173 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 -> Maybe AgdaAny
d_ppolicy_2658 ~v0 ~v1 v2 = du_ppolicy_2658 v2
du_ppolicy_2658 :: T_GeneralizeTel_9181 -> Maybe AgdaAny
du_ppolicy_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2788
      (coe d_'46'generalizedField'45'Γ_9173 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 -> AgdaAny
d_slot_2660 ~v0 ~v1 v2 = du_slot_2660 v2
du_slot_2660 :: T_GeneralizeTel_9181 -> AgdaAny
du_slot_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2786
      (coe d_'46'generalizedField'45'Γ_9173 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1506
d_dState_2666 ~v0 ~v1 v2 = du_dState_2666 v2
du_dState_2666 ::
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1506
du_dState_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1550
      (coe
         d_certState_2580 (coe d_'46'generalizedField'45's_9169 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2676 ~v0 ~v1 v2 = du_rewards_2676 v2
du_rewards_2676 ::
  T_GeneralizeTel_9181 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1520
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1550
         (coe
            d_certState_2580 (coe d_'46'generalizedField'45's_9169 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2690 ~v0 ~v1 v2 = du_pparams_2690 v2
du_pparams_2690 ::
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
du_pparams_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2790
      (coe d_'46'generalizedField'45'Γ_9173 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 -> AgdaAny
d_slot_2694 ~v0 ~v1 v2 = du_slot_2694 v2
du_slot_2694 :: T_GeneralizeTel_9181 -> AgdaAny
du_slot_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2786
      (coe d_'46'generalizedField'45'Γ_9173 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_9181 -> Integer
d_treasury_2696 ~v0 ~v1 v2 = du_treasury_2696 v2
du_treasury_2696 :: T_GeneralizeTel_9181 -> Integer
du_treasury_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2794
      (coe d_'46'generalizedField'45'Γ_9173 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_14295 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1542
d_certState_2702 ~v0 ~v1 v2 = du_certState_2702 v2
du_certState_2702 ::
  T_GeneralizeTel_14295 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1542
du_certState_2702 v0
  = coe
      d_certState_2580 (coe d_'46'generalizedField'45's_14287 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_14295 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2704 ~v0 ~v1 v2 = du_govSt_2704 v2
du_govSt_2704 ::
  T_GeneralizeTel_14295 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2704 v0
  = coe d_govSt_2578 (coe d_'46'generalizedField'45's_14287 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_14295 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2364
d_utxoSt_2706 ~v0 ~v1 v2 = du_utxoSt_2706 v2
du_utxoSt_2706 ::
  T_GeneralizeTel_14295 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2364
du_utxoSt_2706 v0
  = coe
      d_utxoSt_2576 (coe d_'46'generalizedField'45's_14287 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_14295 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_2766 ~v0 ~v1 v2 = du_pparams_2766 v2
du_pparams_2766 ::
  T_GeneralizeTel_14295 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
du_pparams_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2790
      (coe d_'46'generalizedField'45'Γ_14291 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_14295 -> AgdaAny
d_slot_2770 ~v0 ~v1 v2 = du_slot_2770 v2
du_slot_2770 :: T_GeneralizeTel_14295 -> AgdaAny
du_slot_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2786
      (coe d_'46'generalizedField'45'Γ_14291 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  T_GeneralizeTel_14295 -> Integer
d_treasury_2772 ~v0 ~v1 v2 = du_treasury_2772 v2
du_treasury_2772 :: T_GeneralizeTel_14295 -> Integer
du_treasury_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2794
      (coe d_'46'generalizedField'45'Γ_14291 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2372 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2774 ->
  T_LState_2568 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430] ->
  T_LState_2568 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2792 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9169 ::
  T_GeneralizeTel_9181 -> T_LState_2568
d_'46'generalizedField'45's_9169 v0
  = case coe v0 of
      C_mkGeneralizeTel_9183 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9171 ::
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430
d_'46'generalizedField'45'tx_9171 v0
  = case coe v0 of
      C_mkGeneralizeTel_9183 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9173 ::
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2774
d_'46'generalizedField'45'Γ_9173 v0
  = case coe v0 of
      C_mkGeneralizeTel_9183 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9175 ::
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2364
d_'46'generalizedField'45'utxoSt''_9175 v0
  = case coe v0 of
      C_mkGeneralizeTel_9183 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9177 ::
  T_GeneralizeTel_9181 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1542
d_'46'generalizedField'45'certState''_9177 v0
  = case coe v0 of
      C_mkGeneralizeTel_9183 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9179 ::
  T_GeneralizeTel_9181 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9179 v0
  = case coe v0 of
      C_mkGeneralizeTel_9183 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9181 a0 a1 = ()
data T_GeneralizeTel_9181
  = C_mkGeneralizeTel_9183 T_LState_2568
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2774
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2364
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1542
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14287 ::
  T_GeneralizeTel_14295 -> T_LState_2568
d_'46'generalizedField'45's_14287 v0
  = case coe v0 of
      C_mkGeneralizeTel_14297 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14289 ::
  T_GeneralizeTel_14295 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430
d_'46'generalizedField'45'tx_14289 v0
  = case coe v0 of
      C_mkGeneralizeTel_14297 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14291 ::
  T_GeneralizeTel_14295 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2774
d_'46'generalizedField'45'Γ_14291 v0
  = case coe v0 of
      C_mkGeneralizeTel_14297 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14293 ::
  T_GeneralizeTel_14295 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2364
d_'46'generalizedField'45'utxoSt''_14293 v0
  = case coe v0 of
      C_mkGeneralizeTel_14297 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14295 a0 a1 = ()
data T_GeneralizeTel_14295
  = C_mkGeneralizeTel_14297 T_LState_2568
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2774
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2364
