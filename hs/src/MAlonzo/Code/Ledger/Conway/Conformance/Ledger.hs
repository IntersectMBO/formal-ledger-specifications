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
d_Tx_626 a0 = ()
-- _.epoch
d_epoch_712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_712 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1798
         (coe v0))
-- _.Tx.body
d_body_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3446
d_body_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3658
      (coe v0)
-- _.Tx.isValid
d_isValid_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646 ->
  Bool
d_isValid_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3664
      (coe v0)
-- _.Tx.txAD
d_txAD_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646 ->
  Maybe AgdaAny
d_txAD_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3666
      (coe v0)
-- _.Tx.txsize
d_txsize_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646 ->
  Integer
d_txsize_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3662
      (coe v0)
-- _.Tx.wits
d_wits_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3624
d_wits_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3660
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2958 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2128 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  ()
d_GovState_2134 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2136 ~v0 ~v1 = du_HasCast'45'GovEnv_2136
du_HasCast'45'GovEnv_2136 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2136
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2990
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2178 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3446 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2198 v0 ~v1 = du_updateDeposits_2198 v0
du_updateDeposits_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3446 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2984
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2524
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510 ->
  Integer
d_donations_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2526
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510 ->
  Integer
d_fees_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2522 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2520 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2232 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1398 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2244 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2280 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2354 ~v0 ~v1 = du_HasCast'45'CertEnv_2354
du_HasCast'45'CertEnv_2354 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2354
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1622
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2564 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1582
d_dState_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1626 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2566 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1602
d_gState_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1630 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2568 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438
d_pState_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1628 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2690 ~v0 ~v1 = du_HasCast'45'LEnv_2690
du_HasCast'45'LEnv_2690 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2690
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_3034
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2692 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2696 ~v0 ~v1 = du_allColdCreds_2696
du_allColdCreds_2696 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2696
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3102
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2698 v0 ~v1 = du_rmOrphanDRepVotes_2698 v0
du_rmOrphanDRepVotes_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3084
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3446 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2700 ~v0 ~v1 = du_txgov_2700
du_txgov_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3446 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2700
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_3038
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_enactState_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2962
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2960
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944 ->
  Maybe AgdaAny
d_ppolicy_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2958
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944 ->
  AgdaAny
d_slot_2710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2956
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944 ->
  Integer
d_treasury_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2964
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2714 a0 a1 = ()
data T_LState_2714
  = C_'10214'_'44'_'44'_'10215''737'_2728 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2722 ::
  T_LState_2714 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
d_utxoSt_2722 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2728 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2724 ::
  T_LState_2714 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2724 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2728 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2726 ::
  T_LState_2714 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
d_certState_2726 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2728 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2730 ~v0 ~v1 = du_HasCast'45'LState_2730
du_HasCast'45'LState_2730 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2730
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
                                 (2714 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2178 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2714 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2134 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2714 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2280 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2728))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2748 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2748
  = C_LEDGER'45'V_2844 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2920 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
