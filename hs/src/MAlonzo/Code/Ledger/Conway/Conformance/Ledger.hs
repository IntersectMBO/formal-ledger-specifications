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
d_epoch_634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_634 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
         (coe v0))
-- _.Tx.body
d_body_1784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3250
d_body_1784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3442
      (coe v0)
-- _.Tx.isValid
d_isValid_1786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430 ->
  Bool
d_isValid_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3448
      (coe v0)
-- _.Tx.txAD
d_txAD_1788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430 ->
  Maybe AgdaAny
d_txAD_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3450
      (coe v0)
-- _.Tx.txsize
d_txsize_1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430 ->
  Integer
d_txsize_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3446
      (coe v0)
-- _.Tx.wits
d_wits_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3408
d_wits_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3444
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2818 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1964 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  ()
d_GovState_1970 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1972 ~v0 ~v1 = du_HasCast'45'GovEnv_1972
du_HasCast'45'GovEnv_1972 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1972
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2850
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2014 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3250 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2034 v0 ~v1 = du_updateDeposits_2034 v0
du_updateDeposits_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3250 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2890
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2416 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2430
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2416 ->
  Integer
d_donations_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2432
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2416 ->
  Integer
d_fees_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2428 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2416 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2426 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2068 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1536 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1536 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2080 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2122 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2196 ~v0 ~v1 = du_HasCast'45'CertEnv_2196
du_HasCast'45'CertEnv_2196 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2196
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1546
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2416 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1536 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1500
d_dState_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1544 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2418 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1536 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1520
d_gState_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1548 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2420 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1536 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_pState_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1546 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2544 ~v0 ~v1 = du_HasCast'45'LEnv_2544
du_HasCast'45'LEnv_2544 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2860
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2546 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2550 ~v0 ~v1 = du_allColdCreds_2550
du_allColdCreds_2550 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2928
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2552 v0 ~v1 = du_rmOrphanDRepVotes_2552 v0
du_rmOrphanDRepVotes_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1390 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2910
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3250 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2554 ~v0 ~v1 = du_txgov_2554
du_txgov_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3250 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2554
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2864
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2770 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092
d_enactState_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2788
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2770 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2786
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2770 ->
  Maybe AgdaAny
d_ppolicy_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2784
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2770 ->
  AgdaAny
d_slot_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2782
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2770 ->
  Integer
