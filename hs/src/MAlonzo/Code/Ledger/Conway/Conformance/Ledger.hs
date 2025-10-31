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
d_Tx_552 a0 = ()
-- _.epoch
d_epoch_636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_636 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1656
         (coe v0))
-- _.Tx.body
d_body_1788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3262
d_body_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3454
      (coe v0)
-- _.Tx.isValid
d_isValid_1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442 ->
  Bool
d_isValid_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3460
      (coe v0)
-- _.Tx.txAD
d_txAD_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442 ->
  Maybe AgdaAny
d_txAD_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3462
      (coe v0)
-- _.Tx.txsize
d_txsize_1794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442 ->
  Integer
d_txsize_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3458
      (coe v0)
-- _.Tx.wits
d_wits_1796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3420
d_wits_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3456
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2820 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1968 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  ()
d_GovState_1974 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1976 ~v0 ~v1 = du_HasCast'45'GovEnv_1976
du_HasCast'45'GovEnv_1976 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1976
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2852
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2018 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2038 v0 ~v1 = du_updateDeposits_2038 v0
du_updateDeposits_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2898
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2424 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2438
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2424 ->
  Integer
d_donations_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2440
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2424 ->
  Integer
d_fees_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2436 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2424 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2434 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2072 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2084 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2126 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2200 ~v0 ~v1 = du_HasCast'45'CertEnv_2200
du_HasCast'45'CertEnv_2200 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2200
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1550
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2418 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1508
d_dState_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2420 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1528
d_gState_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1556 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2422 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_pState_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1554 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2548 ~v0 ~v1 = du_HasCast'45'LEnv_2548
du_HasCast'45'LEnv_2548 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2868
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2550 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2554 ~v0 ~v1 = du_allColdCreds_2554
du_allColdCreds_2554 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2554
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2936
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2556 v0 ~v1 = du_rmOrphanDRepVotes_2556 v0
du_rmOrphanDRepVotes_2556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2918
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3262 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2558 ~v0 ~v1 = du_txgov_2558
du_txgov_2558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3262 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2558
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2872
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2778 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
d_enactState_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2796
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2778 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2794
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2778 ->
  Maybe AgdaAny
d_ppolicy_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2792
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2778 ->
  AgdaAny
d_slot_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2790
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2778 ->
  Integer
d_treasury_2570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2798
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2572 a0 a1 = ()
data T_LState_2572
  = C_'10214'_'44'_'44'_'10215''737'_2586 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2424
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2580 ::
  T_LState_2572 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2424
d_utxoSt_2580 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2586 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2582 ::
  T_LState_2572 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2582 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2586 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2584 ::
  T_LState_2572 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
