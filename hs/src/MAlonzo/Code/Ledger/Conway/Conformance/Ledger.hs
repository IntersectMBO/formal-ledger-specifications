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
d_Tx_568 a0 = ()
-- _.epoch
d_epoch_656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_656 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1668
         (coe v0))
-- _.Tx.body
d_body_1828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290
d_body_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
      (coe v0)
-- _.Tx.isValid
d_isValid_1830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  Bool
d_isValid_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3488
      (coe v0)
-- _.Tx.txAD
d_txAD_1832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  Maybe AgdaAny
d_txAD_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3490
      (coe v0)
-- _.Tx.txsize
d_txsize_1834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  Integer
d_txsize_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3486
      (coe v0)
-- _.Tx.wits
d_wits_1836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3448
d_wits_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3484
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2852 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2012 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  ()
d_GovState_2018 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2020 ~v0 ~v1 = du_HasCast'45'GovEnv_2020
du_HasCast'45'GovEnv_2020 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2020
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2884
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2062 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2082 v0 ~v1 = du_updateDeposits_2082 v0
du_updateDeposits_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2876
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2416
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402 ->
  Integer
d_donations_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2418
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402 ->
  Integer
d_fees_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2414 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2412 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2116 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1328 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2128 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2170 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2240 ~v0 ~v1 = du_HasCast'45'CertEnv_2240
du_HasCast'45'CertEnv_2240 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2240
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1552
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2454 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1520
d_dState_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2456 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1540
d_gState_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1568 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2458 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
d_pState_2458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1566 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2580 ~v0 ~v1 = du_HasCast'45'LEnv_2580
du_HasCast'45'LEnv_2580 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2580
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2902
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2582 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2586 ~v0 ~v1 = du_allColdCreds_2586
du_allColdCreds_2586 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2586
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2970
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1396 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2588 v0 ~v1 = du_rmOrphanDRepVotes_2588 v0
du_rmOrphanDRepVotes_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1396 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2952
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2590 ~v0 ~v1 = du_txgov_2590
du_txgov_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3290 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2590
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2906
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2812 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120
d_enactState_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2830
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2812 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2828
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2812 ->
  Maybe AgdaAny
d_ppolicy_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2826
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2812 ->
  AgdaAny
d_slot_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2824
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2812 ->
  Integer
d_treasury_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2832
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2604 a0 a1 = ()
data T_LState_2604
  = C_'10214'_'44'_'44'_'10215''737'_2618 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2612 ::
  T_LState_2604 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
d_utxoSt_2612 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2618 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2614 ::
  T_LState_2604 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2614 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2618 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2616 ::
  T_LState_2604 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
d_certState_2616 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2618 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2620 ~v0 ~v1 = du_HasCast'45'LState_2620
du_HasCast'45'LState_2620 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2620
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
                                 (2604 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2062 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2604 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2018 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2604 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2170 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2618))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2638 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2638
  = C_LEDGER'45'V_2734 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2810 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
