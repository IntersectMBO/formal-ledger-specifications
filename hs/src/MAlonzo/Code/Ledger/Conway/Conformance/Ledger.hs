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
d_Tx_590 a0 = ()
-- _.epoch
d_epoch_678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_678 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1736
         (coe v0))
-- _.Tx.body
d_body_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3358
d_body_1862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
      (coe v0)
-- _.Tx.isValid
d_isValid_1864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  Bool
d_isValid_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3556
      (coe v0)
-- _.Tx.txAD
d_txAD_1866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  Maybe AgdaAny
d_txAD_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3558
      (coe v0)
-- _.Tx.txsize
d_txsize_1868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  Integer
d_txsize_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3554
      (coe v0)
-- _.Tx.wits
d_wits_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3516
d_wits_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3552
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2894 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2054 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  ()
d_GovState_2060 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2062 ~v0 ~v1 = du_HasCast'45'GovEnv_2062
du_HasCast'45'GovEnv_2062 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2062
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2926
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2104 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2124 v0 ~v1 = du_updateDeposits_2124 v0
du_updateDeposits_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2914
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2454
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440 ->
  Integer
d_donations_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2456
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440 ->
  Integer
d_fees_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2452 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2450 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2158 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1360 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1324] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2170 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2212 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2282 ~v0 ~v1 = du_HasCast'45'CertEnv_2282
du_HasCast'45'CertEnv_2282 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2282
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1584
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2496 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1552
d_dState_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1596 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2498 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1572
d_gState_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1600 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2500 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1400
d_pState_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1598 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2622 ~v0 ~v1 = du_HasCast'45'LEnv_2622
du_HasCast'45'LEnv_2622 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2622
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2944
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2624 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2628 ~v0 ~v1 = du_allColdCreds_2628
du_allColdCreds_2628 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2628
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3012
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1428 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2630 v0 ~v1 = du_rmOrphanDRepVotes_2630 v0
du_rmOrphanDRepVotes_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1428 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2994
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3358 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2632 ~v0 ~v1 = du_txgov_2632
du_txgov_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3358 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2632
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2948
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2854 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_enactState_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2872
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2854 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2870
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2854 ->
  Maybe AgdaAny
d_ppolicy_2640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2868
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2854 ->
  AgdaAny
d_slot_2642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2866
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2854 ->
  Integer
d_treasury_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2874
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2646 a0 a1 = ()
data T_LState_2646
  = C_'10214'_'44'_'44'_'10215''737'_2660 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2654 ::
  T_LState_2646 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
d_utxoSt_2654 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2660 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2656 ::
  T_LState_2646 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2656 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2660 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2658 ::
  T_LState_2646 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588
d_certState_2658 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2660 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2662 ~v0 ~v1 = du_HasCast'45'LState_2662
du_HasCast'45'LState_2662 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2662
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
                                 (2646 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2104 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2646 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2060 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2646 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2212 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2660))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2680 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2680
  = C_LEDGER'45'V_2776 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2852 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588
d_certState_2684 ~v0 ~v1 v2 = du_certState_2684 v2
du_certState_2684 ::
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588
du_certState_2684 v0
  = coe
      d_certState_2658 (coe d_'46'generalizedField'45's_9369 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2686 ~v0 ~v1 v2 = du_govSt_2686 v2
du_govSt_2686 ::
  T_GeneralizeTel_9381 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2686 v0
  = coe d_govSt_2656 (coe d_'46'generalizedField'45's_9369 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
d_utxoSt_2688 ~v0 ~v1 v2 = du_utxoSt_2688 v2
du_utxoSt_2688 ::
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
du_utxoSt_2688 v0
  = coe d_utxoSt_2654 (coe d_'46'generalizedField'45's_9369 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1324]
d_txCerts_2708 ~v0 ~v1 v2 = du_txCerts_2708 v2
du_txCerts_2708 ::
  T_GeneralizeTel_9381 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1324]
du_txCerts_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3406
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
         (coe d_'46'generalizedField'45'tx_9371 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_938]
d_txGovVotes_2716 ~v0 ~v1 v2 = du_txGovVotes_2716 v2
du_txGovVotes_2716 ::
  T_GeneralizeTel_9381 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_938]