d_certState_2752 ~v0 ~v1 v2 = du_certState_2752 v2
du_certState_2752 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
du_certState_2752 v0
  = coe
      d_certState_2726 (coe d_'46'generalizedField'45's_9505 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2754 ~v0 ~v1 v2 = du_govSt_2754 v2
du_govSt_2754 ::
  T_GeneralizeTel_9517 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2754 v0
  = coe d_govSt_2724 (coe d_'46'generalizedField'45's_9505 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
d_utxoSt_2756 ~v0 ~v1 v2 = du_utxoSt_2756 v2
du_utxoSt_2756 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
du_utxoSt_2756 v0
  = coe d_utxoSt_2722 (coe d_'46'generalizedField'45's_9505 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358]
d_txCerts_2776 ~v0 ~v1 v2 = du_txCerts_2776 v2
du_txCerts_2776 ::
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358]
du_txCerts_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3658
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026]
d_txGovVotes_2784 ~v0 ~v1 v2 = du_txGovVotes_2784 v2
du_txGovVotes_2784 ::
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026]
du_txGovVotes_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3506
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3658
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 -> AgdaAny
d_txId_2786 ~v0 ~v1 v2 = du_txId_2786 v2
du_txId_2786 :: T_GeneralizeTel_9517 -> AgdaAny
du_txId_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3492
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3658
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2796 ~v0 ~v1 v2 = du_txWithdrawals_2796 v2
du_txWithdrawals_2796 ::
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3498
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3658
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_enactState_2800 ~v0 ~v1 v2 = du_enactState_2800 v2
du_enactState_2800 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
du_enactState_2800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2962
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2802 ~v0 ~v1 v2 = du_pparams_2802 v2
du_pparams_2802 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2960
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 -> Maybe AgdaAny
d_ppolicy_2804 ~v0 ~v1 v2 = du_ppolicy_2804 v2
du_ppolicy_2804 :: T_GeneralizeTel_9517 -> Maybe AgdaAny
du_ppolicy_2804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2958
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 -> AgdaAny
d_slot_2806 ~v0 ~v1 v2 = du_slot_2806 v2
du_slot_2806 :: T_GeneralizeTel_9517 -> AgdaAny
du_slot_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2956
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1582
d_dState_2812 ~v0 ~v1 v2 = du_dState_2812 v2
du_dState_2812 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1582
du_dState_2812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1626
      (coe
         d_certState_2726 (coe d_'46'generalizedField'45's_9505 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2822 ~v0 ~v1 v2 = du_rewards_2822 v2
du_rewards_2822 ::
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1596
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1626
         (coe
            d_certState_2726 (coe d_'46'generalizedField'45's_9505 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2836 ~v0 ~v1 v2 = du_pparams_2836 v2
du_pparams_2836 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2960
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 -> AgdaAny
d_slot_2840 ~v0 ~v1 v2 = du_slot_2840 v2
du_slot_2840 :: T_GeneralizeTel_9517 -> AgdaAny
du_slot_2840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2956
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9517 -> Integer
d_treasury_2842 ~v0 ~v1 v2 = du_treasury_2842 v2
du_treasury_2842 :: T_GeneralizeTel_9517 -> Integer
du_treasury_2842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2964
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
d_certState_2848 ~v0 ~v1 v2 = du_certState_2848 v2
du_certState_2848 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
du_certState_2848 v0
  = coe
      d_certState_2726 (coe d_'46'generalizedField'45's_14671 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_14679 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2850 ~v0 ~v1 v2 = du_govSt_2850 v2
du_govSt_2850 ::
  T_GeneralizeTel_14679 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2850 v0
  = coe d_govSt_2724 (coe d_'46'generalizedField'45's_14671 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
d_utxoSt_2852 ~v0 ~v1 v2 = du_utxoSt_2852 v2
du_utxoSt_2852 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
du_utxoSt_2852 v0
  = coe
      d_utxoSt_2722 (coe d_'46'generalizedField'45's_14671 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2912 ~v0 ~v1 v2 = du_pparams_2912 v2
du_pparams_2912 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2960
      (coe d_'46'generalizedField'45'Γ_14675 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_14679 -> AgdaAny
d_slot_2916 ~v0 ~v1 v2 = du_slot_2916 v2
du_slot_2916 :: T_GeneralizeTel_14679 -> AgdaAny
du_slot_2916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2956
      (coe d_'46'generalizedField'45'Γ_14675 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_14679 -> Integer
d_treasury_2918 ~v0 ~v1 v2 = du_treasury_2918 v2
du_treasury_2918 :: T_GeneralizeTel_14679 -> Integer
du_treasury_2918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2964
      (coe d_'46'generalizedField'45'Γ_14675 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944 ->
  T_LState_2714 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646] ->
  T_LState_2714 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2938 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9505 ::
  T_GeneralizeTel_9517 -> T_LState_2714
d_'46'generalizedField'45's_9505 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9507 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646
d_'46'generalizedField'45'tx_9507 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9509 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944
d_'46'generalizedField'45'Γ_9509 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9511 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
d_'46'generalizedField'45'utxoSt''_9511 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9513 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
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
  = C_mkGeneralizeTel_9519 T_LState_2714
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14671 ::
  T_GeneralizeTel_14679 -> T_LState_2714
d_'46'generalizedField'45's_14671 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14673 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646
d_'46'generalizedField'45'tx_14673 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14675 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944
d_'46'generalizedField'45'Γ_14675 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14677 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
d_'46'generalizedField'45'utxoSt''_14677 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14679 a0 a1 = ()
data T_GeneralizeTel_14679
  = C_mkGeneralizeTel_14681 T_LState_2714
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
