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
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3562 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3382
d_body_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3574
      (coe v0)
-- _.Tx.isValid
d_isValid_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3562 ->
  Bool
d_isValid_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3580
      (coe v0)
-- _.Tx.txAD
d_txAD_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3562 ->
  Maybe AgdaAny
d_txAD_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3582
      (coe v0)
-- _.Tx.txsize
d_txsize_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3562 ->
  Integer
d_txsize_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3578
      (coe v0)
-- _.Tx.wits
d_wits_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3562 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3540
d_wits_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3576
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2924 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2084 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  ()
d_GovState_2090 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2092 ~v0 ~v1 = du_HasCast'45'GovEnv_2092
du_HasCast'45'GovEnv_2092 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2092
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2956
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2134 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2154 v0 ~v1 = du_updateDeposits_2154 v0
du_updateDeposits_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2944
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2484
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470 ->
  Integer
d_donations_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2486
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470 ->
  Integer
d_fees_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2482 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2480 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2188 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1376 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1340] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2200 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2242 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2312 ~v0 ~v1 = du_HasCast'45'CertEnv_2312
du_HasCast'45'CertEnv_2312 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2312
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1600
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2526 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1568
d_dState_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1612 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2528 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1588
d_gState_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1616 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2530 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1416
d_pState_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1614 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2652 ~v0 ~v1 = du_HasCast'45'LEnv_2652
du_HasCast'45'LEnv_2652 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2652
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2974
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2654 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2658 ~v0 ~v1 = du_allColdCreds_2658
du_allColdCreds_2658 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2658
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3042
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1444 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2660 v0 ~v1 = du_rmOrphanDRepVotes_2660 v0
du_rmOrphanDRepVotes_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1444 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3024
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3382 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2662 ~v0 ~v1 = du_txgov_2662
du_txgov_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3382 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2662
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2978
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2884 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168
d_enactState_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2902
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2884 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
d_pparams_2668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2900
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2884 ->
  Maybe AgdaAny
d_ppolicy_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2898
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2884 ->
  AgdaAny
d_slot_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2896
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2884 ->
  Integer
d_treasury_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2904
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2676 a0 a1 = ()
data T_LState_2676
  = C_'10214'_'44'_'44'_'10215''737'_2690 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2684 ::
  T_LState_2676 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470
d_utxoSt_2684 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2690 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2686 ::
  T_LState_2676 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2686 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2690 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2688 ::
  T_LState_2676 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604
d_certState_2688 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2690 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2692 ~v0 ~v1 = du_HasCast'45'LState_2692
du_HasCast'45'LState_2692 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2692
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
                                 (2676 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2676 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2676 :: Integer) (16262344046643431141 :: Integer)
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
         (coe C_'10214'_'44'_'44'_'10215''737'_2690))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2710 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2710
  = C_LEDGER'45'V_2806 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2882 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604
d_certState_2714 ~v0 ~v1 v2 = du_certState_2714 v2
du_certState_2714 ::
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604
du_certState_2714 v0
  = coe
      d_certState_2688 (coe d_'46'generalizedField'45's_9439 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2716 ~v0 ~v1 v2 = du_govSt_2716 v2
du_govSt_2716 ::
  T_GeneralizeTel_9451 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2716 v0
  = coe d_govSt_2686 (coe d_'46'generalizedField'45's_9439 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470
d_utxoSt_2718 ~v0 ~v1 v2 = du_utxoSt_2718 v2
du_utxoSt_2718 ::
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470
du_utxoSt_2718 v0
  = coe d_utxoSt_2684 (coe d_'46'generalizedField'45's_9439 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1340]
d_txCerts_2738 ~v0 ~v1 v2 = du_txCerts_2738 v2
du_txCerts_2738 ::
  T_GeneralizeTel_9451 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1340]
du_txCerts_2738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3430
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3574
         (coe d_'46'generalizedField'45'tx_9441 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1008]
d_txGovVotes_2746 ~v0 ~v1 v2 = du_txGovVotes_2746 v2
du_txGovVotes_2746 ::
  T_GeneralizeTel_9451 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1008]
