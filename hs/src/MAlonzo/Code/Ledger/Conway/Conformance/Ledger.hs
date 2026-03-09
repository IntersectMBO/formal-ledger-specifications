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
d_Tx_606 a0 = ()
-- _.epoch
d_epoch_694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_694 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1760
         (coe v0))
-- _.Tx.body
d_body_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422
d_body_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
      (coe v0)
-- _.Tx.isValid
d_isValid_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Bool
d_isValid_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3620
      (coe v0)
-- _.Tx.txAD
d_txAD_1912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Maybe AgdaAny
d_txAD_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3622
      (coe v0)
-- _.Tx.txsize
d_txsize_1914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  Integer
d_txsize_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3618
      (coe v0)
-- _.Tx.wits
d_wits_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3580
d_wits_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3616
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2946 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2102 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  ()
d_GovState_2108 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2110 ~v0 ~v1 = du_HasCast'45'GovEnv_2110
du_HasCast'45'GovEnv_2110 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2110
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2978
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2152 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2172 v0 ~v1 = du_updateDeposits_2172 v0
du_updateDeposits_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2966
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2506
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  Integer
d_donations_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2508
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  Integer
d_fees_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2504 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2502 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2206 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1398 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2218 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2260 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2334 ~v0 ~v1 = du_HasCast'45'CertEnv_2334
du_HasCast'45'CertEnv_2334 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2334
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1622
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2548 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1590
d_dState_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1634 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2550 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1610
d_gState_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1638 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2552 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1438
d_pState_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1636 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2674 ~v0 ~v1 = du_HasCast'45'LEnv_2674
du_HasCast'45'LEnv_2674 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2674
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_3002
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2676 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2680 ~v0 ~v1 = du_allColdCreds_2680
du_allColdCreds_2680 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2680
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3070
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2682 v0 ~v1 = du_rmOrphanDRepVotes_2682 v0
du_rmOrphanDRepVotes_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1466 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3052
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2684 ~v0 ~v1 = du_txgov_2684
du_txgov_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3422 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2684
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_3006
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2912 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_enactState_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2930
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2912 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_pparams_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2928
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2912 ->
  Maybe AgdaAny
d_ppolicy_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2926
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2912 ->
  AgdaAny
d_slot_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2924
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2912 ->
  Integer
d_treasury_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2932
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2698 a0 a1 = ()
data T_LState_2698
  = C_'10214'_'44'_'44'_'10215''737'_2712 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2706 ::
  T_LState_2698 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_utxoSt_2706 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2712 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2708 ::
  T_LState_2698 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2708 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2712 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2710 ::
  T_LState_2698 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626
d_certState_2710 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2712 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2714 ~v0 ~v1 = du_HasCast'45'LState_2714
du_HasCast'45'LState_2714 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2714
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
                                 (2698 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2152 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2698 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2108 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2698 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2260 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2712))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2732 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2732
  = C_LEDGER'45'V_2828 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2904 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626
d_certState_2736 ~v0 ~v1 v2 = du_certState_2736 v2
du_certState_2736 ::
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626
du_certState_2736 v0
  = coe
      d_certState_2710 (coe d_'46'generalizedField'45's_9557 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2738 ~v0 ~v1 v2 = du_govSt_2738 v2
du_govSt_2738 ::
  T_GeneralizeTel_9569 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2738 v0
  = coe d_govSt_2708 (coe d_'46'generalizedField'45's_9557 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_utxoSt_2740 ~v0 ~v1 v2 = du_utxoSt_2740 v2
du_utxoSt_2740 ::
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
du_utxoSt_2740 v0
  = coe d_utxoSt_2706 (coe d_'46'generalizedField'45's_9557 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358]
d_txCerts_2760 ~v0 ~v1 v2 = du_txCerts_2760 v2
du_txCerts_2760 ::
  T_GeneralizeTel_9569 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1358]
du_txCerts_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3470
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_9559 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026]
d_txGovVotes_2768 ~v0 ~v1 v2 = du_txGovVotes_2768 v2
du_txGovVotes_2768 ::
  T_GeneralizeTel_9569 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1026]
