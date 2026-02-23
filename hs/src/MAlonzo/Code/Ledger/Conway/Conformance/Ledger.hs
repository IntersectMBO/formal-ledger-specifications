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
d_Tx_602 a0 = ()
-- _.epoch
d_epoch_690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_690 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1742
         (coe v0))
-- _.Tx.body
d_body_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3386
d_body_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3578
      (coe v0)
-- _.Tx.isValid
d_isValid_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  Bool
d_isValid_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3584
      (coe v0)
-- _.Tx.txAD
d_txAD_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  Maybe AgdaAny
d_txAD_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3586
      (coe v0)
-- _.Tx.txsize
d_txsize_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  Integer
d_txsize_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3582
      (coe v0)
-- _.Tx.wits
d_wits_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3544
d_wits_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3580
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2928 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2084 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  ()
d_GovState_2090 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2092 ~v0 ~v1 = du_HasCast'45'GovEnv_2092
du_HasCast'45'GovEnv_2092 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2092
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2960
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2134 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3386 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2154 v0 ~v1 = du_updateDeposits_2154 v0
du_updateDeposits_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3386 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2948
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2488
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474 ->
  Integer
d_donations_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2490
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474 ->
  Integer
d_fees_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2486 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2484 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2188 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1380 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1340] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2200 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2242 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2316 ~v0 ~v1 = du_HasCast'45'CertEnv_2316
du_HasCast'45'CertEnv_2316 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2316
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1604
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2530 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1572
d_dState_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1616 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2532 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1592
d_gState_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1620 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2534 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1420
d_pState_2534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1618 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2656 ~v0 ~v1 = du_HasCast'45'LEnv_2656
du_HasCast'45'LEnv_2656 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2656
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2978
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2658 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2662 ~v0 ~v1 = du_allColdCreds_2662
du_allColdCreds_2662 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2662
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3046
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1448 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2664 v0 ~v1 = du_rmOrphanDRepVotes_2664 v0
du_rmOrphanDRepVotes_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1448 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3028
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3386 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2666 ~v0 ~v1 = du_txgov_2666
du_txgov_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3386 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2666
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2982
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2888 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168
d_enactState_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2906
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2888 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
d_pparams_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2904
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2888 ->
  Maybe AgdaAny
d_ppolicy_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2902
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2888 ->
  AgdaAny
d_slot_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2900
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2888 ->
  Integer
d_treasury_2678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2908
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2680 a0 a1 = ()
data T_LState_2680
  = C_'10214'_'44'_'44'_'10215''737'_2694 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2688 ::
  T_LState_2680 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
d_utxoSt_2688 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2694 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2690 ::
  T_LState_2680 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2690 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2694 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2692 ::
  T_LState_2680 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
d_certState_2692 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2694 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2696 ~v0 ~v1 = du_HasCast'45'LState_2696
du_HasCast'45'LState_2696 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2696
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
                                 (2680 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2134 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2680 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2090 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2680 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2242 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2694))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2714 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2714
  = C_LEDGER'45'V_2810 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2886 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
d_certState_2718 ~v0 ~v1 v2 = du_certState_2718 v2
du_certState_2718 ::
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
du_certState_2718 v0
  = coe
      d_certState_2692 (coe d_'46'generalizedField'45's_9459 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2720 ~v0 ~v1 v2 = du_govSt_2720 v2
du_govSt_2720 ::
  T_GeneralizeTel_9471 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2720 v0
  = coe d_govSt_2690 (coe d_'46'generalizedField'45's_9459 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
d_utxoSt_2722 ~v0 ~v1 v2 = du_utxoSt_2722 v2
du_utxoSt_2722 ::
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
du_utxoSt_2722 v0
  = coe d_utxoSt_2688 (coe d_'46'generalizedField'45's_9459 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1340]
d_txCerts_2742 ~v0 ~v1 v2 = du_txCerts_2742 v2
du_txCerts_2742 ::
  T_GeneralizeTel_9471 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1340]
du_txCerts_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3434
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3578
         (coe d_'46'generalizedField'45'tx_9461 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1008]
d_txGovVotes_2750 ~v0 ~v1 v2 = du_txGovVotes_2750 v2
du_txGovVotes_2750 ::
  T_GeneralizeTel_9471 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1008]