du_txGovVotes_2746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3442
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3574
         (coe d_'46'generalizedField'45'tx_9441 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 -> AgdaAny
d_txId_2748 ~v0 ~v1 v2 = du_txId_2748 v2
du_txId_2748 :: T_GeneralizeTel_9451 -> AgdaAny
du_txId_2748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3428
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3574
         (coe d_'46'generalizedField'45'tx_9441 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2758 ~v0 ~v1 v2 = du_txWithdrawals_2758 v2
du_txWithdrawals_2758 ::
  T_GeneralizeTel_9451 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3434
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3574
         (coe d_'46'generalizedField'45'tx_9441 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168
d_enactState_2762 ~v0 ~v1 v2 = du_enactState_2762 v2
du_enactState_2762 ::
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1168
du_enactState_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2902
      (coe d_'46'generalizedField'45'Γ_9443 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
d_pparams_2764 ~v0 ~v1 v2 = du_pparams_2764 v2
du_pparams_2764 ::
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
du_pparams_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2900
      (coe d_'46'generalizedField'45'Γ_9443 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 -> Maybe AgdaAny
d_ppolicy_2766 ~v0 ~v1 v2 = du_ppolicy_2766 v2
du_ppolicy_2766 :: T_GeneralizeTel_9451 -> Maybe AgdaAny
du_ppolicy_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2898
      (coe d_'46'generalizedField'45'Γ_9443 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 -> AgdaAny
d_slot_2768 ~v0 ~v1 v2 = du_slot_2768 v2
du_slot_2768 :: T_GeneralizeTel_9451 -> AgdaAny
du_slot_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2896
      (coe d_'46'generalizedField'45'Γ_9443 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1568
d_dState_2774 ~v0 ~v1 v2 = du_dState_2774 v2
du_dState_2774 ::
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1568
du_dState_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1612
      (coe
         d_certState_2688 (coe d_'46'generalizedField'45's_9439 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2784 ~v0 ~v1 v2 = du_rewards_2784 v2
du_rewards_2784 ::
  T_GeneralizeTel_9451 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1582
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1612
         (coe
            d_certState_2688 (coe d_'46'generalizedField'45's_9439 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
d_pparams_2798 ~v0 ~v1 v2 = du_pparams_2798 v2
du_pparams_2798 ::
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
du_pparams_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2900
      (coe d_'46'generalizedField'45'Γ_9443 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 -> AgdaAny
d_slot_2802 ~v0 ~v1 v2 = du_slot_2802 v2
du_slot_2802 :: T_GeneralizeTel_9451 -> AgdaAny
du_slot_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2896
      (coe d_'46'generalizedField'45'Γ_9443 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_9451 -> Integer
d_treasury_2804 ~v0 ~v1 v2 = du_treasury_2804 v2
du_treasury_2804 :: T_GeneralizeTel_9451 -> Integer
du_treasury_2804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2904
      (coe d_'46'generalizedField'45'Γ_9443 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_14613 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604
d_certState_2810 ~v0 ~v1 v2 = du_certState_2810 v2
du_certState_2810 ::
  T_GeneralizeTel_14613 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604
du_certState_2810 v0
  = coe
      d_certState_2688 (coe d_'46'generalizedField'45's_14605 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_14613 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2812 ~v0 ~v1 v2 = du_govSt_2812 v2
du_govSt_2812 ::
  T_GeneralizeTel_14613 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2812 v0
  = coe d_govSt_2686 (coe d_'46'generalizedField'45's_14605 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_14613 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470
d_utxoSt_2814 ~v0 ~v1 v2 = du_utxoSt_2814 v2
du_utxoSt_2814 ::
  T_GeneralizeTel_14613 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470
du_utxoSt_2814 v0
  = coe
      d_utxoSt_2684 (coe d_'46'generalizedField'45's_14605 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_14613 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
d_pparams_2874 ~v0 ~v1 v2 = du_pparams_2874 v2
du_pparams_2874 ::
  T_GeneralizeTel_14613 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_282
du_pparams_2874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2900
      (coe d_'46'generalizedField'45'Γ_14609 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_14613 -> AgdaAny
d_slot_2878 ~v0 ~v1 v2 = du_slot_2878 v2
du_slot_2878 :: T_GeneralizeTel_14613 -> AgdaAny
du_slot_2878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2896
      (coe d_'46'generalizedField'45'Γ_14609 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  T_GeneralizeTel_14613 -> Integer
d_treasury_2880 ~v0 ~v1 v2 = du_treasury_2880 v2
du_treasury_2880 :: T_GeneralizeTel_14613 -> Integer
du_treasury_2880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2904
      (coe d_'46'generalizedField'45'Γ_14609 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2474 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2884 ->
  T_LState_2676 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3562] ->
  T_LState_2676 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2900 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9439 ::
  T_GeneralizeTel_9451 -> T_LState_2676
d_'46'generalizedField'45's_9439 v0
  = case coe v0 of
      C_mkGeneralizeTel_9453 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9441 ::
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3562
d_'46'generalizedField'45'tx_9441 v0
  = case coe v0 of
      C_mkGeneralizeTel_9453 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9443 ::
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2884
d_'46'generalizedField'45'Γ_9443 v0
  = case coe v0 of
      C_mkGeneralizeTel_9453 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9445 ::
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470
d_'46'generalizedField'45'utxoSt''_9445 v0
  = case coe v0 of
      C_mkGeneralizeTel_9453 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9447 ::
  T_GeneralizeTel_9451 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604
d_'46'generalizedField'45'certState''_9447 v0
  = case coe v0 of
      C_mkGeneralizeTel_9453 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9449 ::
  T_GeneralizeTel_9451 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9449 v0
  = case coe v0 of
      C_mkGeneralizeTel_9453 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9451 a0 a1 = ()
data T_GeneralizeTel_9451
  = C_mkGeneralizeTel_9453 T_LState_2676
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3562
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2884
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1604
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14605 ::
  T_GeneralizeTel_14613 -> T_LState_2676
d_'46'generalizedField'45's_14605 v0
  = case coe v0 of
      C_mkGeneralizeTel_14615 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14607 ::
  T_GeneralizeTel_14613 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3562
d_'46'generalizedField'45'tx_14607 v0
  = case coe v0 of
      C_mkGeneralizeTel_14615 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14609 ::
  T_GeneralizeTel_14613 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2884
d_'46'generalizedField'45'Γ_14609 v0
  = case coe v0 of
      C_mkGeneralizeTel_14615 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14611 ::
  T_GeneralizeTel_14613 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470
d_'46'generalizedField'45'utxoSt''_14611 v0
  = case coe v0 of
      C_mkGeneralizeTel_14615 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14613 a0 a1 = ()
data T_GeneralizeTel_14613
  = C_mkGeneralizeTel_14615 T_LState_2676
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3562
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2884
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2470