d_certState_2584 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2586 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2588 ~v0 ~v1 = du_HasCast'45'LState_2588
du_HasCast'45'LState_2588 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2588
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
                                 (2572 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2018 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2572 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1974 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2572 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2126 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2586))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2606 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2606
  = C_LEDGER'45'V_2702 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2424
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2778 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
d_certState_2610 ~v0 ~v1 v2 = du_certState_2610 v2
du_certState_2610 ::
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
du_certState_2610 v0
  = coe
      d_certState_2584 (coe d_'46'generalizedField'45's_9181 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2612 ~v0 ~v1 v2 = du_govSt_2612 v2
du_govSt_2612 ::
  T_GeneralizeTel_9193 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2612 v0
  = coe d_govSt_2582 (coe d_'46'generalizedField'45's_9181 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2424
d_utxoSt_2614 ~v0 ~v1 v2 = du_utxoSt_2614 v2
du_utxoSt_2614 ::
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2424
du_utxoSt_2614 v0
  = coe d_utxoSt_2580 (coe d_'46'generalizedField'45's_9181 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
d_txCerts_2634 ~v0 ~v1 v2 = du_txCerts_2634 v2
du_txCerts_2634 ::
  T_GeneralizeTel_9193 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290]
du_txCerts_2634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3310
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3454
         (coe d_'46'generalizedField'45'tx_9183 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898]
d_txGovVotes_2642 ~v0 ~v1 v2 = du_txGovVotes_2642 v2
du_txGovVotes_2642 ::
  T_GeneralizeTel_9193 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_898]
du_txGovVotes_2642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3322
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3454
         (coe d_'46'generalizedField'45'tx_9183 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 -> AgdaAny
d_txId_2644 ~v0 ~v1 v2 = du_txId_2644 v2
du_txId_2644 :: T_GeneralizeTel_9193 -> AgdaAny
du_txId_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3308
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3454
         (coe d_'46'generalizedField'45'tx_9183 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2654 ~v0 ~v1 v2 = du_txWithdrawals_2654 v2
du_txWithdrawals_2654 ::
  T_GeneralizeTel_9193 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3314
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3454
         (coe d_'46'generalizedField'45'tx_9183 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
d_enactState_2658 ~v0 ~v1 v2 = du_enactState_2658 v2
du_enactState_2658 ::
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1096
du_enactState_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2796
      (coe d_'46'generalizedField'45'Γ_9185 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2660 ~v0 ~v1 v2 = du_pparams_2660 v2
du_pparams_2660 ::
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_pparams_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2794
      (coe d_'46'generalizedField'45'Γ_9185 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 -> Maybe AgdaAny
d_ppolicy_2662 ~v0 ~v1 v2 = du_ppolicy_2662 v2
du_ppolicy_2662 :: T_GeneralizeTel_9193 -> Maybe AgdaAny
du_ppolicy_2662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2792
      (coe d_'46'generalizedField'45'Γ_9185 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 -> AgdaAny
d_slot_2664 ~v0 ~v1 v2 = du_slot_2664 v2
du_slot_2664 :: T_GeneralizeTel_9193 -> AgdaAny
du_slot_2664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2790
      (coe d_'46'generalizedField'45'Γ_9185 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1508
d_dState_2670 ~v0 ~v1 v2 = du_dState_2670 v2
du_dState_2670 ::
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1508
du_dState_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552
      (coe
         d_certState_2584 (coe d_'46'generalizedField'45's_9181 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2680 ~v0 ~v1 v2 = du_rewards_2680 v2
du_rewards_2680 ::
  T_GeneralizeTel_9193 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1522
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1552
         (coe
            d_certState_2584 (coe d_'46'generalizedField'45's_9181 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2694 ~v0 ~v1 v2 = du_pparams_2694 v2
du_pparams_2694 ::
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_pparams_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2794
      (coe d_'46'generalizedField'45'Γ_9185 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 -> AgdaAny
d_slot_2698 ~v0 ~v1 v2 = du_slot_2698 v2
du_slot_2698 :: T_GeneralizeTel_9193 -> AgdaAny
du_slot_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2790
      (coe d_'46'generalizedField'45'Γ_9185 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_9193 -> Integer
d_treasury_2700 ~v0 ~v1 v2 = du_treasury_2700 v2
du_treasury_2700 :: T_GeneralizeTel_9193 -> Integer
du_treasury_2700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2798
      (coe d_'46'generalizedField'45'Γ_9185 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_14307 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
d_certState_2706 ~v0 ~v1 v2 = du_certState_2706 v2
du_certState_2706 ::
  T_GeneralizeTel_14307 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
du_certState_2706 v0
  = coe
      d_certState_2584 (coe d_'46'generalizedField'45's_14299 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_14307 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2708 ~v0 ~v1 v2 = du_govSt_2708 v2
du_govSt_2708 ::
  T_GeneralizeTel_14307 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2708 v0
  = coe d_govSt_2582 (coe d_'46'generalizedField'45's_14299 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_14307 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2424
d_utxoSt_2710 ~v0 ~v1 v2 = du_utxoSt_2710 v2
du_utxoSt_2710 ::
  T_GeneralizeTel_14307 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2424
du_utxoSt_2710 v0
  = coe
      d_utxoSt_2580 (coe d_'46'generalizedField'45's_14299 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_14307 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_2770 ~v0 ~v1 v2 = du_pparams_2770 v2
du_pparams_2770 ::
  T_GeneralizeTel_14307 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
du_pparams_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2794
      (coe d_'46'generalizedField'45'Γ_14303 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_14307 -> AgdaAny
d_slot_2774 ~v0 ~v1 v2 = du_slot_2774 v2
du_slot_2774 :: T_GeneralizeTel_14307 -> AgdaAny
du_slot_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2790
      (coe d_'46'generalizedField'45'Γ_14303 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  T_GeneralizeTel_14307 -> Integer
d_treasury_2776 ~v0 ~v1 v2 = du_treasury_2776 v2
du_treasury_2776 :: T_GeneralizeTel_14307 -> Integer
du_treasury_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2798
      (coe d_'46'generalizedField'45'Γ_14303 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2778 ->
  T_LState_2572 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442] ->
  T_LState_2572 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2796 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9181 ::
  T_GeneralizeTel_9193 -> T_LState_2572
d_'46'generalizedField'45's_9181 v0
  = case coe v0 of
      C_mkGeneralizeTel_9195 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9183 ::
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442
d_'46'generalizedField'45'tx_9183 v0
  = case coe v0 of
      C_mkGeneralizeTel_9195 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9185 ::
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2778
d_'46'generalizedField'45'Γ_9185 v0
  = case coe v0 of
      C_mkGeneralizeTel_9195 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9187 ::
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2424
d_'46'generalizedField'45'utxoSt''_9187 v0
  = case coe v0 of
      C_mkGeneralizeTel_9195 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9189 ::
  T_GeneralizeTel_9193 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
d_'46'generalizedField'45'certState''_9189 v0
  = case coe v0 of
      C_mkGeneralizeTel_9195 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9191 ::
  T_GeneralizeTel_9193 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9191 v0
  = case coe v0 of
      C_mkGeneralizeTel_9195 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9193 a0 a1 = ()
data T_GeneralizeTel_9193
  = C_mkGeneralizeTel_9195 T_LState_2572
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2778
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2424
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1544
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14299 ::
  T_GeneralizeTel_14307 -> T_LState_2572
d_'46'generalizedField'45's_14299 v0
  = case coe v0 of
      C_mkGeneralizeTel_14309 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14301 ::
  T_GeneralizeTel_14307 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442
d_'46'generalizedField'45'tx_14301 v0
  = case coe v0 of
      C_mkGeneralizeTel_14309 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14303 ::
  T_GeneralizeTel_14307 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2778
d_'46'generalizedField'45'Γ_14303 v0
  = case coe v0 of
      C_mkGeneralizeTel_14309 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14305 ::
  T_GeneralizeTel_14307 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2424
d_'46'generalizedField'45'utxoSt''_14305 v0
  = case coe v0 of
      C_mkGeneralizeTel_14309 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14307 a0 a1 = ()
data T_GeneralizeTel_14307
  = C_mkGeneralizeTel_14309 T_LState_2572
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3442
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2778
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2424