d_treasury_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2790
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2568 a0 a1 = ()
data T_LState_2568
  = C_'10214'_'44'_'44'_'10215''737'_2582 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2416
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1536
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2576 ::
  T_LState_2568 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2416
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
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1536
d_certState_2580 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2582 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
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
  = C_LEDGER'45'V_2698 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2416
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2774 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1536
d_certState_2606 ~v0 ~v1 v2 = du_certState_2606 v2
du_certState_2606 ::
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1536
du_certState_2606 v0
  = coe
      d_certState_2580 (coe d_'46'generalizedField'45's_9145 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2608 ~v0 ~v1 v2 = du_govSt_2608 v2
du_govSt_2608 ::
  T_GeneralizeTel_9157 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2608 v0
  = coe d_govSt_2578 (coe d_'46'generalizedField'45's_9145 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2416
d_utxoSt_2610 ~v0 ~v1 v2 = du_utxoSt_2610 v2
du_utxoSt_2610 ::
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2416
du_utxoSt_2610 v0
  = coe d_utxoSt_2576 (coe d_'46'generalizedField'45's_9145 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
d_txCerts_2630 ~v0 ~v1 v2 = du_txCerts_2630 v2
du_txCerts_2630 ::
  T_GeneralizeTel_9157 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
du_txCerts_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3298
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3442
         (coe d_'46'generalizedField'45'tx_9147 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
d_txGovVotes_2638 ~v0 ~v1 v2 = du_txGovVotes_2638 v2
du_txGovVotes_2638 ::
  T_GeneralizeTel_9157 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
du_txGovVotes_2638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3310
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3442
         (coe d_'46'generalizedField'45'tx_9147 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 -> AgdaAny
d_txId_2640 ~v0 ~v1 v2 = du_txId_2640 v2
du_txId_2640 :: T_GeneralizeTel_9157 -> AgdaAny
du_txId_2640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3296
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3442
         (coe d_'46'generalizedField'45'tx_9147 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2650 ~v0 ~v1 v2 = du_txWithdrawals_2650 v2
du_txWithdrawals_2650 ::
  T_GeneralizeTel_9157 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3302
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3442
         (coe d_'46'generalizedField'45'tx_9147 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092
d_enactState_2654 ~v0 ~v1 v2 = du_enactState_2654 v2
du_enactState_2654 ::
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1092
du_enactState_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2788
      (coe d_'46'generalizedField'45'Γ_9149 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2656 ~v0 ~v1 v2 = du_pparams_2656 v2
du_pparams_2656 ::
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2786
      (coe d_'46'generalizedField'45'Γ_9149 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 -> Maybe AgdaAny
d_ppolicy_2658 ~v0 ~v1 v2 = du_ppolicy_2658 v2
du_ppolicy_2658 :: T_GeneralizeTel_9157 -> Maybe AgdaAny
du_ppolicy_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2784
      (coe d_'46'generalizedField'45'Γ_9149 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 -> AgdaAny
d_slot_2660 ~v0 ~v1 v2 = du_slot_2660 v2
du_slot_2660 :: T_GeneralizeTel_9157 -> AgdaAny
du_slot_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2782
      (coe d_'46'generalizedField'45'Γ_9149 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1500
d_dState_2666 ~v0 ~v1 v2 = du_dState_2666 v2
du_dState_2666 ::
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1500
du_dState_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1544
      (coe
         d_certState_2580 (coe d_'46'generalizedField'45's_9145 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2676 ~v0 ~v1 v2 = du_rewards_2676 v2
du_rewards_2676 ::
  T_GeneralizeTel_9157 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1514
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1544
         (coe
            d_certState_2580 (coe d_'46'generalizedField'45's_9145 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2690 ~v0 ~v1 v2 = du_pparams_2690 v2
du_pparams_2690 ::
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2786
      (coe d_'46'generalizedField'45'Γ_9149 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 -> AgdaAny
d_slot_2694 ~v0 ~v1 v2 = du_slot_2694 v2
du_slot_2694 :: T_GeneralizeTel_9157 -> AgdaAny
du_slot_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2782
      (coe d_'46'generalizedField'45'Γ_9149 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_9157 -> Integer
d_treasury_2696 ~v0 ~v1 v2 = du_treasury_2696 v2
du_treasury_2696 :: T_GeneralizeTel_9157 -> Integer
du_treasury_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2790
      (coe d_'46'generalizedField'45'Γ_9149 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_14255 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1536
d_certState_2702 ~v0 ~v1 v2 = du_certState_2702 v2
du_certState_2702 ::
  T_GeneralizeTel_14255 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1536
du_certState_2702 v0
  = coe
      d_certState_2580 (coe d_'46'generalizedField'45's_14247 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_14255 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2704 ~v0 ~v1 v2 = du_govSt_2704 v2
du_govSt_2704 ::
  T_GeneralizeTel_14255 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2704 v0
  = coe d_govSt_2578 (coe d_'46'generalizedField'45's_14247 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_14255 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2416
d_utxoSt_2706 ~v0 ~v1 v2 = du_utxoSt_2706 v2
du_utxoSt_2706 ::
  T_GeneralizeTel_14255 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2416
du_utxoSt_2706 v0
  = coe
      d_utxoSt_2576 (coe d_'46'generalizedField'45's_14247 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_14255 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2766 ~v0 ~v1 v2 = du_pparams_2766 v2
du_pparams_2766 ::
  T_GeneralizeTel_14255 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2786
      (coe d_'46'generalizedField'45'Γ_14251 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_14255 -> AgdaAny
d_slot_2770 ~v0 ~v1 v2 = du_slot_2770 v2
du_slot_2770 :: T_GeneralizeTel_14255 -> AgdaAny
du_slot_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2782
      (coe d_'46'generalizedField'45'Γ_14251 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  T_GeneralizeTel_14255 -> Integer
d_treasury_2772 ~v0 ~v1 v2 = du_treasury_2772 v2
du_treasury_2772 :: T_GeneralizeTel_14255 -> Integer
du_treasury_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2790
      (coe d_'46'generalizedField'45'Γ_14251 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2314 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2770 ->
  T_LState_2568 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430] ->
  T_LState_2568 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2792 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9145 ::
  T_GeneralizeTel_9157 -> T_LState_2568
d_'46'generalizedField'45's_9145 v0
  = case coe v0 of
      C_mkGeneralizeTel_9159 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9147 ::
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430
d_'46'generalizedField'45'tx_9147 v0
  = case coe v0 of
      C_mkGeneralizeTel_9159 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9149 ::
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2770
d_'46'generalizedField'45'Γ_9149 v0
  = case coe v0 of
      C_mkGeneralizeTel_9159 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9151 ::
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2416
d_'46'generalizedField'45'utxoSt''_9151 v0
  = case coe v0 of
      C_mkGeneralizeTel_9159 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9153 ::
  T_GeneralizeTel_9157 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1536
d_'46'generalizedField'45'certState''_9153 v0
  = case coe v0 of
      C_mkGeneralizeTel_9159 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9155 ::
  T_GeneralizeTel_9157 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9155 v0
  = case coe v0 of
      C_mkGeneralizeTel_9159 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9157 a0 a1 = ()
data T_GeneralizeTel_9157
  = C_mkGeneralizeTel_9159 T_LState_2568
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2770
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2416
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1536
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14247 ::
  T_GeneralizeTel_14255 -> T_LState_2568
d_'46'generalizedField'45's_14247 v0
  = case coe v0 of
      C_mkGeneralizeTel_14257 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14249 ::
  T_GeneralizeTel_14255 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430
d_'46'generalizedField'45'tx_14249 v0
  = case coe v0 of
      C_mkGeneralizeTel_14257 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14251 ::
  T_GeneralizeTel_14255 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2770
d_'46'generalizedField'45'Γ_14251 v0
  = case coe v0 of
      C_mkGeneralizeTel_14257 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14253 ::
  T_GeneralizeTel_14255 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2416
d_'46'generalizedField'45'utxoSt''_14253 v0
  = case coe v0 of
      C_mkGeneralizeTel_14257 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14255 a0 a1 = ()
data T_GeneralizeTel_14255
  = C_mkGeneralizeTel_14257 T_LState_2568
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3430
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2770
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2416
