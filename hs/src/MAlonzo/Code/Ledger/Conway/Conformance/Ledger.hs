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
d_Tx_612 a0 = ()
-- _.epoch
d_epoch_696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_696 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1778
         (coe v0))
-- _.Tx.body
d_body_1926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_body_1926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
      (coe v0)
-- _.Tx.isValid
d_isValid_1928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  Bool
d_isValid_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3632
      (coe v0)
-- _.Tx.txAD
d_txAD_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  Maybe AgdaAny
d_txAD_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3634
      (coe v0)
-- _.Tx.txsize
d_txsize_1932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  Integer
d_txsize_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3630
      (coe v0)
-- _.Tx.wits
d_wits_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3592
d_wits_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3628
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2950 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2106 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  ()
d_GovState_2112 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2114 ~v0 ~v1 = du_HasCast'45'GovEnv_2114
du_HasCast'45'GovEnv_2114 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2114
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2982
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2156 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2176 v0 ~v1 = du_updateDeposits_2176 v0
du_updateDeposits_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2970
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2510
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  Integer
d_donations_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2512
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  Integer
d_fees_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2508 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2506 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2210 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1388 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1348] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2222 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2264 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2338 ~v0 ~v1 = du_HasCast'45'CertEnv_2338
du_HasCast'45'CertEnv_2338 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2338
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1612
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2552 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1580
d_dState_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2554 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1600
d_gState_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1628 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2556 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1428
d_pState_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1626 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2678 ~v0 ~v1 = du_HasCast'45'LEnv_2678
du_HasCast'45'LEnv_2678 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2678
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_3020
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2680 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2684 ~v0 ~v1 = du_allColdCreds_2684
du_allColdCreds_2684 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2684
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3088
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1456 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2686 v0 ~v1 = du_rmOrphanDRepVotes_2686 v0
du_rmOrphanDRepVotes_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1456 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3070
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2688 ~v0 ~v1 = du_txgov_2688
du_txgov_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2688
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_3024
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2930 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_enactState_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2948
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2930 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2946
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2930 ->
  Maybe AgdaAny
d_ppolicy_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2944
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2930 ->
  AgdaAny
d_slot_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2942
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2930 ->
  Integer
d_treasury_2700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2950
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2702 a0 a1 = ()
data T_LState_2702
  = C_'10214'_'44'_'44'_'10215''737'_2716 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2710 ::
  T_LState_2702 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
d_utxoSt_2710 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2716 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2712 ::
  T_LState_2702 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2712 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2716 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2714 ::
  T_LState_2702 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616
d_certState_2714 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2716 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2718 ~v0 ~v1 = du_HasCast'45'LState_2718
du_HasCast'45'LState_2718 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2718
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
                                 (2702 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2156 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2702 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2112 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2702 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2264 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2716))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2736 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2736
  = C_LEDGER'45'V_2832 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2908 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616
d_certState_2740 ~v0 ~v1 v2 = du_certState_2740 v2
du_certState_2740 ::
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616
du_certState_2740 v0
  = coe
      d_certState_2714 (coe d_'46'generalizedField'45's_9487 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2742 ~v0 ~v1 v2 = du_govSt_2742 v2
du_govSt_2742 ::
  T_GeneralizeTel_9499 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2742 v0
  = coe d_govSt_2712 (coe d_'46'generalizedField'45's_9487 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
d_utxoSt_2744 ~v0 ~v1 v2 = du_utxoSt_2744 v2
du_utxoSt_2744 ::
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
du_utxoSt_2744 v0
  = coe d_utxoSt_2710 (coe d_'46'generalizedField'45's_9487 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1348]
d_txCerts_2764 ~v0 ~v1 v2 = du_txCerts_2764 v2
du_txCerts_2764 ::
  T_GeneralizeTel_9499 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1348]
du_txCerts_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3482
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
         (coe d_'46'generalizedField'45'tx_9489 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1016]
d_txGovVotes_2772 ~v0 ~v1 v2 = du_txGovVotes_2772 v2
du_txGovVotes_2772 ::
  T_GeneralizeTel_9499 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1016]
