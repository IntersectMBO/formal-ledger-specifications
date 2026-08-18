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
d_Tx_620 a0 = ()
-- _.epoch
d_epoch_704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_704 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1778
         (coe v0))
-- _.Tx.body
d_body_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426
d_body_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
      (coe v0)
-- _.Tx.isValid
d_isValid_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  Bool
d_isValid_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3644
      (coe v0)
-- _.Tx.txAD
d_txAD_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  Maybe AgdaAny
d_txAD_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3646
      (coe v0)
-- _.Tx.txsize
d_txsize_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  Integer
d_txsize_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3642
      (coe v0)
-- _.Tx.wits
d_wits_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3604
d_wits_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3640
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2948 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2118 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  ()
d_GovState_2124 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2126 ~v0 ~v1 = du_HasCast'45'GovEnv_2126
du_HasCast'45'GovEnv_2126 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2126
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2980
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2168 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2188 v0 ~v1 = du_updateDeposits_2188 v0
du_updateDeposits_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2974
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2514
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  Integer
d_donations_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2516
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  Integer
d_fees_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2512 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2510 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2222 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1388 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1348] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2234 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2270 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2344 ~v0 ~v1 = du_HasCast'45'CertEnv_2344
du_HasCast'45'CertEnv_2344 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2344
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1612
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2554 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1572
d_dState_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1616 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2556 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1592
d_gState_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1620 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2558 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428
d_pState_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1618 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2680 ~v0 ~v1 = du_HasCast'45'LEnv_2680
du_HasCast'45'LEnv_2680 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2680
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_3024
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2682 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2686 ~v0 ~v1 = du_allColdCreds_2686
du_allColdCreds_2686 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2686
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3092
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1456 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2688 v0 ~v1 = du_rmOrphanDRepVotes_2688 v0
du_rmOrphanDRepVotes_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1456 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3074
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2690 ~v0 ~v1 = du_txgov_2690
du_txgov_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3426 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2690
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_3028
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2934 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_enactState_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2952
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2934 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2950
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2934 ->
  Maybe AgdaAny
d_ppolicy_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2948
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2934 ->
  AgdaAny
d_slot_2700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2946
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2934 ->
  Integer
d_treasury_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2954
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2704 a0 a1 = ()
data T_LState_2704
  = C_'10214'_'44'_'44'_'10215''737'_2718 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2712 ::
  T_LState_2704 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
d_utxoSt_2712 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2718 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2714 ::
  T_LState_2704 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2714 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2718 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2716 ::
  T_LState_2704 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
d_certState_2716 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2718 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2720 ~v0 ~v1 = du_HasCast'45'LState_2720
du_HasCast'45'LState_2720 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2720
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
                                 (2704 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2168 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2704 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2124 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2704 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2270 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2718))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2738 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2738
  = C_LEDGER'45'V_2834 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2910 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
