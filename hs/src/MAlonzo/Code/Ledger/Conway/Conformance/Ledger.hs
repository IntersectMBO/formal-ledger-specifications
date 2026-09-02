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
d_Tx_622 a0 = ()
-- _.epoch
d_epoch_708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_708 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- _.Tx.body
d_body_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_body_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
      (coe v0)
-- _.Tx.isValid
d_isValid_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Bool
d_isValid_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3652
      (coe v0)
-- _.Tx.txAD
d_txAD_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Maybe AgdaAny
d_txAD_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3654
      (coe v0)
-- _.Tx.txsize
d_txsize_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Integer
d_txsize_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3650
      (coe v0)
-- _.Tx.wits
d_wits_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612
d_wits_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2952 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2122 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  ()
d_GovState_2128 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2130 ~v0 ~v1 = du_HasCast'45'GovEnv_2130
du_HasCast'45'GovEnv_2130 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2130
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2984
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2172 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2192 v0 ~v1 = du_updateDeposits_2192 v0
du_updateDeposits_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2978
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2518
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504 ->
  Integer
d_donations_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2520
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504 ->
  Integer
d_fees_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2516 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2514 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2226 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1392 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1352] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2238 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2274 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2348 ~v0 ~v1 = du_HasCast'45'CertEnv_2348
du_HasCast'45'CertEnv_2348 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2348
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1616
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2558 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1576
d_dState_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1620 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2560 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1596
d_gState_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1624 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2562 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1432
d_pState_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1622 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2684 ~v0 ~v1 = du_HasCast'45'LEnv_2684
du_HasCast'45'LEnv_2684 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2684
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_3028
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2686 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2690 ~v0 ~v1 = du_allColdCreds_2690
du_allColdCreds_2690 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2690
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3096
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1460 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2692 v0 ~v1 = du_rmOrphanDRepVotes_2692 v0
du_rmOrphanDRepVotes_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1460 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3078
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2694 ~v0 ~v1 = du_txgov_2694
du_txgov_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2694
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_3032
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2938 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180
d_enactState_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2956
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2938 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2954
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2938 ->
  Maybe AgdaAny
d_ppolicy_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2952
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2938 ->
  AgdaAny
d_slot_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2950
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2938 ->
  Integer
d_treasury_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2958
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2708 a0 a1 = ()
data T_LState_2708
  = C_'10214'_'44'_'44'_'10215''737'_2722 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2716 ::
  T_LState_2708 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
d_utxoSt_2716 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2722 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2718 ::
  T_LState_2708 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2718 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2722 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2720 ::
  T_LState_2708 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612
d_certState_2720 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2722 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2724 ~v0 ~v1 = du_HasCast'45'LState_2724
du_HasCast'45'LState_2724 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2724
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
                                 (2708 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2172 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2708 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2128 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2708 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2274 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2722))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2742 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2742
  = C_LEDGER'45'V_2838 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2914 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612
