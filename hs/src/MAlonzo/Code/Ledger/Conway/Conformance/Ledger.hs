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
d_Tx_496 a0 = ()
-- _.epoch
d_epoch_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_570 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
         (coe v0))
-- _.Tx.body
d_body_1674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3138
d_body_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3352
      (coe v0)
-- _.Tx.isValid
d_isValid_1676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3340 ->
  Bool
d_isValid_1676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3358
      (coe v0)
-- _.Tx.txAD
d_txAD_1678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3340 ->
  Maybe AgdaAny
d_txAD_1678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3360
      (coe v0)
-- _.Tx.txsize
d_txsize_1680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3340 ->
  Integer
d_txsize_1680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3356
      (coe v0)
-- _.Tx.wits
d_wits_1682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3340 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3318
d_wits_1682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3354
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2614 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1854 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  ()
d_GovState_1860 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1862 ~v0 ~v1 = du_HasCast'45'GovEnv_1862
du_HasCast'45'GovEnv_1862 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1862
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2646
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1904 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3138 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1924 v0 ~v1 = du_updateDeposits_1924 v0
du_updateDeposits_1924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3138 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2716
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2262
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248 ->
  Integer
d_donations_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2264
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248 ->
  Integer
d_fees_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2260 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2258 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1958 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1150 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1114] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1972 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2002 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2070 ~v0 ~v1 = du_HasCast'45'CertEnv_2070
du_HasCast'45'CertEnv_2070 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2070
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1396
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2252 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1372
d_dState_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1416 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2254 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1392
d_gState_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1420 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2256 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1256
d_pState_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1418 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2368 ~v0 ~v1 = du_HasCast'45'LEnv_2368
du_HasCast'45'LEnv_2368 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2368
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2660
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2370 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1028 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2374 ~v0 ~v1 = du_allColdCreds_2374
du_allColdCreds_2374 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1028 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2374
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2730
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2376 v0 ~v1 = du_rmOrphanDRepVotes_2376 v0
du_rmOrphanDRepVotes_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2712
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3138 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2378 ~v0 ~v1 = du_txgov_2378
du_txgov_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3138 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2378
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2664
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2588 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1028
d_enactState_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2606
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2588 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2604
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2588 ->
  Maybe AgdaAny
d_ppolicy_2386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2602
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2588 ->
  AgdaAny
d_slot_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2600
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2588 ->
  Integer
d_treasury_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2608
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2392 a0 a1 = ()
data T_LState_2392
  = C_'10214'_'44'_'44'_'10215''737'_2406 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2400 ::
  T_LState_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248
d_utxoSt_2400 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2406 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2402 ::
  T_LState_2392 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2402 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2406 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2404 ::
  T_LState_2392 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408
d_certState_2404 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2406 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2408 ~v0 ~v1 = du_HasCast'45'LState_2408
du_HasCast'45'LState_2408 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2408
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
                                 (2392 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1904 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2392 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1860 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2392 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2002 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2406))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2426 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2426
  = C_LEDGER'45'V_2524 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2602 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408
