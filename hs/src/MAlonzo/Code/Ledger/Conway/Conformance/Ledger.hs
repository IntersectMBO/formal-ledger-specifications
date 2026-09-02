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
d_Tx_646 a0 = ()
-- _.epoch
d_epoch_732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_732 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1842
         (coe v0))
-- _.Tx.body
d_body_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3490
d_body_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3702
      (coe v0)
-- _.Tx.isValid
d_isValid_1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690 ->
  Bool
d_isValid_1972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3708
      (coe v0)
-- _.Tx.txAD
d_txAD_1974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690 ->
  Maybe AgdaAny
d_txAD_1974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3710
      (coe v0)
-- _.Tx.txsize
d_txsize_1976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690 ->
  Integer
d_txsize_1976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3706
      (coe v0)
-- _.Tx.wits
d_wits_1978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3668
d_wits_1978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3704
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2980 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2150 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  ()
d_GovState_2156 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2158 ~v0 ~v1 = du_HasCast'45'GovEnv_2158
du_HasCast'45'GovEnv_2158 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2158
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_3012
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2200 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3490 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2220 v0 ~v1 = du_updateDeposits_2220 v0
du_updateDeposits_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3490 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_3006
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2546
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  Integer
d_donations_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2548
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  Integer
d_fees_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2544 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2542 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2254 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1420 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1380] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2266 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2302 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2376 ~v0 ~v1 = du_HasCast'45'CertEnv_2376
du_HasCast'45'CertEnv_2376 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2376
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1644
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2586 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1604
d_dState_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2588 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1624
d_gState_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1652 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2590 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1460
d_pState_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1650 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2712 ~v0 ~v1 = du_HasCast'45'LEnv_2712
du_HasCast'45'LEnv_2712 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2712
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_3056
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2714 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2718 ~v0 ~v1 = du_allColdCreds_2718
du_allColdCreds_2718 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2718
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3124
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1488 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2720 v0 ~v1 = du_rmOrphanDRepVotes_2720 v0
du_rmOrphanDRepVotes_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1488 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3106
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3490 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2722 ~v0 ~v1 = du_txgov_2722
du_txgov_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3490 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2722
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_3060
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2966 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208
d_enactState_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2984
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2966 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2982
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2966 ->
  Maybe AgdaAny
d_ppolicy_2730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2980
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2966 ->
  AgdaAny
d_slot_2732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2978
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2966 ->
  Integer
d_treasury_2734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2986
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2736 a0 a1 = ()
data T_LState_2736
  = C_'10214'_'44'_'44'_'10215''737'_2750 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2744 ::
  T_LState_2736 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
d_utxoSt_2744 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2750 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2746 ::
  T_LState_2736 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2746 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2750 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2748 ::
  T_LState_2736 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640
d_certState_2748 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2750 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2752 ~v0 ~v1 = du_HasCast'45'LState_2752
du_HasCast'45'LState_2752 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2752
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
                                 (2736 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2200 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2736 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2156 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2736 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2302 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2750))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2770 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2770
  = C_LEDGER'45'V_2866 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2942 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640
d_certState_2774 ~v0 ~v1 v2 = du_certState_2774 v2
du_certState_2774 ::
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640
du_certState_2774 v0
  = coe
      d_certState_2748 (coe d_'46'generalizedField'45's_9545 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2776 ~v0 ~v1 v2 = du_govSt_2776 v2
du_govSt_2776 ::
  T_GeneralizeTel_9557 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2776 v0
  = coe d_govSt_2746 (coe d_'46'generalizedField'45's_9545 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
d_utxoSt_2778 ~v0 ~v1 v2 = du_utxoSt_2778 v2
du_utxoSt_2778 ::
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
du_utxoSt_2778 v0
  = coe d_utxoSt_2744 (coe d_'46'generalizedField'45's_9545 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1380]
d_txCerts_2798 ~v0 ~v1 v2 = du_txCerts_2798 v2
du_txCerts_2798 ::
  T_GeneralizeTel_9557 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1380]
du_txCerts_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3538
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3702
         (coe d_'46'generalizedField'45'tx_9547 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1048]
d_txGovVotes_2806 ~v0 ~v1 v2 = du_txGovVotes_2806 v2
du_txGovVotes_2806 ::
  T_GeneralizeTel_9557 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1048]
