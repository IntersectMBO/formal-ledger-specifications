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
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Certs
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
d__'8866'_'8640''10631'_'44'CERTS'10632'__1748 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertEnv_1326 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1748 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1790 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_1864 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1864 ~v0 ~v1 = du_HasCast'45'CertEnv_1864
du_HasCast'45'CertEnv_1864 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1864
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Certs.du_HasCast'45'CertEnv_1550
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2082 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1508
d_dState_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2084 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1528
d_gState_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1556 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2086 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_PState_1366
d_pState_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1554 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2212 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2682 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2212 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2218 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  ()
d_GovState_2218 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2220 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2220 ~v0 ~v1 = du_HasCast'45'GovEnv_2220
du_HasCast'45'GovEnv_2220 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2220
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2714
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2262 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2282 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2282 v0 ~v1 = du_updateDeposits_2282 v0
du_updateDeposits_2282 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2900
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2440
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  Integer
d_donations_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2442
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  Integer
d_fees_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2438 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2436 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2316 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2328 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2328 ~v0 ~v1 = du_HasCast'45'LEnv_2328
du_HasCast'45'LEnv_2328 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2328
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2858
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2330 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2334 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2334 ~v0 ~v1 = du_allColdCreds_2334
du_allColdCreds_2334 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2334
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2926
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2336 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2336 v0 ~v1 = du_rmOrphanDRepVotes_2336 v0
du_rmOrphanDRepVotes_2336 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2908
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2338 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2338 ~v0 ~v1 = du_txgov_2338
du_txgov_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2338
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2862
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
d_enactState_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2786
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2784
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768 ->
  Maybe AgdaAny
d_ppolicy_2346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2782
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768 ->
  AgdaAny
d_slot_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2780
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768 ->
  Integer
d_treasury_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2788
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.Tx
d_Tx_2392 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.Tx.body
d_body_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2174
d_body_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.Tx.isValid
d_isValid_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Bool
d_isValid_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_2350
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.Tx.txAD
d_txAD_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Maybe AgdaAny
d_txAD_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_2352
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.Tx.txsize
d_txsize_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  Integer
d_txsize_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_2348
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.Tx.wits
d_wits_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332 ->
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262
d_wits_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_2346
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2476 a0 a1 = ()
data T_LState_2476
  = C_'10214'_'44'_'44'_'10215''737'_2490 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2484 ::
  T_LState_2476 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_utxoSt_2484 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2490 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2486 ::
  T_LState_2476 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2486 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2490 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2488 ::
  T_LState_2476 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
d_certState_2488 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2490 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2492 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2492 ~v0 ~v1 = du_HasCast'45'LState_2492
du_HasCast'45'LState_2492 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2492
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
                                 (2476 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2262 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2476 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2218 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2476 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1790 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2490))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2510 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2510
  = C_LEDGER'45'V_2606 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2682 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2514 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
d_certState_2514 ~v0 ~v1 v2 = du_certState_2514 v2
du_certState_2514 ::
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
du_certState_2514 v0
  = coe
      d_certState_2488 (coe d_'46'generalizedField'45's_9043 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2516 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2516 ~v0 ~v1 v2 = du_govSt_2516 v2
du_govSt_2516 ::
  T_GeneralizeTel_9055 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2516 v0
  = coe d_govSt_2486 (coe d_'46'generalizedField'45's_9043 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2518 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_utxoSt_2518 ~v0 ~v1 v2 = du_utxoSt_2518 v2
du_utxoSt_2518 ::
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
du_utxoSt_2518 v0
  = coe d_utxoSt_2484 (coe d_'46'generalizedField'45's_9043 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2538 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290]
d_txCerts_2538 ~v0 ~v1 v2 = du_txCerts_2538 v2
du_txCerts_2538 ::
  T_GeneralizeTel_9055 ->
  [MAlonzo.Code.Ledger.Core.Specification.Certs.T_DCert_1290]
du_txCerts_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_2222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_9045 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2546 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898]
d_txGovVotes_2546 ~v0 ~v1 v2 = du_txGovVotes_2546 v2
du_txGovVotes_2546 ::
  T_GeneralizeTel_9055 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898]
