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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.epoch
d_epoch_586 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_586 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
         (coe v0))
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1846 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1846 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1888 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_1962 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1962 ~v0 ~v1 = du_HasCast'45'CertEnv_1962
du_HasCast'45'CertEnv_1962 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1962
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1550
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1508
d_dState_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1528
d_gState_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1556 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_pState_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1554 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2310 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2698 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2310 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2316 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  ()
d_GovState_2316 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2318 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2318 ~v0 ~v1 = du_HasCast'45'GovEnv_2318
du_HasCast'45'GovEnv_2318 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2318
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2730
-- Ledger.Conway.Conformance.Ledger._.Tx
d_Tx_2376 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.Tx.body
d_body_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174
d_body_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.Tx.isValid
d_isValid_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Bool
d_isValid_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_2350
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.Tx.txAD
d_txAD_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Maybe AgdaAny
d_txAD_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_2352
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.Tx.txsize
d_txsize_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Integer
d_txsize_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_2348
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.Tx.wits
d_wits_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262
d_wits_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2484 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2504 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2504 v0 ~v1 = du_updateDeposits_2504 v0
du_updateDeposits_2504 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2900
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2440
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  Integer
d_donations_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2442
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  Integer
d_fees_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2438 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2538 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2550 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2550 ~v0 ~v1 = du_HasCast'45'LEnv_2550
du_HasCast'45'LEnv_2550 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2858
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2552 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2556 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2556 ~v0 ~v1 = du_allColdCreds_2556
du_allColdCreds_2556 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2556
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2926
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2558 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2558 v0 ~v1 = du_rmOrphanDRepVotes_2558 v0
du_rmOrphanDRepVotes_2558 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2908
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2560 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2560 ~v0 ~v1 = du_txgov_2560
du_txgov_2560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2560
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2862
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
d_enactState_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2786
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2784
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768 ->
  Maybe AgdaAny
d_ppolicy_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2782
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768 ->
  AgdaAny
d_slot_2570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2780
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768 ->
  Integer
d_treasury_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2788
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2574 a0 a1 = ()
data T_LState_2574
  = C_'10214'_'44'_'44'_'10215''737'_2588 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2582 ::
  T_LState_2574 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_utxoSt_2582 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2588 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2584 ::
  T_LState_2574 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2584 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2588 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2586 ::
  T_LState_2574 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
d_certState_2586 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2588 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2590 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2590 ~v0 ~v1 = du_HasCast'45'LState_2590
du_HasCast'45'LState_2590 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2590
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
                                 (2574 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2484 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2574 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2316 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2574 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1888 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2588))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2608 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2608
  = C_LEDGER'45'V_2704 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2780 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2612 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
