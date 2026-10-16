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
d_Tx_628 a0 = ()
-- _.epoch
d_epoch_712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_712 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1796
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
d_updateDeposits_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3446 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2200 v0 ~v1 = du_updateDeposits_2200 v0
du_updateDeposits_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3446 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2984
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2524
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510 ->
  Integer
d_donations_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2526
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510 ->
  Integer
d_fees_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2522 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2520 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2234 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1398 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2246 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2282 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2356 ~v0 ~v1 = du_HasCast'45'CertEnv_2356
du_HasCast'45'CertEnv_2356 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2356
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1622
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2566 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1582
d_dState_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1626 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2568 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1602
d_gState_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1630 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2570 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438
d_pState_2570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1628 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2692 ~v0 ~v1 = du_HasCast'45'LEnv_2692
du_HasCast'45'LEnv_2692 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2692
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_3034
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2694 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2698 ~v0 ~v1 = du_allColdCreds_2698
du_allColdCreds_2698 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2698
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3102
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2700 v0 ~v1 = du_rmOrphanDRepVotes_2700 v0
du_rmOrphanDRepVotes_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3084
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3446 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2702 ~v0 ~v1 = du_txgov_2702
du_txgov_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3446 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2702
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_3038
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_enactState_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2962
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pparams_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2960
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944 ->
  Maybe AgdaAny
d_ppolicy_2710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2958
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944 ->
  AgdaAny
d_slot_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2956
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944 ->
  Integer
d_treasury_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2964
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2716 a0 a1 = ()
data T_LState_2716
  = C_'10214'_'44'_'44'_'10215''737'_2730 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2724 ::
  T_LState_2716 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
d_utxoSt_2724 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2730 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2726 ::
  T_LState_2716 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2726 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2730 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2728 ::
  T_LState_2716 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
d_certState_2728 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2730 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2732 ~v0 ~v1 = du_HasCast'45'LState_2732
du_HasCast'45'LState_2732 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2732
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
                                 (2716 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2716 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2716 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2282 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2730))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2750 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2750
  = C_LEDGER'45'V_2846 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2922 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
d_certState_2754 ~v0 ~v1 v2 = du_certState_2754 v2
du_certState_2754 ::
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
du_certState_2754 v0
  = coe
      d_certState_2728 (coe d_'46'generalizedField'45's_9525 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2756 ~v0 ~v1 v2 = du_govSt_2756 v2
du_govSt_2756 ::
  T_GeneralizeTel_9537 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2756 v0
  = coe d_govSt_2726 (coe d_'46'generalizedField'45's_9525 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
d_utxoSt_2758 ~v0 ~v1 v2 = du_utxoSt_2758 v2
du_utxoSt_2758 ::
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
du_utxoSt_2758 v0
  = coe d_utxoSt_2724 (coe d_'46'generalizedField'45's_9525 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358]
d_txCerts_2778 ~v0 ~v1 v2 = du_txCerts_2778 v2
du_txCerts_2778 ::
  T_GeneralizeTel_9537 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358]
du_txCerts_2778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3658
         (coe d_'46'generalizedField'45'tx_9527 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026]
d_txGovVotes_2786 ~v0 ~v1 v2 = du_txGovVotes_2786 v2
du_txGovVotes_2786 ::
  T_GeneralizeTel_9537 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026]