du_txGovVotes_2750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3446
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3578
         (coe d_'46'generalizedField'45'tx_9461 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 -> AgdaAny
d_txId_2752 ~v0 ~v1 v2 = du_txId_2752 v2
du_txId_2752 :: T_GeneralizeTel_9471 -> AgdaAny
du_txId_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3432
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3578
         (coe d_'46'generalizedField'45'tx_9461 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2762 ~v0 ~v1 v2 = du_txWithdrawals_2762 v2
du_txWithdrawals_2762 ::
  T_GeneralizeTel_9471 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3438
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3578
         (coe d_'46'generalizedField'45'tx_9461 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168
d_enactState_2766 ~v0 ~v1 v2 = du_enactState_2766 v2
du_enactState_2766 ::
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168
du_enactState_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2906
      (coe d_'46'generalizedField'45'Γ_9463 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
d_pparams_2768 ~v0 ~v1 v2 = du_pparams_2768 v2
du_pparams_2768 ::
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
du_pparams_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2904
      (coe d_'46'generalizedField'45'Γ_9463 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 -> Maybe AgdaAny
d_ppolicy_2770 ~v0 ~v1 v2 = du_ppolicy_2770 v2
du_ppolicy_2770 :: T_GeneralizeTel_9471 -> Maybe AgdaAny
du_ppolicy_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2902
      (coe d_'46'generalizedField'45'Γ_9463 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 -> AgdaAny
d_slot_2772 ~v0 ~v1 v2 = du_slot_2772 v2
du_slot_2772 :: T_GeneralizeTel_9471 -> AgdaAny
du_slot_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2900
      (coe d_'46'generalizedField'45'Γ_9463 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1572
d_dState_2778 ~v0 ~v1 v2 = du_dState_2778 v2
du_dState_2778 ::
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1572
du_dState_2778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1616
      (coe
         d_certState_2692 (coe d_'46'generalizedField'45's_9459 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2788 ~v0 ~v1 v2 = du_rewards_2788 v2
du_rewards_2788 ::
  T_GeneralizeTel_9471 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1586
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1616
         (coe
            d_certState_2692 (coe d_'46'generalizedField'45's_9459 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
d_pparams_2802 ~v0 ~v1 v2 = du_pparams_2802 v2
du_pparams_2802 ::
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
du_pparams_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2904
      (coe d_'46'generalizedField'45'Γ_9463 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 -> AgdaAny
d_slot_2806 ~v0 ~v1 v2 = du_slot_2806 v2
du_slot_2806 :: T_GeneralizeTel_9471 -> AgdaAny
du_slot_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2900
      (coe d_'46'generalizedField'45'Γ_9463 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_9471 -> Integer
d_treasury_2808 ~v0 ~v1 v2 = du_treasury_2808 v2
du_treasury_2808 :: T_GeneralizeTel_9471 -> Integer
du_treasury_2808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2908
      (coe d_'46'generalizedField'45'Γ_9463 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_14633 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
d_certState_2814 ~v0 ~v1 v2 = du_certState_2814 v2
du_certState_2814 ::
  T_GeneralizeTel_14633 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
du_certState_2814 v0
  = coe
      d_certState_2692 (coe d_'46'generalizedField'45's_14625 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_14633 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2816 ~v0 ~v1 v2 = du_govSt_2816 v2
du_govSt_2816 ::
  T_GeneralizeTel_14633 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2816 v0
  = coe d_govSt_2690 (coe d_'46'generalizedField'45's_14625 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_14633 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
d_utxoSt_2818 ~v0 ~v1 v2 = du_utxoSt_2818 v2
du_utxoSt_2818 ::
  T_GeneralizeTel_14633 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
du_utxoSt_2818 v0
  = coe
      d_utxoSt_2688 (coe d_'46'generalizedField'45's_14625 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_14633 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
d_pparams_2878 ~v0 ~v1 v2 = du_pparams_2878 v2
du_pparams_2878 ::
  T_GeneralizeTel_14633 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
du_pparams_2878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2904
      (coe d_'46'generalizedField'45'Γ_14629 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_14633 -> AgdaAny
d_slot_2882 ~v0 ~v1 v2 = du_slot_2882 v2
du_slot_2882 :: T_GeneralizeTel_14633 -> AgdaAny
du_slot_2882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2900
      (coe d_'46'generalizedField'45'Γ_14629 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  T_GeneralizeTel_14633 -> Integer
d_treasury_2884 ~v0 ~v1 v2 = du_treasury_2884 v2
du_treasury_2884 :: T_GeneralizeTel_14633 -> Integer
du_treasury_2884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2908
      (coe d_'46'generalizedField'45'Γ_14629 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2478 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2888 ->
  T_LState_2680 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566] ->
  T_LState_2680 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2904 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9459 ::
  T_GeneralizeTel_9471 -> T_LState_2680
d_'46'generalizedField'45's_9459 v0
  = case coe v0 of
      C_mkGeneralizeTel_9473 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9461 ::
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566
d_'46'generalizedField'45'tx_9461 v0
  = case coe v0 of
      C_mkGeneralizeTel_9473 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9463 ::
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2888
d_'46'generalizedField'45'Γ_9463 v0
  = case coe v0 of
      C_mkGeneralizeTel_9473 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9465 ::
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
d_'46'generalizedField'45'utxoSt''_9465 v0
  = case coe v0 of
      C_mkGeneralizeTel_9473 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9467 ::
  T_GeneralizeTel_9471 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
d_'46'generalizedField'45'certState''_9467 v0
  = case coe v0 of
      C_mkGeneralizeTel_9473 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9469 ::
  T_GeneralizeTel_9471 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9469 v0
  = case coe v0 of
      C_mkGeneralizeTel_9473 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9471 a0 a1 = ()
data T_GeneralizeTel_9471
  = C_mkGeneralizeTel_9473 T_LState_2680
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2888
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14625 ::
  T_GeneralizeTel_14633 -> T_LState_2680
d_'46'generalizedField'45's_14625 v0
  = case coe v0 of
      C_mkGeneralizeTel_14635 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14627 ::
  T_GeneralizeTel_14633 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566
d_'46'generalizedField'45'tx_14627 v0
  = case coe v0 of
      C_mkGeneralizeTel_14635 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14629 ::
  T_GeneralizeTel_14633 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2888
d_'46'generalizedField'45'Γ_14629 v0
  = case coe v0 of
      C_mkGeneralizeTel_14635 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14631 ::
  T_GeneralizeTel_14633 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
d_'46'generalizedField'45'utxoSt''_14631 v0
  = case coe v0 of
      C_mkGeneralizeTel_14635 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14633 a0 a1 = ()
data T_GeneralizeTel_14633
  = C_mkGeneralizeTel_14635 T_LState_2680
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3566
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2888
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2474