d_certState_2612 ~v0 ~v1 v2 = du_certState_2612 v2
du_certState_2612 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
du_certState_2612 v0
  = coe
      d_certState_2586 (coe d_'46'generalizedField'45's_9337 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2614 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2614 ~v0 ~v1 v2 = du_govSt_2614 v2
du_govSt_2614 ::
  T_GeneralizeTel_9349 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2614 v0
  = coe d_govSt_2584 (coe d_'46'generalizedField'45's_9337 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2616 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_utxoSt_2616 ~v0 ~v1 v2 = du_utxoSt_2616 v2
du_utxoSt_2616 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
du_utxoSt_2616 v0
  = coe d_utxoSt_2582 (coe d_'46'generalizedField'45's_9337 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2636 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
d_txCerts_2636 ~v0 ~v1 v2 = du_txCerts_2636 v2
du_txCerts_2636 ::
  T_GeneralizeTel_9349 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
du_txCerts_2636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_9339 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2644 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898]
d_txGovVotes_2644 ~v0 ~v1 v2 = du_txGovVotes_2644 v2
du_txGovVotes_2644 ::
  T_GeneralizeTel_9349 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898]
du_txGovVotes_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_2234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_9339 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2646 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 -> AgdaAny
d_txId_2646 ~v0 ~v1 v2 = du_txId_2646 v2
du_txId_2646 :: T_GeneralizeTel_9349 -> AgdaAny
du_txId_2646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_9339 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2656 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2656 ~v0 ~v1 v2 = du_txWithdrawals_2656 v2
du_txWithdrawals_2656 ::
  T_GeneralizeTel_9349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_2226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_9339 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2660 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
d_enactState_2660 ~v0 ~v1 v2 = du_enactState_2660 v2
du_enactState_2660 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
du_enactState_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2786
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2662 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2662 ~v0 ~v1 v2 = du_pparams_2662 v2
du_pparams_2662 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_pparams_2662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2784
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2664 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 -> Maybe AgdaAny
d_ppolicy_2664 ~v0 ~v1 v2 = du_ppolicy_2664 v2
du_ppolicy_2664 :: T_GeneralizeTel_9349 -> Maybe AgdaAny
du_ppolicy_2664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2782
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2666 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 -> AgdaAny
d_slot_2666 ~v0 ~v1 v2 = du_slot_2666 v2
du_slot_2666 :: T_GeneralizeTel_9349 -> AgdaAny
du_slot_2666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2780
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2672 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1508
d_dState_2672 ~v0 ~v1 v2 = du_dState_2672 v2
du_dState_2672 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1508
du_dState_2672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552
      (coe
         d_certState_2586 (coe d_'46'generalizedField'45's_9337 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2682 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2682 ~v0 ~v1 v2 = du_rewards_2682 v2
du_rewards_2682 ::
  T_GeneralizeTel_9349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1522
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552
         (coe
            d_certState_2586 (coe d_'46'generalizedField'45's_9337 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2696 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2696 ~v0 ~v1 v2 = du_pparams_2696 v2
du_pparams_2696 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_pparams_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2784
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2700 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 -> AgdaAny
d_slot_2700 ~v0 ~v1 v2 = du_slot_2700 v2
du_slot_2700 :: T_GeneralizeTel_9349 -> AgdaAny
du_slot_2700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2780
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2702 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9349 -> Integer
d_treasury_2702 ~v0 ~v1 v2 = du_treasury_2702 v2
du_treasury_2702 :: T_GeneralizeTel_9349 -> Integer
du_treasury_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2788
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2708 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_14463 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
d_certState_2708 ~v0 ~v1 v2 = du_certState_2708 v2
du_certState_2708 ::
  T_GeneralizeTel_14463 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
du_certState_2708 v0
  = coe
      d_certState_2586 (coe d_'46'generalizedField'45's_14455 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2710 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_14463 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2710 ~v0 ~v1 v2 = du_govSt_2710 v2
du_govSt_2710 ::
  T_GeneralizeTel_14463 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2710 v0
  = coe d_govSt_2584 (coe d_'46'generalizedField'45's_14455 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2712 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_14463 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_utxoSt_2712 ~v0 ~v1 v2 = du_utxoSt_2712 v2
du_utxoSt_2712 ::
  T_GeneralizeTel_14463 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
du_utxoSt_2712 v0
  = coe
      d_utxoSt_2582 (coe d_'46'generalizedField'45's_14455 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2772 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_14463 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2772 ~v0 ~v1 v2 = du_pparams_2772 v2
du_pparams_2772 ::
  T_GeneralizeTel_14463 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_pparams_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2784
      (coe d_'46'generalizedField'45'Γ_14459 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2776 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_14463 -> AgdaAny
d_slot_2776 ~v0 ~v1 v2 = du_slot_2776 v2
du_slot_2776 :: T_GeneralizeTel_14463 -> AgdaAny
du_slot_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2780
      (coe d_'46'generalizedField'45'Γ_14459 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2778 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_14463 -> Integer
d_treasury_2778 ~v0 ~v1 v2 = du_treasury_2778 v2
du_treasury_2778 :: T_GeneralizeTel_14463 -> Integer
du_treasury_2778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2788
      (coe d_'46'generalizedField'45'Γ_14459 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2798 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768 ->
  T_LState_2574 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332] ->
  T_LState_2574 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2798 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9337 ::
  T_GeneralizeTel_9349 -> T_LState_2574
d_'46'generalizedField'45's_9337 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9339 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332
d_'46'generalizedField'45'tx_9339 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9341 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768
d_'46'generalizedField'45'Γ_9341 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9343 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_'46'generalizedField'45'utxoSt''_9343 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9345 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
d_'46'generalizedField'45'certState''_9345 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9347 ::
  T_GeneralizeTel_9349 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9347 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9349 a0 a1 = ()
data T_GeneralizeTel_9349
  = C_mkGeneralizeTel_9351 T_LState_2574
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14455 ::
  T_GeneralizeTel_14463 -> T_LState_2574
d_'46'generalizedField'45's_14455 v0
  = case coe v0 of
      C_mkGeneralizeTel_14465 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14457 ::
  T_GeneralizeTel_14463 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332
d_'46'generalizedField'45'tx_14457 v0
  = case coe v0 of
      C_mkGeneralizeTel_14465 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14459 ::
  T_GeneralizeTel_14463 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768
d_'46'generalizedField'45'Γ_14459 v0
  = case coe v0 of
      C_mkGeneralizeTel_14465 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14461 ::
  T_GeneralizeTel_14463 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_'46'generalizedField'45'utxoSt''_14461 v0
  = case coe v0 of
      C_mkGeneralizeTel_14465 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14463 a0 a1 = ()
data T_GeneralizeTel_14463
  = C_mkGeneralizeTel_14465 T_LState_2574
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
