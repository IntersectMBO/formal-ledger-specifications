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
d_Tx_560 a0 = ()
-- _.epoch
d_epoch_648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_648 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1654
         (coe v0))
-- _.Tx.body
d_body_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3262
d_body_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3454
      (coe v0)
-- _.Tx.isValid
d_isValid_1816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442 ->
  Bool
d_isValid_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3460
      (coe v0)
-- _.Tx.txAD
d_txAD_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442 ->
  Maybe AgdaAny
d_txAD_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3462
      (coe v0)
-- _.Tx.txsize
d_txsize_1820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442 ->
  Integer
d_txsize_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3458
      (coe v0)
-- _.Tx.wits
d_wits_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3420
d_wits_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3456
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2836 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1996 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  ()
d_GovState_2002 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2004 ~v0 ~v1 = du_HasCast'45'GovEnv_2004
du_HasCast'45'GovEnv_2004 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2004
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2868
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2046 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2066 v0 ~v1 = du_updateDeposits_2066 v0
du_updateDeposits_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2858
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2398
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384 ->
  Integer
d_donations_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2400
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384 ->
  Integer
d_fees_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2396 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2394 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2100 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1320 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1284] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2112 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2154 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2224 ~v0 ~v1 = du_HasCast'45'CertEnv_2224
du_HasCast'45'CertEnv_2224 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2224
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1544
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2438 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1512
d_dState_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1556 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2440 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1532
d_gState_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1560 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2442 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1360
d_pState_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1558 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2564 ~v0 ~v1 = du_HasCast'45'LEnv_2564
du_HasCast'45'LEnv_2564 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2564
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2884
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2566 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2570 ~v0 ~v1 = du_allColdCreds_2570
du_allColdCreds_2570 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2570
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2952
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1388 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2572 v0 ~v1 = du_rmOrphanDRepVotes_2572 v0
du_rmOrphanDRepVotes_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1388 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2934
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3262 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2574 ~v0 ~v1 = du_txgov_2574
du_txgov_2574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3262 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2574
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2888
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2794 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112
d_enactState_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2812
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2794 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2810
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2794 ->
  Maybe AgdaAny
d_ppolicy_2582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2808
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2794 ->
  AgdaAny
d_slot_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2806
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2794 ->
  Integer
d_treasury_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2814
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2588 a0 a1 = ()
data T_LState_2588
  = C_'10214'_'44'_'44'_'10215''737'_2602 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2596 ::
  T_LState_2588 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384
d_utxoSt_2596 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2602 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2598 ::
  T_LState_2588 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2598 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2602 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2600 ::
  T_LState_2588 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548
d_certState_2600 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2602 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2604 ~v0 ~v1 = du_HasCast'45'LState_2604
du_HasCast'45'LState_2604 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2604
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
                                 (2588 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2046 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2588 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2588 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2154 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2602))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2622 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2622
  = C_LEDGER'45'V_2718 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2794 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548
d_certState_2626 ~v0 ~v1 v2 = du_certState_2626 v2
du_certState_2626 ::
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548
du_certState_2626 v0
  = coe
      d_certState_2600 (coe d_'46'generalizedField'45's_9197 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2628 ~v0 ~v1 v2 = du_govSt_2628 v2
du_govSt_2628 ::
  T_GeneralizeTel_9209 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2628 v0
  = coe d_govSt_2598 (coe d_'46'generalizedField'45's_9197 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384
d_utxoSt_2630 ~v0 ~v1 v2 = du_utxoSt_2630 v2
du_utxoSt_2630 ::
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384
du_utxoSt_2630 v0
  = coe d_utxoSt_2596 (coe d_'46'generalizedField'45's_9197 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1284]
d_txCerts_2650 ~v0 ~v1 v2 = du_txCerts_2650 v2
du_txCerts_2650 ::
  T_GeneralizeTel_9209 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1284]
du_txCerts_2650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3310
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3454
         (coe d_'46'generalizedField'45'tx_9199 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898]
d_txGovVotes_2658 ~v0 ~v1 v2 = du_txGovVotes_2658 v2
du_txGovVotes_2658 ::
  T_GeneralizeTel_9209 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898]