du_txGovVotes_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3482
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_9559 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 -> AgdaAny
d_txId_2770 ~v0 ~v1 v2 = du_txId_2770 v2
du_txId_2770 :: T_GeneralizeTel_9569 -> AgdaAny
du_txId_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3468
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_9559 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2780 ~v0 ~v1 v2 = du_txWithdrawals_2780 v2
du_txWithdrawals_2780 ::
  T_GeneralizeTel_9569 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3474
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3614
         (coe d_'46'generalizedField'45'tx_9559 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
d_enactState_2784 ~v0 ~v1 v2 = du_enactState_2784 v2
du_enactState_2784 ::
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1186
du_enactState_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2930
      (coe d_'46'generalizedField'45'Γ_9561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_pparams_2786 ~v0 ~v1 v2 = du_pparams_2786 v2
du_pparams_2786 ::
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
du_pparams_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2928
      (coe d_'46'generalizedField'45'Γ_9561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 -> Maybe AgdaAny
d_ppolicy_2788 ~v0 ~v1 v2 = du_ppolicy_2788 v2
du_ppolicy_2788 :: T_GeneralizeTel_9569 -> Maybe AgdaAny
du_ppolicy_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2926
      (coe d_'46'generalizedField'45'Γ_9561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 -> AgdaAny
d_slot_2790 ~v0 ~v1 v2 = du_slot_2790 v2
du_slot_2790 :: T_GeneralizeTel_9569 -> AgdaAny
du_slot_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2924
      (coe d_'46'generalizedField'45'Γ_9561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1590
d_dState_2796 ~v0 ~v1 v2 = du_dState_2796 v2
du_dState_2796 ::
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1590
du_dState_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1634
      (coe
         d_certState_2710 (coe d_'46'generalizedField'45's_9557 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2806 ~v0 ~v1 v2 = du_rewards_2806 v2
du_rewards_2806 ::
  T_GeneralizeTel_9569 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1604
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1634
         (coe
            d_certState_2710 (coe d_'46'generalizedField'45's_9557 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_pparams_2820 ~v0 ~v1 v2 = du_pparams_2820 v2
du_pparams_2820 ::
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
du_pparams_2820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2928
      (coe d_'46'generalizedField'45'Γ_9561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 -> AgdaAny
d_slot_2824 ~v0 ~v1 v2 = du_slot_2824 v2
du_slot_2824 :: T_GeneralizeTel_9569 -> AgdaAny
du_slot_2824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2924
      (coe d_'46'generalizedField'45'Γ_9561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_9569 -> Integer
d_treasury_2826 ~v0 ~v1 v2 = du_treasury_2826 v2
du_treasury_2826 :: T_GeneralizeTel_9569 -> Integer
du_treasury_2826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2932
      (coe d_'46'generalizedField'45'Γ_9561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_14731 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626
d_certState_2832 ~v0 ~v1 v2 = du_certState_2832 v2
du_certState_2832 ::
  T_GeneralizeTel_14731 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626
du_certState_2832 v0
  = coe
      d_certState_2710 (coe d_'46'generalizedField'45's_14723 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_14731 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2834 ~v0 ~v1 v2 = du_govSt_2834 v2
du_govSt_2834 ::
  T_GeneralizeTel_14731 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2834 v0
  = coe d_govSt_2708 (coe d_'46'generalizedField'45's_14723 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_14731 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_utxoSt_2836 ~v0 ~v1 v2 = du_utxoSt_2836 v2
du_utxoSt_2836 ::
  T_GeneralizeTel_14731 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
du_utxoSt_2836 v0
  = coe
      d_utxoSt_2706 (coe d_'46'generalizedField'45's_14723 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_14731 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
d_pparams_2896 ~v0 ~v1 v2 = du_pparams_2896 v2
du_pparams_2896 ::
  T_GeneralizeTel_14731 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_294
du_pparams_2896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2928
      (coe d_'46'generalizedField'45'Γ_14727 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_14731 -> AgdaAny
d_slot_2900 ~v0 ~v1 v2 = du_slot_2900 v2
du_slot_2900 :: T_GeneralizeTel_14731 -> AgdaAny
du_slot_2900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2924
      (coe d_'46'generalizedField'45'Γ_14727 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  T_GeneralizeTel_14731 -> Integer
d_treasury_2902 ~v0 ~v1 v2 = du_treasury_2902 v2
du_treasury_2902 :: T_GeneralizeTel_14731 -> Integer
du_treasury_2902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2932
      (coe d_'46'generalizedField'45'Γ_14727 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2496 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2912 ->
  T_LState_2698 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602] ->
  T_LState_2698 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2922 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9557 ::
  T_GeneralizeTel_9569 -> T_LState_2698
d_'46'generalizedField'45's_9557 v0
  = case coe v0 of
      C_mkGeneralizeTel_9571 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9559 ::
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602
d_'46'generalizedField'45'tx_9559 v0
  = case coe v0 of
      C_mkGeneralizeTel_9571 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9561 ::
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2912
d_'46'generalizedField'45'Γ_9561 v0
  = case coe v0 of
      C_mkGeneralizeTel_9571 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9563 ::
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_'46'generalizedField'45'utxoSt''_9563 v0
  = case coe v0 of
      C_mkGeneralizeTel_9571 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9565 ::
  T_GeneralizeTel_9569 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626
d_'46'generalizedField'45'certState''_9565 v0
  = case coe v0 of
      C_mkGeneralizeTel_9571 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9567 ::
  T_GeneralizeTel_9569 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9567 v0
  = case coe v0 of
      C_mkGeneralizeTel_9571 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9569 a0 a1 = ()
data T_GeneralizeTel_9569
  = C_mkGeneralizeTel_9571 T_LState_2698
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2912
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1626
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14723 ::
  T_GeneralizeTel_14731 -> T_LState_2698
d_'46'generalizedField'45's_14723 v0
  = case coe v0 of
      C_mkGeneralizeTel_14733 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14725 ::
  T_GeneralizeTel_14731 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602
d_'46'generalizedField'45'tx_14725 v0
  = case coe v0 of
      C_mkGeneralizeTel_14733 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14727 ::
  T_GeneralizeTel_14731 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2912
d_'46'generalizedField'45'Γ_14727 v0
  = case coe v0 of
      C_mkGeneralizeTel_14733 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14729 ::
  T_GeneralizeTel_14731 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
d_'46'generalizedField'45'utxoSt''_14729 v0
  = case coe v0 of
      C_mkGeneralizeTel_14733 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14731 a0 a1 = ()
data T_GeneralizeTel_14731
  = C_mkGeneralizeTel_14733 T_LState_2698
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3602
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2912
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2492
