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
d_epoch_690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_690 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- _.Tx.body
d_body_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
d_body_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
      (coe v0)
-- _.Tx.isValid
d_isValid_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Bool
d_isValid_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3612
      (coe v0)
-- _.Tx.txAD
d_txAD_1920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Maybe AgdaAny
d_txAD_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3614
      (coe v0)
-- _.Tx.txsize
d_txsize_1922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Integer
d_txsize_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3610
      (coe v0)
-- _.Tx.wits
d_wits_1924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572
d_wits_1924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3608
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2940 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2096 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  ()
d_GovState_2102 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2104 ~v0 ~v1 = du_HasCast'45'GovEnv_2104
du_HasCast'45'GovEnv_2104 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2104
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2972
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2146 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2166 v0 ~v1 = du_updateDeposits_2166 v0
du_updateDeposits_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2960
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2500
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  Integer
d_donations_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2502
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  Integer
d_fees_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2498 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2496 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2200 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2212 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2254 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2328 ~v0 ~v1 = du_HasCast'45'CertEnv_2328
du_HasCast'45'CertEnv_2328 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2328
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1602
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2542 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1570
d_dState_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1614 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2544 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1590
d_gState_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1618 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2546 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418
d_pState_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1616 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2668 ~v0 ~v1 = du_HasCast'45'LEnv_2668
du_HasCast'45'LEnv_2668 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2668
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2996
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2670 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2674 ~v0 ~v1 = du_allColdCreds_2674
du_allColdCreds_2674 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2674
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3064
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2676 v0 ~v1 = du_rmOrphanDRepVotes_2676 v0
du_rmOrphanDRepVotes_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3046
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2678 ~v0 ~v1 = du_txgov_2678
du_txgov_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2678
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_3000
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2906 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166
d_enactState_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2924
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2906 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2922
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2906 ->
  Maybe AgdaAny
d_ppolicy_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2920
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2906 ->
  AgdaAny
d_slot_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2918
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2906 ->
  Integer
d_treasury_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2926
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2692 a0 a1 = ()
data T_LState_2692
  = C_'10214'_'44'_'44'_'10215''737'_2706 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2700 ::
  T_LState_2692 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
d_utxoSt_2700 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2706 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2702 ::
  T_LState_2692 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2702 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2706 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2704 ::
  T_LState_2692 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606
d_certState_2704 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2706 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2708 ~v0 ~v1 = du_HasCast'45'LState_2708
du_HasCast'45'LState_2708 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2708
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
                                 (2692 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2146 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2692 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2102 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2692 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2254 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2706))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2726 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2726
  = C_LEDGER'45'V_2822 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2898 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606