du_txGovVotes_2716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3418
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
         (coe d_'46'generalizedField'45'tx_9371 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 -> AgdaAny
d_txId_2718 ~v0 ~v1 v2 = du_txId_2718 v2
du_txId_2718 :: T_GeneralizeTel_9381 -> AgdaAny
du_txId_2718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3404
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
         (coe d_'46'generalizedField'45'tx_9371 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2728 ~v0 ~v1 v2 = du_txWithdrawals_2728 v2
du_txWithdrawals_2728 ::
  T_GeneralizeTel_9381 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3410
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3550
         (coe d_'46'generalizedField'45'tx_9371 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
d_enactState_2732 ~v0 ~v1 v2 = du_enactState_2732 v2
du_enactState_2732 ::
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1152
du_enactState_2732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2872
      (coe d_'46'generalizedField'45'Γ_9373 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2734 ~v0 ~v1 v2 = du_pparams_2734 v2
du_pparams_2734 ::
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2870
      (coe d_'46'generalizedField'45'Γ_9373 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 -> Maybe AgdaAny
d_ppolicy_2736 ~v0 ~v1 v2 = du_ppolicy_2736 v2
du_ppolicy_2736 :: T_GeneralizeTel_9381 -> Maybe AgdaAny
du_ppolicy_2736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2868
      (coe d_'46'generalizedField'45'Γ_9373 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 -> AgdaAny
d_slot_2738 ~v0 ~v1 v2 = du_slot_2738 v2
du_slot_2738 :: T_GeneralizeTel_9381 -> AgdaAny
du_slot_2738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2866
      (coe d_'46'generalizedField'45'Γ_9373 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1552
d_dState_2744 ~v0 ~v1 v2 = du_dState_2744 v2
du_dState_2744 ::
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1552
du_dState_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1596
      (coe
         d_certState_2658 (coe d_'46'generalizedField'45's_9369 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2754 ~v0 ~v1 v2 = du_rewards_2754 v2
du_rewards_2754 ::
  T_GeneralizeTel_9381 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1566
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1596
         (coe
            d_certState_2658 (coe d_'46'generalizedField'45's_9369 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2768 ~v0 ~v1 v2 = du_pparams_2768 v2
du_pparams_2768 ::
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2870
      (coe d_'46'generalizedField'45'Γ_9373 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 -> AgdaAny
d_slot_2772 ~v0 ~v1 v2 = du_slot_2772 v2
du_slot_2772 :: T_GeneralizeTel_9381 -> AgdaAny
du_slot_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2866
      (coe d_'46'generalizedField'45'Γ_9373 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_9381 -> Integer
d_treasury_2774 ~v0 ~v1 v2 = du_treasury_2774 v2
du_treasury_2774 :: T_GeneralizeTel_9381 -> Integer
du_treasury_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2874
      (coe d_'46'generalizedField'45'Γ_9373 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_14527 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588
d_certState_2780 ~v0 ~v1 v2 = du_certState_2780 v2
du_certState_2780 ::
  T_GeneralizeTel_14527 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588
du_certState_2780 v0
  = coe
      d_certState_2658 (coe d_'46'generalizedField'45's_14519 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_14527 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2782 ~v0 ~v1 v2 = du_govSt_2782 v2
du_govSt_2782 ::
  T_GeneralizeTel_14527 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2782 v0
  = coe d_govSt_2656 (coe d_'46'generalizedField'45's_14519 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_14527 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
d_utxoSt_2784 ~v0 ~v1 v2 = du_utxoSt_2784 v2
du_utxoSt_2784 ::
  T_GeneralizeTel_14527 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
du_utxoSt_2784 v0
  = coe
      d_utxoSt_2654 (coe d_'46'generalizedField'45's_14519 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_14527 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2844 ~v0 ~v1 v2 = du_pparams_2844 v2
du_pparams_2844 ::
  T_GeneralizeTel_14527 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2870
      (coe d_'46'generalizedField'45'Γ_14523 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_14527 -> AgdaAny
d_slot_2848 ~v0 ~v1 v2 = du_slot_2848 v2
du_slot_2848 :: T_GeneralizeTel_14527 -> AgdaAny
du_slot_2848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2866
      (coe d_'46'generalizedField'45'Γ_14523 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  T_GeneralizeTel_14527 -> Integer
d_treasury_2850 ~v0 ~v1 v2 = du_treasury_2850 v2
du_treasury_2850 :: T_GeneralizeTel_14527 -> Integer
du_treasury_2850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2874
      (coe d_'46'generalizedField'45'Γ_14523 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2444 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2854 ->
  T_LState_2646 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538] ->
  T_LState_2646 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2870 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9369 ::
  T_GeneralizeTel_9381 -> T_LState_2646
d_'46'generalizedField'45's_9369 v0
  = case coe v0 of
      C_mkGeneralizeTel_9383 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9371 ::
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538
d_'46'generalizedField'45'tx_9371 v0
  = case coe v0 of
      C_mkGeneralizeTel_9383 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9373 ::
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2854
d_'46'generalizedField'45'Γ_9373 v0
  = case coe v0 of
      C_mkGeneralizeTel_9383 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9375 ::
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
d_'46'generalizedField'45'utxoSt''_9375 v0
  = case coe v0 of
      C_mkGeneralizeTel_9383 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9377 ::
  T_GeneralizeTel_9381 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588
d_'46'generalizedField'45'certState''_9377 v0
  = case coe v0 of
      C_mkGeneralizeTel_9383 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9379 ::
  T_GeneralizeTel_9381 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9379 v0
  = case coe v0 of
      C_mkGeneralizeTel_9383 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9381 a0 a1 = ()
data T_GeneralizeTel_9381
  = C_mkGeneralizeTel_9383 T_LState_2646
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2854
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1588
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14519 ::
  T_GeneralizeTel_14527 -> T_LState_2646
d_'46'generalizedField'45's_14519 v0
  = case coe v0 of
      C_mkGeneralizeTel_14529 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14521 ::
  T_GeneralizeTel_14527 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538
d_'46'generalizedField'45'tx_14521 v0
  = case coe v0 of
      C_mkGeneralizeTel_14529 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14523 ::
  T_GeneralizeTel_14527 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2854
d_'46'generalizedField'45'Γ_14523 v0
  = case coe v0 of
      C_mkGeneralizeTel_14529 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14525 ::
  T_GeneralizeTel_14527 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
d_'46'generalizedField'45'utxoSt''_14525 v0
  = case coe v0 of
      C_mkGeneralizeTel_14529 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14527 a0 a1 = ()
data T_GeneralizeTel_14527
  = C_mkGeneralizeTel_14529 T_LState_2646
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3538
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2854
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2440