du_txGovVotes_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3550
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3702
         (coe d_'46'generalizedField'45'tx_9547 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 -> AgdaAny
d_txId_2808 ~v0 ~v1 v2 = du_txId_2808 v2
du_txId_2808 :: T_GeneralizeTel_9557 -> AgdaAny
du_txId_2808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3536
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3702
         (coe d_'46'generalizedField'45'tx_9547 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2818 ~v0 ~v1 v2 = du_txWithdrawals_2818 v2
du_txWithdrawals_2818 ::
  T_GeneralizeTel_9557 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3542
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3702
         (coe d_'46'generalizedField'45'tx_9547 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208
d_enactState_2822 ~v0 ~v1 v2 = du_enactState_2822 v2
du_enactState_2822 ::
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1208
du_enactState_2822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2984
      (coe d_'46'generalizedField'45'Γ_9549 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2824 ~v0 ~v1 v2 = du_pparams_2824 v2
du_pparams_2824 ::
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2982
      (coe d_'46'generalizedField'45'Γ_9549 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 -> Maybe AgdaAny
d_ppolicy_2826 ~v0 ~v1 v2 = du_ppolicy_2826 v2
du_ppolicy_2826 :: T_GeneralizeTel_9557 -> Maybe AgdaAny
du_ppolicy_2826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2980
      (coe d_'46'generalizedField'45'Γ_9549 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 -> AgdaAny
d_slot_2828 ~v0 ~v1 v2 = du_slot_2828 v2
du_slot_2828 :: T_GeneralizeTel_9557 -> AgdaAny
du_slot_2828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2978
      (coe d_'46'generalizedField'45'Γ_9549 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1604
d_dState_2834 ~v0 ~v1 v2 = du_dState_2834 v2
du_dState_2834 ::
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1604
du_dState_2834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
      (coe
         d_certState_2748 (coe d_'46'generalizedField'45's_9545 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2844 ~v0 ~v1 v2 = du_rewards_2844 v2
du_rewards_2844 ::
  T_GeneralizeTel_9557 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1618
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1648
         (coe
            d_certState_2748 (coe d_'46'generalizedField'45's_9545 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2858 ~v0 ~v1 v2 = du_pparams_2858 v2
du_pparams_2858 ::
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2982
      (coe d_'46'generalizedField'45'Γ_9549 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 -> AgdaAny
d_slot_2862 ~v0 ~v1 v2 = du_slot_2862 v2
du_slot_2862 :: T_GeneralizeTel_9557 -> AgdaAny
du_slot_2862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2978
      (coe d_'46'generalizedField'45'Γ_9549 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_9557 -> Integer
d_treasury_2864 ~v0 ~v1 v2 = du_treasury_2864 v2
du_treasury_2864 :: T_GeneralizeTel_9557 -> Integer
du_treasury_2864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2986
      (coe d_'46'generalizedField'45'Γ_9549 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_14775 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640
d_certState_2870 ~v0 ~v1 v2 = du_certState_2870 v2
du_certState_2870 ::
  T_GeneralizeTel_14775 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640
du_certState_2870 v0
  = coe
      d_certState_2748 (coe d_'46'generalizedField'45's_14767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_14775 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2872 ~v0 ~v1 v2 = du_govSt_2872 v2
du_govSt_2872 ::
  T_GeneralizeTel_14775 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2872 v0
  = coe d_govSt_2746 (coe d_'46'generalizedField'45's_14767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_14775 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
d_utxoSt_2874 ~v0 ~v1 v2 = du_utxoSt_2874 v2
du_utxoSt_2874 ::
  T_GeneralizeTel_14775 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
du_utxoSt_2874 v0
  = coe
      d_utxoSt_2744 (coe d_'46'generalizedField'45's_14767 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_14775 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2934 ~v0 ~v1 v2 = du_pparams_2934 v2
du_pparams_2934 ::
  T_GeneralizeTel_14775 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2982
      (coe d_'46'generalizedField'45'Γ_14771 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_14775 -> AgdaAny
d_slot_2938 ~v0 ~v1 v2 = du_slot_2938 v2
du_slot_2938 :: T_GeneralizeTel_14775 -> AgdaAny
du_slot_2938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2978
      (coe d_'46'generalizedField'45'Γ_14771 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  T_GeneralizeTel_14775 -> Integer
d_treasury_2940 ~v0 ~v1 v2 = du_treasury_2940 v2
du_treasury_2940 :: T_GeneralizeTel_14775 -> Integer
du_treasury_2940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2986
      (coe d_'46'generalizedField'45'Γ_14771 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2538 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2966 ->
  T_LState_2736 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690] ->
  T_LState_2736 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2960 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9545 ::
  T_GeneralizeTel_9557 -> T_LState_2736
d_'46'generalizedField'45's_9545 v0
  = case coe v0 of
      C_mkGeneralizeTel_9559 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9547 ::
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690
d_'46'generalizedField'45'tx_9547 v0
  = case coe v0 of
      C_mkGeneralizeTel_9559 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9549 ::
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2966
d_'46'generalizedField'45'Γ_9549 v0
  = case coe v0 of
      C_mkGeneralizeTel_9559 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9551 ::
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
d_'46'generalizedField'45'utxoSt''_9551 v0
  = case coe v0 of
      C_mkGeneralizeTel_9559 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9553 ::
  T_GeneralizeTel_9557 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640
d_'46'generalizedField'45'certState''_9553 v0
  = case coe v0 of
      C_mkGeneralizeTel_9559 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9555 ::
  T_GeneralizeTel_9557 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9555 v0
  = case coe v0 of
      C_mkGeneralizeTel_9559 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9557 a0 a1 = ()
data T_GeneralizeTel_9557
  = C_mkGeneralizeTel_9559 T_LState_2736
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2966
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1640
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14767 ::
  T_GeneralizeTel_14775 -> T_LState_2736
d_'46'generalizedField'45's_14767 v0
  = case coe v0 of
      C_mkGeneralizeTel_14777 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14769 ::
  T_GeneralizeTel_14775 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690
d_'46'generalizedField'45'tx_14769 v0
  = case coe v0 of
      C_mkGeneralizeTel_14777 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14771 ::
  T_GeneralizeTel_14775 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2966
d_'46'generalizedField'45'Γ_14771 v0
  = case coe v0 of
      C_mkGeneralizeTel_14777 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14773 ::
  T_GeneralizeTel_14775 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
d_'46'generalizedField'45'utxoSt''_14773 v0
  = case coe v0 of
      C_mkGeneralizeTel_14777 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14775 a0 a1 = ()
data T_GeneralizeTel_14775
  = C_mkGeneralizeTel_14777 T_LState_2736
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3690
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2966
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2532
