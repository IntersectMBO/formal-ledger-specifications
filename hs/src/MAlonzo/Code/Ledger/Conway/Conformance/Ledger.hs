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
d_Tx_580 a0 = ()
-- _.epoch
d_epoch_668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_668 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1710
         (coe v0))
-- _.Tx.body
d_body_1848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3330
d_body_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3522
      (coe v0)
-- _.Tx.isValid
d_isValid_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3510 ->
  Bool
d_isValid_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3528
      (coe v0)
-- _.Tx.txAD
d_txAD_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3510 ->
  Maybe AgdaAny
d_txAD_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3530
      (coe v0)
-- _.Tx.txsize
d_txsize_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3510 ->
  Integer
d_txsize_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3526
      (coe v0)
-- _.Tx.wits
d_wits_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3510 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3488
d_wits_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3524
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2030 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  ()
d_GovState_2036 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2038 ~v0 ~v1 = du_HasCast'45'GovEnv_2038
du_HasCast'45'GovEnv_2038 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2038
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2902
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2080 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3330 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2100 v0 ~v1 = du_updateDeposits_2100 v0
du_updateDeposits_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3330 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2888
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2428
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414 ->
  Integer
d_donations_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2430
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414 ->
  Integer
d_fees_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2426 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2424 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2134 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1350 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2146 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2188 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2258 ~v0 ~v1 = du_HasCast'45'CertEnv_2258
du_HasCast'45'CertEnv_2258 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2258
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1574
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2472 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1542
d_dState_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1586 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2474 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1562
d_gState_2474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1590 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2476 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390
d_pState_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1588 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2598 ~v0 ~v1 = du_HasCast'45'LEnv_2598
du_HasCast'45'LEnv_2598 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2598
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2918
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2600 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2604 ~v0 ~v1 = du_allColdCreds_2604
du_allColdCreds_2604 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2604
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2986
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2606 v0 ~v1 = du_rmOrphanDRepVotes_2606 v0
du_rmOrphanDRepVotes_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2968
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3330 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2608 ~v0 ~v1 = du_txgov_2608
du_txgov_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3330 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2608
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2922
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142
d_enactState_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2846
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2828 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2844
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2828 ->
  Maybe AgdaAny
d_ppolicy_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2842
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2828 ->
  AgdaAny
d_slot_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2840
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2828 ->
  Integer
d_treasury_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2848
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2622 a0 a1 = ()
data T_LState_2622
  = C_'10214'_'44'_'44'_'10215''737'_2636 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2630 ::
  T_LState_2622 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414
d_utxoSt_2630 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2636 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2632 ::
  T_LState_2622 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2632 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2636 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2634 ::
  T_LState_2622 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
d_certState_2634 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2636 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2638 ~v0 ~v1 = du_HasCast'45'LState_2638
du_HasCast'45'LState_2638 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2638
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
                                 (2622 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2080 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2622 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2036 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2622 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2188 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2636))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2656 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2656
  = C_LEDGER'45'V_2752 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2828 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