d_certState_2742 ~v0 ~v1 v2 = du_certState_2742 v2
du_certState_2742 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
du_certState_2742 v0
  = coe
      d_certState_2716 (coe d_'46'generalizedField'45's_9505 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2744 ~v0 ~v1 v2 = du_govSt_2744 v2
du_govSt_2744 ::
  T_GeneralizeTel_9517 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2744 v0
  = coe d_govSt_2714 (coe d_'46'generalizedField'45's_9505 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
d_utxoSt_2746 ~v0 ~v1 v2 = du_utxoSt_2746 v2
du_utxoSt_2746 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
du_utxoSt_2746 v0
  = coe d_utxoSt_2712 (coe d_'46'generalizedField'45's_9505 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1348]
d_txCerts_2766 ~v0 ~v1 v2 = du_txCerts_2766 v2
du_txCerts_2766 ::
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1348]
du_txCerts_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3474
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1016]
d_txGovVotes_2774 ~v0 ~v1 v2 = du_txGovVotes_2774 v2
du_txGovVotes_2774 ::
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1016]
du_txGovVotes_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3486
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 -> AgdaAny
d_txId_2776 ~v0 ~v1 v2 = du_txId_2776 v2
du_txId_2776 :: T_GeneralizeTel_9517 -> AgdaAny
du_txId_2776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3472
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2786 ~v0 ~v1 v2 = du_txWithdrawals_2786 v2
du_txWithdrawals_2786 ::
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3478
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3638
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_enactState_2790 ~v0 ~v1 v2 = du_enactState_2790 v2
du_enactState_2790 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
du_enactState_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2952
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2792 ~v0 ~v1 v2 = du_pparams_2792 v2
du_pparams_2792 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2950
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 -> Maybe AgdaAny
d_ppolicy_2794 ~v0 ~v1 v2 = du_ppolicy_2794 v2
du_ppolicy_2794 :: T_GeneralizeTel_9517 -> Maybe AgdaAny
du_ppolicy_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2948
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 -> AgdaAny
d_slot_2796 ~v0 ~v1 v2 = du_slot_2796 v2
du_slot_2796 :: T_GeneralizeTel_9517 -> AgdaAny
du_slot_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2946
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1572
d_dState_2802 ~v0 ~v1 v2 = du_dState_2802 v2
du_dState_2802 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1572
du_dState_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1616
      (coe
         d_certState_2716 (coe d_'46'generalizedField'45's_9505 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2812 ~v0 ~v1 v2 = du_rewards_2812 v2
du_rewards_2812 ::
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1586
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1616
         (coe
            d_certState_2716 (coe d_'46'generalizedField'45's_9505 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2826 ~v0 ~v1 v2 = du_pparams_2826 v2
du_pparams_2826 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2950
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 -> AgdaAny
d_slot_2830 ~v0 ~v1 v2 = du_slot_2830 v2
du_slot_2830 :: T_GeneralizeTel_9517 -> AgdaAny
du_slot_2830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2946
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_9517 -> Integer
d_treasury_2832 ~v0 ~v1 v2 = du_treasury_2832 v2
du_treasury_2832 :: T_GeneralizeTel_9517 -> Integer
du_treasury_2832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2954
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
d_certState_2838 ~v0 ~v1 v2 = du_certState_2838 v2
du_certState_2838 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
du_certState_2838 v0
  = coe
      d_certState_2716 (coe d_'46'generalizedField'45's_14671 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_14679 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2840 ~v0 ~v1 v2 = du_govSt_2840 v2
du_govSt_2840 ::
  T_GeneralizeTel_14679 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2840 v0
  = coe d_govSt_2714 (coe d_'46'generalizedField'45's_14671 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
d_utxoSt_2842 ~v0 ~v1 v2 = du_utxoSt_2842 v2
du_utxoSt_2842 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
du_utxoSt_2842 v0
  = coe
      d_utxoSt_2712 (coe d_'46'generalizedField'45's_14671 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2902 ~v0 ~v1 v2 = du_pparams_2902 v2
du_pparams_2902 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2950
      (coe d_'46'generalizedField'45'Γ_14675 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_14679 -> AgdaAny
d_slot_2906 ~v0 ~v1 v2 = du_slot_2906 v2
du_slot_2906 :: T_GeneralizeTel_14679 -> AgdaAny
du_slot_2906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2946
      (coe d_'46'generalizedField'45'Γ_14675 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  T_GeneralizeTel_14679 -> Integer
d_treasury_2908 ~v0 ~v1 v2 = du_treasury_2908 v2
du_treasury_2908 :: T_GeneralizeTel_14679 -> Integer
du_treasury_2908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2954
      (coe d_'46'generalizedField'45'Γ_14675 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2934 ->
  T_LState_2704 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626] ->
  T_LState_2704 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2928 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9505 ::
  T_GeneralizeTel_9517 -> T_LState_2704
d_'46'generalizedField'45's_9505 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9507 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626
d_'46'generalizedField'45'tx_9507 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9509 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2934
d_'46'generalizedField'45'Γ_9509 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9511 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
d_'46'generalizedField'45'utxoSt''_9511 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9513 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
d_'46'generalizedField'45'certState''_9513 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9515 ::
  T_GeneralizeTel_9517 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9515 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9517 a0 a1 = ()
data T_GeneralizeTel_9517
  = C_mkGeneralizeTel_9519 T_LState_2704
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2934
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1608
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14671 ::
  T_GeneralizeTel_14679 -> T_LState_2704
d_'46'generalizedField'45's_14671 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14673 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626
d_'46'generalizedField'45'tx_14673 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14675 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2934
d_'46'generalizedField'45'Γ_14675 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14677 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
d_'46'generalizedField'45'utxoSt''_14677 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14679 a0 a1 = ()
data T_GeneralizeTel_14679
  = C_mkGeneralizeTel_14681 T_LState_2704
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3626
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2934
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2500