d_certState_2730 ~v0 ~v1 v2 = du_certState_2730 v2
du_certState_2730 ::
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606
du_certState_2730 v0
  = coe
      d_certState_2704 (coe d_'46'generalizedField'45's_9455 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2732 ~v0 ~v1 v2 = du_govSt_2732 v2
du_govSt_2732 ::
  T_GeneralizeTel_9467 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2732 v0
  = coe d_govSt_2702 (coe d_'46'generalizedField'45's_9455 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
d_utxoSt_2734 ~v0 ~v1 v2 = du_utxoSt_2734 v2
du_utxoSt_2734 ::
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
du_utxoSt_2734 v0
  = coe d_utxoSt_2700 (coe d_'46'generalizedField'45's_9455 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
d_txCerts_2754 ~v0 ~v1 v2 = du_txCerts_2754 v2
du_txCerts_2754 ::
  T_GeneralizeTel_9467 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
du_txCerts_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
         (coe d_'46'generalizedField'45'tx_9457 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006]
d_txGovVotes_2762 ~v0 ~v1 v2 = du_txGovVotes_2762 v2
du_txGovVotes_2762 ::
  T_GeneralizeTel_9467 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006]
du_txGovVotes_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3474
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
         (coe d_'46'generalizedField'45'tx_9457 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 -> AgdaAny
d_txId_2764 ~v0 ~v1 v2 = du_txId_2764 v2
du_txId_2764 :: T_GeneralizeTel_9467 -> AgdaAny
du_txId_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3460
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
         (coe d_'46'generalizedField'45'tx_9457 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2774 ~v0 ~v1 v2 = du_txWithdrawals_2774 v2
du_txWithdrawals_2774 ::
  T_GeneralizeTel_9467 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3466
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
         (coe d_'46'generalizedField'45'tx_9457 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166
d_enactState_2778 ~v0 ~v1 v2 = du_enactState_2778 v2
du_enactState_2778 ::
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1166
du_enactState_2778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2924
      (coe d_'46'generalizedField'45'Γ_9459 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2780 ~v0 ~v1 v2 = du_pparams_2780 v2
du_pparams_2780 ::
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2922
      (coe d_'46'generalizedField'45'Γ_9459 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 -> Maybe AgdaAny
d_ppolicy_2782 ~v0 ~v1 v2 = du_ppolicy_2782 v2
du_ppolicy_2782 :: T_GeneralizeTel_9467 -> Maybe AgdaAny
du_ppolicy_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2920
      (coe d_'46'generalizedField'45'Γ_9459 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 -> AgdaAny
d_slot_2784 ~v0 ~v1 v2 = du_slot_2784 v2
du_slot_2784 :: T_GeneralizeTel_9467 -> AgdaAny
du_slot_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2918
      (coe d_'46'generalizedField'45'Γ_9459 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1570
d_dState_2790 ~v0 ~v1 v2 = du_dState_2790 v2
du_dState_2790 ::
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1570
du_dState_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1614
      (coe
         d_certState_2704 (coe d_'46'generalizedField'45's_9455 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2800 ~v0 ~v1 v2 = du_rewards_2800 v2
du_rewards_2800 ::
  T_GeneralizeTel_9467 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1584
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1614
         (coe
            d_certState_2704 (coe d_'46'generalizedField'45's_9455 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2814 ~v0 ~v1 v2 = du_pparams_2814 v2
du_pparams_2814 ::
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2922
      (coe d_'46'generalizedField'45'Γ_9459 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 -> AgdaAny
d_slot_2818 ~v0 ~v1 v2 = du_slot_2818 v2
du_slot_2818 :: T_GeneralizeTel_9467 -> AgdaAny
du_slot_2818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2918
      (coe d_'46'generalizedField'45'Γ_9459 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_9467 -> Integer
d_treasury_2820 ~v0 ~v1 v2 = du_treasury_2820 v2
du_treasury_2820 :: T_GeneralizeTel_9467 -> Integer
du_treasury_2820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2926
      (coe d_'46'generalizedField'45'Γ_9459 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_14629 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606
d_certState_2826 ~v0 ~v1 v2 = du_certState_2826 v2
du_certState_2826 ::
  T_GeneralizeTel_14629 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606
du_certState_2826 v0
  = coe
      d_certState_2704 (coe d_'46'generalizedField'45's_14621 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_14629 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2828 ~v0 ~v1 v2 = du_govSt_2828 v2
du_govSt_2828 ::
  T_GeneralizeTel_14629 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2828 v0
  = coe d_govSt_2702 (coe d_'46'generalizedField'45's_14621 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_14629 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
d_utxoSt_2830 ~v0 ~v1 v2 = du_utxoSt_2830 v2
du_utxoSt_2830 ::
  T_GeneralizeTel_14629 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
du_utxoSt_2830 v0
  = coe
      d_utxoSt_2700 (coe d_'46'generalizedField'45's_14621 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_14629 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2890 ~v0 ~v1 v2 = du_pparams_2890 v2
du_pparams_2890 ::
  T_GeneralizeTel_14629 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2922
      (coe d_'46'generalizedField'45'Γ_14625 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_14629 -> AgdaAny
d_slot_2894 ~v0 ~v1 v2 = du_slot_2894 v2
du_slot_2894 :: T_GeneralizeTel_14629 -> AgdaAny
du_slot_2894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2918
      (coe d_'46'generalizedField'45'Γ_14625 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  T_GeneralizeTel_14629 -> Integer
d_treasury_2896 ~v0 ~v1 v2 = du_treasury_2896 v2
du_treasury_2896 :: T_GeneralizeTel_14629 -> Integer
du_treasury_2896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2926
      (coe d_'46'generalizedField'45'Γ_14625 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2906 ->
  T_LState_2692 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594] ->
  T_LState_2692 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2916 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9455 ::
  T_GeneralizeTel_9467 -> T_LState_2692
d_'46'generalizedField'45's_9455 v0
  = case coe v0 of
      C_mkGeneralizeTel_9469 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9457 ::
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594
d_'46'generalizedField'45'tx_9457 v0
  = case coe v0 of
      C_mkGeneralizeTel_9469 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9459 ::
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2906
d_'46'generalizedField'45'Γ_9459 v0
  = case coe v0 of
      C_mkGeneralizeTel_9469 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9461 ::
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
d_'46'generalizedField'45'utxoSt''_9461 v0
  = case coe v0 of
      C_mkGeneralizeTel_9469 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9463 ::
  T_GeneralizeTel_9467 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606
d_'46'generalizedField'45'certState''_9463 v0
  = case coe v0 of
      C_mkGeneralizeTel_9469 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9465 ::
  T_GeneralizeTel_9467 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9465 v0
  = case coe v0 of
      C_mkGeneralizeTel_9469 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9467 a0 a1 = ()
data T_GeneralizeTel_9467
  = C_mkGeneralizeTel_9469 T_LState_2692
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2906
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1606
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14621 ::
  T_GeneralizeTel_14629 -> T_LState_2692
d_'46'generalizedField'45's_14621 v0
  = case coe v0 of
      C_mkGeneralizeTel_14631 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14623 ::
  T_GeneralizeTel_14629 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594
d_'46'generalizedField'45'tx_14623 v0
  = case coe v0 of
      C_mkGeneralizeTel_14631 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14625 ::
  T_GeneralizeTel_14629 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2906
d_'46'generalizedField'45'Γ_14625 v0
  = case coe v0 of
      C_mkGeneralizeTel_14631 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14627 ::
  T_GeneralizeTel_14629 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
d_'46'generalizedField'45'utxoSt''_14627 v0
  = case coe v0 of
      C_mkGeneralizeTel_14631 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14629 a0 a1 = ()
data T_GeneralizeTel_14629
  = C_mkGeneralizeTel_14631 T_LState_2692
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2906
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2486