du_txGovVotes_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_2234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_9045 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2548 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 -> AgdaAny
d_txId_2548 ~v0 ~v1 v2 = du_txId_2548 v2
du_txId_2548 :: T_GeneralizeTel_9055 -> AgdaAny
du_txId_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_2220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_9045 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2558 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2558 ~v0 ~v1 v2 = du_txWithdrawals_2558 v2
du_txWithdrawals_2558 ::
  T_GeneralizeTel_9055 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_2226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_2344
         (coe d_'46'generalizedField'45'tx_9045 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2562 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
d_enactState_2562 ~v0 ~v1 v2 = du_enactState_2562 v2
du_enactState_2562 ::
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
du_enactState_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2786
      (coe d_'46'generalizedField'45'Γ_9047 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2564 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2564 ~v0 ~v1 v2 = du_pparams_2564 v2
du_pparams_2564 ::
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_pparams_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2784
      (coe d_'46'generalizedField'45'Γ_9047 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2566 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 -> Maybe AgdaAny
d_ppolicy_2566 ~v0 ~v1 v2 = du_ppolicy_2566 v2
du_ppolicy_2566 :: T_GeneralizeTel_9055 -> Maybe AgdaAny
du_ppolicy_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2782
      (coe d_'46'generalizedField'45'Γ_9047 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2568 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 -> AgdaAny
d_slot_2568 ~v0 ~v1 v2 = du_slot_2568 v2
du_slot_2568 :: T_GeneralizeTel_9055 -> AgdaAny
du_slot_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2780
      (coe d_'46'generalizedField'45'Γ_9047 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2574 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1508
d_dState_2574 ~v0 ~v1 v2 = du_dState_2574 v2
du_dState_2574 ::
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1508
du_dState_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552
      (coe
         d_certState_2488 (coe d_'46'generalizedField'45's_9043 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2584 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2584 ~v0 ~v1 v2 = du_rewards_2584 v2
du_rewards_2584 ::
  T_GeneralizeTel_9055 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1522
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552
         (coe
            d_certState_2488 (coe d_'46'generalizedField'45's_9043 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2598 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2598 ~v0 ~v1 v2 = du_pparams_2598 v2
du_pparams_2598 ::
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_pparams_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2784
      (coe d_'46'generalizedField'45'Γ_9047 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2602 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 -> AgdaAny
d_slot_2602 ~v0 ~v1 v2 = du_slot_2602 v2
du_slot_2602 :: T_GeneralizeTel_9055 -> AgdaAny
du_slot_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2780
      (coe d_'46'generalizedField'45'Γ_9047 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2604 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_9055 -> Integer
d_treasury_2604 ~v0 ~v1 v2 = du_treasury_2604 v2
du_treasury_2604 :: T_GeneralizeTel_9055 -> Integer
du_treasury_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2788
      (coe d_'46'generalizedField'45'Γ_9047 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2610 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_14169 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
d_certState_2610 ~v0 ~v1 v2 = du_certState_2610 v2
du_certState_2610 ::
  T_GeneralizeTel_14169 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
du_certState_2610 v0
  = coe
      d_certState_2488 (coe d_'46'generalizedField'45's_14161 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2612 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_14169 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2612 ~v0 ~v1 v2 = du_govSt_2612 v2
du_govSt_2612 ::
  T_GeneralizeTel_14169 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2612 v0
  = coe d_govSt_2486 (coe d_'46'generalizedField'45's_14161 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2614 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_14169 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_utxoSt_2614 ~v0 ~v1 v2 = du_utxoSt_2614 v2
du_utxoSt_2614 ::
  T_GeneralizeTel_14169 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
du_utxoSt_2614 v0
  = coe
      d_utxoSt_2484 (coe d_'46'generalizedField'45's_14161 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2674 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_14169 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2674 ~v0 ~v1 v2 = du_pparams_2674 v2
du_pparams_2674 ::
  T_GeneralizeTel_14169 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_pparams_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2784
      (coe d_'46'generalizedField'45'Γ_14165 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2678 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_14169 -> AgdaAny
d_slot_2678 ~v0 ~v1 v2 = du_slot_2678 v2
du_slot_2678 :: T_GeneralizeTel_14169 -> AgdaAny
du_slot_2678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2780
      (coe d_'46'generalizedField'45'Γ_14165 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2680 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  T_GeneralizeTel_14169 -> Integer
d_treasury_2680 ~v0 ~v1 v2 = du_treasury_2680 v2
du_treasury_2680 :: T_GeneralizeTel_14169 -> Integer
du_treasury_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2788
      (coe d_'46'generalizedField'45'Γ_14165 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2700 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Abstract.T_AbstractFunctions_2200 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768 ->
  T_LState_2476 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332] ->
  T_LState_2476 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2700 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9043 ::
  T_GeneralizeTel_9055 -> T_LState_2476
d_'46'generalizedField'45's_9043 v0
  = case coe v0 of
      C_mkGeneralizeTel_9057 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9045 ::
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332
d_'46'generalizedField'45'tx_9045 v0
  = case coe v0 of
      C_mkGeneralizeTel_9057 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9047 ::
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768
d_'46'generalizedField'45'Γ_9047 v0
  = case coe v0 of
      C_mkGeneralizeTel_9057 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9049 ::
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_'46'generalizedField'45'utxoSt''_9049 v0
  = case coe v0 of
      C_mkGeneralizeTel_9057 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9051 ::
  T_GeneralizeTel_9055 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
d_'46'generalizedField'45'certState''_9051 v0
  = case coe v0 of
      C_mkGeneralizeTel_9057 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9053 ::
  T_GeneralizeTel_9055 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9053 v0
  = case coe v0 of
      C_mkGeneralizeTel_9057 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9055 a0 a1 = ()
data T_GeneralizeTel_9055
  = C_mkGeneralizeTel_9057 T_LState_2476
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14161 ::
  T_GeneralizeTel_14169 -> T_LState_2476
d_'46'generalizedField'45's_14161 v0
  = case coe v0 of
      C_mkGeneralizeTel_14171 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14163 ::
  T_GeneralizeTel_14169 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332
d_'46'generalizedField'45'tx_14163 v0
  = case coe v0 of
      C_mkGeneralizeTel_14171 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14165 ::
  T_GeneralizeTel_14169 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768
d_'46'generalizedField'45'Γ_14165 v0
  = case coe v0 of
      C_mkGeneralizeTel_14171 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14167 ::
  T_GeneralizeTel_14169 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
d_'46'generalizedField'45'utxoSt''_14167 v0
  = case coe v0 of
      C_mkGeneralizeTel_14171 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14169 a0 a1 = ()
data T_GeneralizeTel_14169
  = C_mkGeneralizeTel_14171 T_LState_2476
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_2332
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2768
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2426