du_txGovVotes_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
         (coe d_'46'generalizedField'45'tx_9489 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 -> AgdaAny
d_txId_2774 ~v0 ~v1 v2 = du_txId_2774 v2
du_txId_2774 :: T_GeneralizeTel_9499 -> AgdaAny
du_txId_2774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3480
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
         (coe d_'46'generalizedField'45'tx_9489 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2784 ~v0 ~v1 v2 = du_txWithdrawals_2784 v2
du_txWithdrawals_2784 ::
  T_GeneralizeTel_9499 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3486
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3626
         (coe d_'46'generalizedField'45'tx_9489 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
d_enactState_2788 ~v0 ~v1 v2 = du_enactState_2788 v2
du_enactState_2788 ::
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1176
du_enactState_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2948
      (coe d_'46'generalizedField'45'Γ_9491 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2790 ~v0 ~v1 v2 = du_pparams_2790 v2
du_pparams_2790 ::
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2946
      (coe d_'46'generalizedField'45'Γ_9491 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 -> Maybe AgdaAny
d_ppolicy_2792 ~v0 ~v1 v2 = du_ppolicy_2792 v2
du_ppolicy_2792 :: T_GeneralizeTel_9499 -> Maybe AgdaAny
du_ppolicy_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2944
      (coe d_'46'generalizedField'45'Γ_9491 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 -> AgdaAny
d_slot_2794 ~v0 ~v1 v2 = du_slot_2794 v2
du_slot_2794 :: T_GeneralizeTel_9499 -> AgdaAny
du_slot_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2942
      (coe d_'46'generalizedField'45'Γ_9491 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1580
d_dState_2800 ~v0 ~v1 v2 = du_dState_2800 v2
du_dState_2800 ::
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1580
du_dState_2800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
      (coe
         d_certState_2714 (coe d_'46'generalizedField'45's_9487 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2810 ~v0 ~v1 v2 = du_rewards_2810 v2
du_rewards_2810 ::
  T_GeneralizeTel_9499 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1594
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1624
         (coe
            d_certState_2714 (coe d_'46'generalizedField'45's_9487 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2824 ~v0 ~v1 v2 = du_pparams_2824 v2
du_pparams_2824 ::
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2946
      (coe d_'46'generalizedField'45'Γ_9491 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 -> AgdaAny
d_slot_2828 ~v0 ~v1 v2 = du_slot_2828 v2
du_slot_2828 :: T_GeneralizeTel_9499 -> AgdaAny
du_slot_2828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2942
      (coe d_'46'generalizedField'45'Γ_9491 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_9499 -> Integer
d_treasury_2830 ~v0 ~v1 v2 = du_treasury_2830 v2
du_treasury_2830 :: T_GeneralizeTel_9499 -> Integer
du_treasury_2830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2950
      (coe d_'46'generalizedField'45'Γ_9491 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_14661 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616
d_certState_2836 ~v0 ~v1 v2 = du_certState_2836 v2
du_certState_2836 ::
  T_GeneralizeTel_14661 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616
du_certState_2836 v0
  = coe
      d_certState_2714 (coe d_'46'generalizedField'45's_14653 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_14661 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2838 ~v0 ~v1 v2 = du_govSt_2838 v2
du_govSt_2838 ::
  T_GeneralizeTel_14661 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2838 v0
  = coe d_govSt_2712 (coe d_'46'generalizedField'45's_14653 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_14661 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
d_utxoSt_2840 ~v0 ~v1 v2 = du_utxoSt_2840 v2
du_utxoSt_2840 ::
  T_GeneralizeTel_14661 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
du_utxoSt_2840 v0
  = coe
      d_utxoSt_2710 (coe d_'46'generalizedField'45's_14653 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_14661 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2900 ~v0 ~v1 v2 = du_pparams_2900 v2
du_pparams_2900 ::
  T_GeneralizeTel_14661 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2946
      (coe d_'46'generalizedField'45'Γ_14657 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_14661 -> AgdaAny
d_slot_2904 ~v0 ~v1 v2 = du_slot_2904 v2
du_slot_2904 :: T_GeneralizeTel_14661 -> AgdaAny
du_slot_2904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2942
      (coe d_'46'generalizedField'45'Γ_14657 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  T_GeneralizeTel_14661 -> Integer
d_treasury_2906 ~v0 ~v1 v2 = du_treasury_2906 v2
du_treasury_2906 :: T_GeneralizeTel_14661 -> Integer
du_treasury_2906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2950
      (coe d_'46'generalizedField'45'Γ_14657 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2502 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2930 ->
  T_LState_2702 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614] ->
  T_LState_2702 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2926 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9487 ::
  T_GeneralizeTel_9499 -> T_LState_2702
d_'46'generalizedField'45's_9487 v0
  = case coe v0 of
      C_mkGeneralizeTel_9501 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9489 ::
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614
d_'46'generalizedField'45'tx_9489 v0
  = case coe v0 of
      C_mkGeneralizeTel_9501 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9491 ::
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2930
d_'46'generalizedField'45'Γ_9491 v0
  = case coe v0 of
      C_mkGeneralizeTel_9501 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9493 ::
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
d_'46'generalizedField'45'utxoSt''_9493 v0
  = case coe v0 of
      C_mkGeneralizeTel_9501 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9495 ::
  T_GeneralizeTel_9499 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616
d_'46'generalizedField'45'certState''_9495 v0
  = case coe v0 of
      C_mkGeneralizeTel_9501 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9497 ::
  T_GeneralizeTel_9499 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9497 v0
  = case coe v0 of
      C_mkGeneralizeTel_9501 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9499 a0 a1 = ()
data T_GeneralizeTel_9499
  = C_mkGeneralizeTel_9501 T_LState_2702
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2930
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1616
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14653 ::
  T_GeneralizeTel_14661 -> T_LState_2702
d_'46'generalizedField'45's_14653 v0
  = case coe v0 of
      C_mkGeneralizeTel_14663 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14655 ::
  T_GeneralizeTel_14661 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614
d_'46'generalizedField'45'tx_14655 v0
  = case coe v0 of
      C_mkGeneralizeTel_14663 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14657 ::
  T_GeneralizeTel_14661 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2930
d_'46'generalizedField'45'Γ_14657 v0
  = case coe v0 of
      C_mkGeneralizeTel_14663 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14659 ::
  T_GeneralizeTel_14661 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
d_'46'generalizedField'45'utxoSt''_14659 v0
  = case coe v0 of
      C_mkGeneralizeTel_14663 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14661 a0 a1 = ()
data T_GeneralizeTel_14661
  = C_mkGeneralizeTel_14663 T_LState_2702
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3614
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2930
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2496