d_certState_2430 ~v0 ~v1 v2 = du_certState_2430 v2
du_certState_2430 ::
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408
du_certState_2430 v0
  = coe
      d_certState_2404 (coe d_'46'generalizedField'45's_8543 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2432 ~v0 ~v1 v2 = du_govSt_2432 v2
du_govSt_2432 ::
  T_GeneralizeTel_8555 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2432 v0
  = coe d_govSt_2402 (coe d_'46'generalizedField'45's_8543 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248
d_utxoSt_2434 ~v0 ~v1 v2 = du_utxoSt_2434 v2
du_utxoSt_2434 ::
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248
du_utxoSt_2434 v0
  = coe d_utxoSt_2400 (coe d_'46'generalizedField'45's_8543 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1114]
d_txcerts_2456 ~v0 ~v1 v2 = du_txcerts_2456 v2
du_txcerts_2456 ::
  T_GeneralizeTel_8555 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1114]
du_txcerts_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_3190
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3352
         (coe d_'46'generalizedField'45'tx_8545 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 -> AgdaAny
d_txid_2462 ~v0 ~v1 v2 = du_txid_2462 v2
du_txid_2462 :: T_GeneralizeTel_8555 -> AgdaAny
du_txid_2462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3208
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3352
         (coe d_'46'generalizedField'45'tx_8545 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_892]
d_txvote_2474 ~v0 ~v1 v2 = du_txvote_2474 v2
du_txvote_2474 ::
  T_GeneralizeTel_8555 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_892]
du_txvote_2474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3194
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3352
         (coe d_'46'generalizedField'45'tx_8545 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2476 ~v0 ~v1 v2 = du_txwdrls_2476 v2
du_txwdrls_2476 ::
  T_GeneralizeTel_8555 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3192
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3352
         (coe d_'46'generalizedField'45'tx_8545 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1028
d_enactState_2480 ~v0 ~v1 v2 = du_enactState_2480 v2
du_enactState_2480 ::
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1028
du_enactState_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2606
      (coe d_'46'generalizedField'45'Γ_8547 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_2482 ~v0 ~v1 v2 = du_pparams_2482 v2
du_pparams_2482 ::
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
du_pparams_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2604
      (coe d_'46'generalizedField'45'Γ_8547 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 -> Maybe AgdaAny
d_ppolicy_2484 ~v0 ~v1 v2 = du_ppolicy_2484 v2
du_ppolicy_2484 :: T_GeneralizeTel_8555 -> Maybe AgdaAny
du_ppolicy_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2602
      (coe d_'46'generalizedField'45'Γ_8547 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 -> AgdaAny
d_slot_2486 ~v0 ~v1 v2 = du_slot_2486 v2
du_slot_2486 :: T_GeneralizeTel_8555 -> AgdaAny
du_slot_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2600
      (coe d_'46'generalizedField'45'Γ_8547 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1372
d_dState_2492 ~v0 ~v1 v2 = du_dState_2492 v2
du_dState_2492 ::
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1372
du_dState_2492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1416
      (coe
         d_certState_2404 (coe d_'46'generalizedField'45's_8543 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2502 ~v0 ~v1 v2 = du_rewards_2502 v2
du_rewards_2502 ::
  T_GeneralizeTel_8555 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1386
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1416
         (coe
            d_certState_2404 (coe d_'46'generalizedField'45's_8543 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_2516 ~v0 ~v1 v2 = du_pparams_2516 v2
du_pparams_2516 ::
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
du_pparams_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2604
      (coe d_'46'generalizedField'45'Γ_8547 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 -> AgdaAny
d_slot_2520 ~v0 ~v1 v2 = du_slot_2520 v2
du_slot_2520 :: T_GeneralizeTel_8555 -> AgdaAny
du_slot_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2600
      (coe d_'46'generalizedField'45'Γ_8547 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_8555 -> Integer
d_treasury_2522 ~v0 ~v1 v2 = du_treasury_2522 v2
du_treasury_2522 :: T_GeneralizeTel_8555 -> Integer
du_treasury_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2608
      (coe d_'46'generalizedField'45'Γ_8547 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_13651 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408
d_certState_2528 ~v0 ~v1 v2 = du_certState_2528 v2
du_certState_2528 ::
  T_GeneralizeTel_13651 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408
du_certState_2528 v0
  = coe
      d_certState_2404 (coe d_'46'generalizedField'45's_13643 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_13651 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2530 ~v0 ~v1 v2 = du_govSt_2530 v2
du_govSt_2530 ::
  T_GeneralizeTel_13651 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2530 v0
  = coe d_govSt_2402 (coe d_'46'generalizedField'45's_13643 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_13651 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248
d_utxoSt_2532 ~v0 ~v1 v2 = du_utxoSt_2532 v2
du_utxoSt_2532 ::
  T_GeneralizeTel_13651 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248
du_utxoSt_2532 v0
  = coe
      d_utxoSt_2400 (coe d_'46'generalizedField'45's_13643 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_13651 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
d_pparams_2594 ~v0 ~v1 v2 = du_pparams_2594 v2
du_pparams_2594 ::
  T_GeneralizeTel_13651 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_310
du_pparams_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2604
      (coe d_'46'generalizedField'45'Γ_13647 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_13651 -> AgdaAny
d_slot_2598 ~v0 ~v1 v2 = du_slot_2598 v2
du_slot_2598 :: T_GeneralizeTel_13651 -> AgdaAny
du_slot_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2600
      (coe d_'46'generalizedField'45'Γ_13647 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  T_GeneralizeTel_13651 -> Integer
d_treasury_2600 ~v0 ~v1 v2 = du_treasury_2600 v2
du_treasury_2600 :: T_GeneralizeTel_13651 -> Integer
du_treasury_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2608
      (coe d_'46'generalizedField'45'Γ_13647 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2142 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2588 ->
  T_LState_2392 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3340] ->
  T_LState_2392 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2620 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8543 ::
  T_GeneralizeTel_8555 -> T_LState_2392
d_'46'generalizedField'45's_8543 v0
  = case coe v0 of
      C_mkGeneralizeTel_8557 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8545 ::
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3340
d_'46'generalizedField'45'tx_8545 v0
  = case coe v0 of
      C_mkGeneralizeTel_8557 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8547 ::
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2588
d_'46'generalizedField'45'Γ_8547 v0
  = case coe v0 of
      C_mkGeneralizeTel_8557 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8549 ::
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248
d_'46'generalizedField'45'utxoSt''_8549 v0
  = case coe v0 of
      C_mkGeneralizeTel_8557 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8551 ::
  T_GeneralizeTel_8555 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408
d_'46'generalizedField'45'certState''_8551 v0
  = case coe v0 of
      C_mkGeneralizeTel_8557 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8553 ::
  T_GeneralizeTel_8555 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8553 v0
  = case coe v0 of
      C_mkGeneralizeTel_8557 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8555 a0 a1 = ()
data T_GeneralizeTel_8555
  = C_mkGeneralizeTel_8557 T_LState_2392
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3340
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2588
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1408
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13643 ::
  T_GeneralizeTel_13651 -> T_LState_2392
d_'46'generalizedField'45's_13643 v0
  = case coe v0 of
      C_mkGeneralizeTel_13653 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13645 ::
  T_GeneralizeTel_13651 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3340
d_'46'generalizedField'45'tx_13645 v0
  = case coe v0 of
      C_mkGeneralizeTel_13653 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13647 ::
  T_GeneralizeTel_13651 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2588
d_'46'generalizedField'45'Γ_13647 v0
  = case coe v0 of
      C_mkGeneralizeTel_13653 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13649 ::
  T_GeneralizeTel_13651 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248
d_'46'generalizedField'45'utxoSt''_13649 v0
  = case coe v0 of
      C_mkGeneralizeTel_13653 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13651 a0 a1 = ()
data T_GeneralizeTel_13651
  = C_mkGeneralizeTel_13653 T_LState_2392
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3340
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2588
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2248