du_txGovVotes_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3506
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3658
         (coe d_'46'generalizedField'45'tx_9527 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 -> AgdaAny
d_txId_2788 ~v0 ~v1 v2 = du_txId_2788 v2
du_txId_2788 :: T_GeneralizeTel_9537 -> AgdaAny
du_txId_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3492
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3658
         (coe d_'46'generalizedField'45'tx_9527 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2798 ~v0 ~v1 v2 = du_txWithdrawals_2798 v2
du_txWithdrawals_2798 ::
  T_GeneralizeTel_9537 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3498
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3658
         (coe d_'46'generalizedField'45'tx_9527 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_enactState_2802 ~v0 ~v1 v2 = du_enactState_2802 v2
du_enactState_2802 ::
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
du_enactState_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2962
      (coe d_'46'generalizedField'45'Γ_9529 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pparams_2804 ~v0 ~v1 v2 = du_pparams_2804 v2
du_pparams_2804 ::
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
du_pparams_2804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2960
      (coe d_'46'generalizedField'45'Γ_9529 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 -> Maybe AgdaAny
d_ppolicy_2806 ~v0 ~v1 v2 = du_ppolicy_2806 v2
du_ppolicy_2806 :: T_GeneralizeTel_9537 -> Maybe AgdaAny
du_ppolicy_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2958
      (coe d_'46'generalizedField'45'Γ_9529 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 -> AgdaAny
d_slot_2808 ~v0 ~v1 v2 = du_slot_2808 v2
du_slot_2808 :: T_GeneralizeTel_9537 -> AgdaAny
du_slot_2808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2956
      (coe d_'46'generalizedField'45'Γ_9529 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1582
d_dState_2814 ~v0 ~v1 v2 = du_dState_2814 v2
du_dState_2814 ::
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1582
du_dState_2814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1626
      (coe
         d_certState_2728 (coe d_'46'generalizedField'45's_9525 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2824 ~v0 ~v1 v2 = du_rewards_2824 v2
du_rewards_2824 ::
  T_GeneralizeTel_9537 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1596
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1626
         (coe
            d_certState_2728 (coe d_'46'generalizedField'45's_9525 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pparams_2838 ~v0 ~v1 v2 = du_pparams_2838 v2
du_pparams_2838 ::
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
du_pparams_2838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2960
      (coe d_'46'generalizedField'45'Γ_9529 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 -> AgdaAny
d_slot_2842 ~v0 ~v1 v2 = du_slot_2842 v2
du_slot_2842 :: T_GeneralizeTel_9537 -> AgdaAny
du_slot_2842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2956
      (coe d_'46'generalizedField'45'Γ_9529 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_9537 -> Integer
d_treasury_2844 ~v0 ~v1 v2 = du_treasury_2844 v2
du_treasury_2844 :: T_GeneralizeTel_9537 -> Integer
du_treasury_2844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2964
      (coe d_'46'generalizedField'45'Γ_9529 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_14707 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
d_certState_2850 ~v0 ~v1 v2 = du_certState_2850 v2
du_certState_2850 ::
  T_GeneralizeTel_14707 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
du_certState_2850 v0
  = coe
      d_certState_2728 (coe d_'46'generalizedField'45's_14699 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_14707 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2852 ~v0 ~v1 v2 = du_govSt_2852 v2
du_govSt_2852 ::
  T_GeneralizeTel_14707 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2852 v0
  = coe d_govSt_2726 (coe d_'46'generalizedField'45's_14699 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_14707 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
d_utxoSt_2854 ~v0 ~v1 v2 = du_utxoSt_2854 v2
du_utxoSt_2854 ::
  T_GeneralizeTel_14707 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
du_utxoSt_2854 v0
  = coe
      d_utxoSt_2724 (coe d_'46'generalizedField'45's_14699 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_14707 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pparams_2914 ~v0 ~v1 v2 = du_pparams_2914 v2
du_pparams_2914 ::
  T_GeneralizeTel_14707 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
du_pparams_2914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2960
      (coe d_'46'generalizedField'45'Γ_14703 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_14707 -> AgdaAny
d_slot_2918 ~v0 ~v1 v2 = du_slot_2918 v2
du_slot_2918 :: T_GeneralizeTel_14707 -> AgdaAny
du_slot_2918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2956
      (coe d_'46'generalizedField'45'Γ_14703 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  T_GeneralizeTel_14707 -> Integer
d_treasury_2920 ~v0 ~v1 v2 = du_treasury_2920 v2
du_treasury_2920 :: T_GeneralizeTel_14707 -> Integer
du_treasury_2920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2964
      (coe d_'46'generalizedField'45'Γ_14703 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2516 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944 ->
  T_LState_2716 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646] ->
  T_LState_2716 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2940 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9525 ::
  T_GeneralizeTel_9537 -> T_LState_2716
d_'46'generalizedField'45's_9525 v0
  = case coe v0 of
      C_mkGeneralizeTel_9539 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9527 ::
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646
d_'46'generalizedField'45'tx_9527 v0
  = case coe v0 of
      C_mkGeneralizeTel_9539 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9529 ::
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944
d_'46'generalizedField'45'Γ_9529 v0
  = case coe v0 of
      C_mkGeneralizeTel_9539 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9531 ::
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
d_'46'generalizedField'45'utxoSt''_9531 v0
  = case coe v0 of
      C_mkGeneralizeTel_9539 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9533 ::
  T_GeneralizeTel_9537 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
d_'46'generalizedField'45'certState''_9533 v0
  = case coe v0 of
      C_mkGeneralizeTel_9539 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9535 ::
  T_GeneralizeTel_9537 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9535 v0
  = case coe v0 of
      C_mkGeneralizeTel_9539 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9537 a0 a1 = ()
data T_GeneralizeTel_9537
  = C_mkGeneralizeTel_9539 T_LState_2716
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1618
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14699 ::
  T_GeneralizeTel_14707 -> T_LState_2716
d_'46'generalizedField'45's_14699 v0
  = case coe v0 of
      C_mkGeneralizeTel_14709 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14701 ::
  T_GeneralizeTel_14707 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646
d_'46'generalizedField'45'tx_14701 v0
  = case coe v0 of
      C_mkGeneralizeTel_14709 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14703 ::
  T_GeneralizeTel_14707 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944
d_'46'generalizedField'45'Γ_14703 v0
  = case coe v0 of
      C_mkGeneralizeTel_14709 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14705 ::
  T_GeneralizeTel_14707 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
d_'46'generalizedField'45'utxoSt''_14705 v0
  = case coe v0 of
      C_mkGeneralizeTel_14709 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14707 a0 a1 = ()
data T_GeneralizeTel_14707
  = C_mkGeneralizeTel_14709 T_LState_2716
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3646
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2944
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2510