d_certState_2660 ~v0 ~v1 v2 = du_certState_2660 v2
du_certState_2660 ::
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
du_certState_2660 v0
  = coe
      d_certState_2634 (coe d_'46'generalizedField'45's_9317 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2662 ~v0 ~v1 v2 = du_govSt_2662 v2
du_govSt_2662 ::
  T_GeneralizeTel_9329 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2662 v0
  = coe d_govSt_2632 (coe d_'46'generalizedField'45's_9317 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414
d_utxoSt_2664 ~v0 ~v1 v2 = du_utxoSt_2664 v2
du_utxoSt_2664 ::
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414
du_utxoSt_2664 v0
  = coe d_utxoSt_2630 (coe d_'46'generalizedField'45's_9317 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
d_txCerts_2684 ~v0 ~v1 v2 = du_txCerts_2684 v2
du_txCerts_2684 ::
  T_GeneralizeTel_9329 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
du_txCerts_2684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3378
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3522
         (coe d_'46'generalizedField'45'tx_9319 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
d_txGovVotes_2692 ~v0 ~v1 v2 = du_txGovVotes_2692 v2
du_txGovVotes_2692 ::
  T_GeneralizeTel_9329 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
du_txGovVotes_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3390
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3522
         (coe d_'46'generalizedField'45'tx_9319 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 -> AgdaAny
d_txId_2694 ~v0 ~v1 v2 = du_txId_2694 v2
du_txId_2694 :: T_GeneralizeTel_9329 -> AgdaAny
du_txId_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3376
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3522
         (coe d_'46'generalizedField'45'tx_9319 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2704 ~v0 ~v1 v2 = du_txWithdrawals_2704 v2
du_txWithdrawals_2704 ::
  T_GeneralizeTel_9329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3382
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3522
         (coe d_'46'generalizedField'45'tx_9319 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142
d_enactState_2708 ~v0 ~v1 v2 = du_enactState_2708 v2
du_enactState_2708 ::
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142
du_enactState_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2846
      (coe d_'46'generalizedField'45'Γ_9321 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2710 ~v0 ~v1 v2 = du_pparams_2710 v2
du_pparams_2710 ::
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2844
      (coe d_'46'generalizedField'45'Γ_9321 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 -> Maybe AgdaAny
d_ppolicy_2712 ~v0 ~v1 v2 = du_ppolicy_2712 v2
du_ppolicy_2712 :: T_GeneralizeTel_9329 -> Maybe AgdaAny
du_ppolicy_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2842
      (coe d_'46'generalizedField'45'Γ_9321 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 -> AgdaAny
d_slot_2714 ~v0 ~v1 v2 = du_slot_2714 v2
du_slot_2714 :: T_GeneralizeTel_9329 -> AgdaAny
du_slot_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2840
      (coe d_'46'generalizedField'45'Γ_9321 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1542
d_dState_2720 ~v0 ~v1 v2 = du_dState_2720 v2
du_dState_2720 ::
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1542
du_dState_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1586
      (coe
         d_certState_2634 (coe d_'46'generalizedField'45's_9317 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2730 ~v0 ~v1 v2 = du_rewards_2730 v2
du_rewards_2730 ::
  T_GeneralizeTel_9329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1556
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1586
         (coe
            d_certState_2634 (coe d_'46'generalizedField'45's_9317 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2744 ~v0 ~v1 v2 = du_pparams_2744 v2
du_pparams_2744 ::
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2844
      (coe d_'46'generalizedField'45'Γ_9321 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 -> AgdaAny
d_slot_2748 ~v0 ~v1 v2 = du_slot_2748 v2
du_slot_2748 :: T_GeneralizeTel_9329 -> AgdaAny
du_slot_2748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2840
      (coe d_'46'generalizedField'45'Γ_9321 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_9329 -> Integer
d_treasury_2750 ~v0 ~v1 v2 = du_treasury_2750 v2
du_treasury_2750 :: T_GeneralizeTel_9329 -> Integer
du_treasury_2750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2848
      (coe d_'46'generalizedField'45'Γ_9321 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_14443 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
d_certState_2756 ~v0 ~v1 v2 = du_certState_2756 v2
du_certState_2756 ::
  T_GeneralizeTel_14443 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
du_certState_2756 v0
  = coe
      d_certState_2634 (coe d_'46'generalizedField'45's_14435 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_14443 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2758 ~v0 ~v1 v2 = du_govSt_2758 v2
du_govSt_2758 ::
  T_GeneralizeTel_14443 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2758 v0
  = coe d_govSt_2632 (coe d_'46'generalizedField'45's_14435 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_14443 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414
d_utxoSt_2760 ~v0 ~v1 v2 = du_utxoSt_2760 v2
du_utxoSt_2760 ::
  T_GeneralizeTel_14443 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414
du_utxoSt_2760 v0
  = coe
      d_utxoSt_2630 (coe d_'46'generalizedField'45's_14435 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_14443 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2820 ~v0 ~v1 v2 = du_pparams_2820 v2
du_pparams_2820 ::
  T_GeneralizeTel_14443 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2844
      (coe d_'46'generalizedField'45'Γ_14439 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_14443 -> AgdaAny
d_slot_2824 ~v0 ~v1 v2 = du_slot_2824 v2
du_slot_2824 :: T_GeneralizeTel_14443 -> AgdaAny
du_slot_2824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2840
      (coe d_'46'generalizedField'45'Γ_14439 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  T_GeneralizeTel_14443 -> Integer
d_treasury_2826 ~v0 ~v1 v2 = du_treasury_2826 v2
du_treasury_2826 :: T_GeneralizeTel_14443 -> Integer
du_treasury_2826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2848
      (coe d_'46'generalizedField'45'Γ_14439 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2426 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2828 ->
  T_LState_2622 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3510] ->
  T_LState_2622 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2846 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9317 ::
  T_GeneralizeTel_9329 -> T_LState_2622
d_'46'generalizedField'45's_9317 v0
  = case coe v0 of
      C_mkGeneralizeTel_9331 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9319 ::
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3510
d_'46'generalizedField'45'tx_9319 v0
  = case coe v0 of
      C_mkGeneralizeTel_9331 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9321 ::
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2828
d_'46'generalizedField'45'Γ_9321 v0
  = case coe v0 of
      C_mkGeneralizeTel_9331 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9323 ::
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414
d_'46'generalizedField'45'utxoSt''_9323 v0
  = case coe v0 of
      C_mkGeneralizeTel_9331 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9325 ::
  T_GeneralizeTel_9329 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
d_'46'generalizedField'45'certState''_9325 v0
  = case coe v0 of
      C_mkGeneralizeTel_9331 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9327 ::
  T_GeneralizeTel_9329 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9327 v0
  = case coe v0 of
      C_mkGeneralizeTel_9331 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9329 a0 a1 = ()
data T_GeneralizeTel_9329
  = C_mkGeneralizeTel_9331 T_LState_2622
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3510
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2828
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14435 ::
  T_GeneralizeTel_14443 -> T_LState_2622
d_'46'generalizedField'45's_14435 v0
  = case coe v0 of
      C_mkGeneralizeTel_14445 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14437 ::
  T_GeneralizeTel_14443 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3510
d_'46'generalizedField'45'tx_14437 v0
  = case coe v0 of
      C_mkGeneralizeTel_14445 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14439 ::
  T_GeneralizeTel_14443 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2828
d_'46'generalizedField'45'Γ_14439 v0
  = case coe v0 of
      C_mkGeneralizeTel_14445 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14441 ::
  T_GeneralizeTel_14443 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414
d_'46'generalizedField'45'utxoSt''_14441 v0
  = case coe v0 of
      C_mkGeneralizeTel_14445 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14443 a0 a1 = ()
data T_GeneralizeTel_14443
  = C_mkGeneralizeTel_14445 T_LState_2622
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3510
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2828
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2414