d_certState_2746 ~v0 ~v1 v2 = du_certState_2746 v2
du_certState_2746 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612
du_certState_2746 v0
  = coe
      d_certState_2720 (coe d_'46'generalizedField'45's_9505 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2748 ~v0 ~v1 v2 = du_govSt_2748 v2
du_govSt_2748 ::
  T_GeneralizeTel_9517 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2748 v0
  = coe d_govSt_2718 (coe d_'46'generalizedField'45's_9505 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
d_utxoSt_2750 ~v0 ~v1 v2 = du_utxoSt_2750 v2
du_utxoSt_2750 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
du_utxoSt_2750 v0
  = coe d_utxoSt_2716 (coe d_'46'generalizedField'45's_9505 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1352]
d_txCerts_2770 ~v0 ~v1 v2 = du_txCerts_2770 v2
du_txCerts_2770 ::
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1352]
du_txCerts_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3482
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020]
d_txGovVotes_2778 ~v0 ~v1 v2 = du_txGovVotes_2778 v2
du_txGovVotes_2778 ::
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020]
du_txGovVotes_2778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 -> AgdaAny
d_txId_2780 ~v0 ~v1 v2 = du_txId_2780 v2
du_txId_2780 :: T_GeneralizeTel_9517 -> AgdaAny
du_txId_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3480
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2790 ~v0 ~v1 v2 = du_txWithdrawals_2790 v2
du_txWithdrawals_2790 ::
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3486
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180
d_enactState_2794 ~v0 ~v1 v2 = du_enactState_2794 v2
du_enactState_2794 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1180
du_enactState_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2956
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2796 ~v0 ~v1 v2 = du_pparams_2796 v2
du_pparams_2796 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2954
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 -> Maybe AgdaAny
d_ppolicy_2798 ~v0 ~v1 v2 = du_ppolicy_2798 v2
du_ppolicy_2798 :: T_GeneralizeTel_9517 -> Maybe AgdaAny
du_ppolicy_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2952
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 -> AgdaAny
d_slot_2800 ~v0 ~v1 v2 = du_slot_2800 v2
du_slot_2800 :: T_GeneralizeTel_9517 -> AgdaAny
du_slot_2800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2950
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1576
d_dState_2806 ~v0 ~v1 v2 = du_dState_2806 v2
du_dState_2806 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1576
du_dState_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1620
      (coe
         d_certState_2720 (coe d_'46'generalizedField'45's_9505 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2816 ~v0 ~v1 v2 = du_rewards_2816 v2
du_rewards_2816 ::
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1590
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1620
         (coe
            d_certState_2720 (coe d_'46'generalizedField'45's_9505 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2830 ~v0 ~v1 v2 = du_pparams_2830 v2
du_pparams_2830 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2954
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 -> AgdaAny
d_slot_2834 ~v0 ~v1 v2 = du_slot_2834 v2
du_slot_2834 :: T_GeneralizeTel_9517 -> AgdaAny
du_slot_2834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2950
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_9517 -> Integer
d_treasury_2836 ~v0 ~v1 v2 = du_treasury_2836 v2
du_treasury_2836 :: T_GeneralizeTel_9517 -> Integer
du_treasury_2836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2958
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612
d_certState_2842 ~v0 ~v1 v2 = du_certState_2842 v2
du_certState_2842 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612
du_certState_2842 v0
  = coe
      d_certState_2720 (coe d_'46'generalizedField'45's_14671 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_14679 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2844 ~v0 ~v1 v2 = du_govSt_2844 v2
du_govSt_2844 ::
  T_GeneralizeTel_14679 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2844 v0
  = coe d_govSt_2718 (coe d_'46'generalizedField'45's_14671 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
d_utxoSt_2846 ~v0 ~v1 v2 = du_utxoSt_2846 v2
du_utxoSt_2846 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
du_utxoSt_2846 v0
  = coe
      d_utxoSt_2716 (coe d_'46'generalizedField'45's_14671 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2906 ~v0 ~v1 v2 = du_pparams_2906 v2
du_pparams_2906 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2954
      (coe d_'46'generalizedField'45'Γ_14675 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_14679 -> AgdaAny
d_slot_2910 ~v0 ~v1 v2 = du_slot_2910 v2
du_slot_2910 :: T_GeneralizeTel_14679 -> AgdaAny
du_slot_2910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2950
      (coe d_'46'generalizedField'45'Γ_14675 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  T_GeneralizeTel_14679 -> Integer
d_treasury_2912 ~v0 ~v1 v2 = du_treasury_2912 v2
du_treasury_2912 :: T_GeneralizeTel_14679 -> Integer
du_treasury_2912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2958
      (coe d_'46'generalizedField'45'Γ_14675 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2938 ->
  T_LState_2708 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634] ->
  T_LState_2708 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2932 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9505 ::
  T_GeneralizeTel_9517 -> T_LState_2708
d_'46'generalizedField'45's_9505 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9507 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634
d_'46'generalizedField'45'tx_9507 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9509 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2938
d_'46'generalizedField'45'Γ_9509 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9511 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
d_'46'generalizedField'45'utxoSt''_9511 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9513 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612
d_'46'generalizedField'45'certState''_9513 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9515 ::
  T_GeneralizeTel_9517 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9515 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9517 a0 a1 = ()
data T_GeneralizeTel_9517
  = C_mkGeneralizeTel_9519 T_LState_2708
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2938
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1612
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14671 ::
  T_GeneralizeTel_14679 -> T_LState_2708
d_'46'generalizedField'45's_14671 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14673 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634
d_'46'generalizedField'45'tx_14673 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14675 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2938
d_'46'generalizedField'45'Γ_14675 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14677 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
d_'46'generalizedField'45'utxoSt''_14677 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14679 a0 a1 = ()
data T_GeneralizeTel_14679
  = C_mkGeneralizeTel_14681 T_LState_2708
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2938
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2504