du_txGovVotes_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3322
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3454
         (coe d_'46'generalizedField'45'tx_9199 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 -> AgdaAny
d_txId_2660 ~v0 ~v1 v2 = du_txId_2660 v2
du_txId_2660 :: T_GeneralizeTel_9209 -> AgdaAny
du_txId_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3308
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3454
         (coe d_'46'generalizedField'45'tx_9199 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2670 ~v0 ~v1 v2 = du_txWithdrawals_2670 v2
du_txWithdrawals_2670 ::
  T_GeneralizeTel_9209 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3314
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3454
         (coe d_'46'generalizedField'45'tx_9199 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112
d_enactState_2674 ~v0 ~v1 v2 = du_enactState_2674 v2
du_enactState_2674 ::
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1112
du_enactState_2674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2812
      (coe d_'46'generalizedField'45'Γ_9201 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2676 ~v0 ~v1 v2 = du_pparams_2676 v2
du_pparams_2676 ::
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_pparams_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2810
      (coe d_'46'generalizedField'45'Γ_9201 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 -> Maybe AgdaAny
d_ppolicy_2678 ~v0 ~v1 v2 = du_ppolicy_2678 v2
du_ppolicy_2678 :: T_GeneralizeTel_9209 -> Maybe AgdaAny
du_ppolicy_2678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2808
      (coe d_'46'generalizedField'45'Γ_9201 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 -> AgdaAny
d_slot_2680 ~v0 ~v1 v2 = du_slot_2680 v2
du_slot_2680 :: T_GeneralizeTel_9209 -> AgdaAny
du_slot_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2806
      (coe d_'46'generalizedField'45'Γ_9201 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1512
d_dState_2686 ~v0 ~v1 v2 = du_dState_2686 v2
du_dState_2686 ::
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1512
du_dState_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1556
      (coe
         d_certState_2600 (coe d_'46'generalizedField'45's_9197 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2696 ~v0 ~v1 v2 = du_rewards_2696 v2
du_rewards_2696 ::
  T_GeneralizeTel_9209 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1526
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1556
         (coe
            d_certState_2600 (coe d_'46'generalizedField'45's_9197 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2710 ~v0 ~v1 v2 = du_pparams_2710 v2
du_pparams_2710 ::
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_pparams_2710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2810
      (coe d_'46'generalizedField'45'Γ_9201 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 -> AgdaAny
d_slot_2714 ~v0 ~v1 v2 = du_slot_2714 v2
du_slot_2714 :: T_GeneralizeTel_9209 -> AgdaAny
du_slot_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2806
      (coe d_'46'generalizedField'45'Γ_9201 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_9209 -> Integer
d_treasury_2716 ~v0 ~v1 v2 = du_treasury_2716 v2
du_treasury_2716 :: T_GeneralizeTel_9209 -> Integer
du_treasury_2716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2814
      (coe d_'46'generalizedField'45'Γ_9201 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_14323 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548
d_certState_2722 ~v0 ~v1 v2 = du_certState_2722 v2
du_certState_2722 ::
  T_GeneralizeTel_14323 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548
du_certState_2722 v0
  = coe
      d_certState_2600 (coe d_'46'generalizedField'45's_14315 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_14323 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2724 ~v0 ~v1 v2 = du_govSt_2724 v2
du_govSt_2724 ::
  T_GeneralizeTel_14323 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2724 v0
  = coe d_govSt_2598 (coe d_'46'generalizedField'45's_14315 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_14323 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384
d_utxoSt_2726 ~v0 ~v1 v2 = du_utxoSt_2726 v2
du_utxoSt_2726 ::
  T_GeneralizeTel_14323 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384
du_utxoSt_2726 v0
  = coe
      d_utxoSt_2596 (coe d_'46'generalizedField'45's_14315 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_14323 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2786 ~v0 ~v1 v2 = du_pparams_2786 v2
du_pparams_2786 ::
  T_GeneralizeTel_14323 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_pparams_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2810
      (coe d_'46'generalizedField'45'Γ_14319 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_14323 -> AgdaAny
d_slot_2790 ~v0 ~v1 v2 = du_slot_2790 v2
du_slot_2790 :: T_GeneralizeTel_14323 -> AgdaAny
du_slot_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2806
      (coe d_'46'generalizedField'45'Γ_14319 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  T_GeneralizeTel_14323 -> Integer
d_treasury_2792 ~v0 ~v1 v2 = du_treasury_2792 v2
du_treasury_2792 :: T_GeneralizeTel_14323 -> Integer
du_treasury_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2814
      (coe d_'46'generalizedField'45'Γ_14319 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2794 ->
  T_LState_2588 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442] ->
  T_LState_2588 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2812 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9197 ::
  T_GeneralizeTel_9209 -> T_LState_2588
d_'46'generalizedField'45's_9197 v0
  = case coe v0 of
      C_mkGeneralizeTel_9211 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9199 ::
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442
d_'46'generalizedField'45'tx_9199 v0
  = case coe v0 of
      C_mkGeneralizeTel_9211 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9201 ::
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2794
d_'46'generalizedField'45'Γ_9201 v0
  = case coe v0 of
      C_mkGeneralizeTel_9211 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9203 ::
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384
d_'46'generalizedField'45'utxoSt''_9203 v0
  = case coe v0 of
      C_mkGeneralizeTel_9211 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9205 ::
  T_GeneralizeTel_9209 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548
d_'46'generalizedField'45'certState''_9205 v0
  = case coe v0 of
      C_mkGeneralizeTel_9211 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9207 ::
  T_GeneralizeTel_9209 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9207 v0
  = case coe v0 of
      C_mkGeneralizeTel_9211 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9209 a0 a1 = ()
data T_GeneralizeTel_9209
  = C_mkGeneralizeTel_9211 T_LState_2588
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2794
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1548
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14315 ::
  T_GeneralizeTel_14323 -> T_LState_2588
d_'46'generalizedField'45's_14315 v0
  = case coe v0 of
      C_mkGeneralizeTel_14325 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14317 ::
  T_GeneralizeTel_14323 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442
d_'46'generalizedField'45'tx_14317 v0
  = case coe v0 of
      C_mkGeneralizeTel_14325 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14319 ::
  T_GeneralizeTel_14323 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2794
d_'46'generalizedField'45'Γ_14319 v0
  = case coe v0 of
      C_mkGeneralizeTel_14325 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14321 ::
  T_GeneralizeTel_14323 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384
d_'46'generalizedField'45'utxoSt''_14321 v0
  = case coe v0 of
      C_mkGeneralizeTel_14325 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14323 a0 a1 = ()
data T_GeneralizeTel_14323
  = C_mkGeneralizeTel_14325 T_LState_2588
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2794
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2384