d_certState_2642 ~v0 ~v1 v2 = du_certState_2642 v2
du_certState_2642 ::
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
du_certState_2642 v0
  = coe
      d_certState_2616 (coe d_'46'generalizedField'45's_9245 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2644 ~v0 ~v1 v2 = du_govSt_2644 v2
du_govSt_2644 ::
  T_GeneralizeTel_9257 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2644 v0
  = coe d_govSt_2614 (coe d_'46'generalizedField'45's_9245 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
d_utxoSt_2646 ~v0 ~v1 v2 = du_utxoSt_2646 v2
du_utxoSt_2646 ::
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
du_utxoSt_2646 v0
  = coe d_utxoSt_2612 (coe d_'46'generalizedField'45's_9245 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
d_txCerts_2666 ~v0 ~v1 v2 = du_txCerts_2666 v2
du_txCerts_2666 ::
  T_GeneralizeTel_9257 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
du_txCerts_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3338
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
         (coe d_'46'generalizedField'45'tx_9247 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_906]
d_txGovVotes_2674 ~v0 ~v1 v2 = du_txGovVotes_2674 v2
du_txGovVotes_2674 ::
  T_GeneralizeTel_9257 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_906]
du_txGovVotes_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3350
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
         (coe d_'46'generalizedField'45'tx_9247 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 -> AgdaAny
d_txId_2676 ~v0 ~v1 v2 = du_txId_2676 v2
du_txId_2676 :: T_GeneralizeTel_9257 -> AgdaAny
du_txId_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
         (coe d_'46'generalizedField'45'tx_9247 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2686 ~v0 ~v1 v2 = du_txWithdrawals_2686 v2
du_txWithdrawals_2686 ::
  T_GeneralizeTel_9257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3342
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3482
         (coe d_'46'generalizedField'45'tx_9247 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120
d_enactState_2690 ~v0 ~v1 v2 = du_enactState_2690 v2
du_enactState_2690 ::
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1120
du_enactState_2690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2830
      (coe d_'46'generalizedField'45'Γ_9249 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2692 ~v0 ~v1 v2 = du_pparams_2692 v2
du_pparams_2692 ::
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2828
      (coe d_'46'generalizedField'45'Γ_9249 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 -> Maybe AgdaAny
d_ppolicy_2694 ~v0 ~v1 v2 = du_ppolicy_2694 v2
du_ppolicy_2694 :: T_GeneralizeTel_9257 -> Maybe AgdaAny
du_ppolicy_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2826
      (coe d_'46'generalizedField'45'Γ_9249 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 -> AgdaAny
d_slot_2696 ~v0 ~v1 v2 = du_slot_2696 v2
du_slot_2696 :: T_GeneralizeTel_9257 -> AgdaAny
du_slot_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2824
      (coe d_'46'generalizedField'45'Γ_9249 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1520
d_dState_2702 ~v0 ~v1 v2 = du_dState_2702 v2
du_dState_2702 ::
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1520
du_dState_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
      (coe
         d_certState_2616 (coe d_'46'generalizedField'45's_9245 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2712 ~v0 ~v1 v2 = du_rewards_2712 v2
du_rewards_2712 ::
  T_GeneralizeTel_9257 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1534
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1564
         (coe
            d_certState_2616 (coe d_'46'generalizedField'45's_9245 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2726 ~v0 ~v1 v2 = du_pparams_2726 v2
du_pparams_2726 ::
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2828
      (coe d_'46'generalizedField'45'Γ_9249 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 -> AgdaAny
d_slot_2730 ~v0 ~v1 v2 = du_slot_2730 v2
du_slot_2730 :: T_GeneralizeTel_9257 -> AgdaAny
du_slot_2730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2824
      (coe d_'46'generalizedField'45'Γ_9249 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_9257 -> Integer
d_treasury_2732 ~v0 ~v1 v2 = du_treasury_2732 v2
du_treasury_2732 :: T_GeneralizeTel_9257 -> Integer
du_treasury_2732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2832
      (coe d_'46'generalizedField'45'Γ_9249 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_14387 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
d_certState_2738 ~v0 ~v1 v2 = du_certState_2738 v2
du_certState_2738 ::
  T_GeneralizeTel_14387 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
du_certState_2738 v0
  = coe
      d_certState_2616 (coe d_'46'generalizedField'45's_14379 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_14387 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2740 ~v0 ~v1 v2 = du_govSt_2740 v2
du_govSt_2740 ::
  T_GeneralizeTel_14387 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2740 v0
  = coe d_govSt_2614 (coe d_'46'generalizedField'45's_14379 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_14387 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
d_utxoSt_2742 ~v0 ~v1 v2 = du_utxoSt_2742 v2
du_utxoSt_2742 ::
  T_GeneralizeTel_14387 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
du_utxoSt_2742 v0
  = coe
      d_utxoSt_2612 (coe d_'46'generalizedField'45's_14379 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_14387 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2802 ~v0 ~v1 v2 = du_pparams_2802 v2
du_pparams_2802 ::
  T_GeneralizeTel_14387 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2828
      (coe d_'46'generalizedField'45'Γ_14383 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_14387 -> AgdaAny
d_slot_2806 ~v0 ~v1 v2 = du_slot_2806 v2
du_slot_2806 :: T_GeneralizeTel_14387 -> AgdaAny
du_slot_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2824
      (coe d_'46'generalizedField'45'Γ_14383 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  T_GeneralizeTel_14387 -> Integer
d_treasury_2808 ~v0 ~v1 v2 = du_treasury_2808 v2
du_treasury_2808 :: T_GeneralizeTel_14387 -> Integer
du_treasury_2808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2832
      (coe d_'46'generalizedField'45'Γ_14383 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2812 ->
  T_LState_2604 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470] ->
  T_LState_2604 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2828 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9245 ::
  T_GeneralizeTel_9257 -> T_LState_2604
d_'46'generalizedField'45's_9245 v0
  = case coe v0 of
      C_mkGeneralizeTel_9259 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9247 ::
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470
d_'46'generalizedField'45'tx_9247 v0
  = case coe v0 of
      C_mkGeneralizeTel_9259 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9249 ::
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2812
d_'46'generalizedField'45'Γ_9249 v0
  = case coe v0 of
      C_mkGeneralizeTel_9259 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9251 ::
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
d_'46'generalizedField'45'utxoSt''_9251 v0
  = case coe v0 of
      C_mkGeneralizeTel_9259 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9253 ::
  T_GeneralizeTel_9257 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
d_'46'generalizedField'45'certState''_9253 v0
  = case coe v0 of
      C_mkGeneralizeTel_9259 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9255 ::
  T_GeneralizeTel_9257 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9255 v0
  = case coe v0 of
      C_mkGeneralizeTel_9259 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9257 a0 a1 = ()
data T_GeneralizeTel_9257
  = C_mkGeneralizeTel_9259 T_LState_2604
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2812
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1556
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14379 ::
  T_GeneralizeTel_14387 -> T_LState_2604
d_'46'generalizedField'45's_14379 v0
  = case coe v0 of
      C_mkGeneralizeTel_14389 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14381 ::
  T_GeneralizeTel_14387 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470
d_'46'generalizedField'45'tx_14381 v0
  = case coe v0 of
      C_mkGeneralizeTel_14389 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14383 ::
  T_GeneralizeTel_14387 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2812
d_'46'generalizedField'45'Γ_14383 v0
  = case coe v0 of
      C_mkGeneralizeTel_14389 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14385 ::
  T_GeneralizeTel_14387 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
d_'46'generalizedField'45'utxoSt''_14385 v0
  = case coe v0 of
      C_mkGeneralizeTel_14389 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14387 a0 a1 = ()
data T_GeneralizeTel_14387
  = C_mkGeneralizeTel_14389 T_LState_2604
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3470
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2812
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2402
