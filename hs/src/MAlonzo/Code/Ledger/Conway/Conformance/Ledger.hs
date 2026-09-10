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
d_Tx_624 a0 = ()
-- _.epoch
d_epoch_710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_710 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1790
         (coe v0))
-- _.Tx.body
d_body_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438
d_body_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
      (coe v0)
-- _.Tx.isValid
d_isValid_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  Bool
d_isValid_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3656
      (coe v0)
-- _.Tx.txAD
d_txAD_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  Maybe AgdaAny
d_txAD_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3658
      (coe v0)
-- _.Tx.txsize
d_txsize_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  Integer
d_txsize_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3654
      (coe v0)
-- _.Tx.wits
d_wits_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3616
d_wits_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3652
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2954 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2124 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  ()
d_GovState_2130 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2132 ~v0 ~v1 = du_HasCast'45'GovEnv_2132
du_HasCast'45'GovEnv_2132 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2132
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2986
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2174 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2194 v0 ~v1 = du_updateDeposits_2194 v0
du_updateDeposits_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2980
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2520
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506 ->
  Integer
d_donations_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2522
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506 ->
  Integer
d_fees_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2518 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2516 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2228 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1394 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1614 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1614 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2240 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2276 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2350 ~v0 ~v1 = du_HasCast'45'CertEnv_2350
du_HasCast'45'CertEnv_2350 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2350
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1618
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2560 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1614 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1578
d_dState_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1622 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2562 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1614 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1598
d_gState_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1626 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2564 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1614 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1434
d_pState_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1624 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2686 ~v0 ~v1 = du_HasCast'45'LEnv_2686
du_HasCast'45'LEnv_2686 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2686
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_3030
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2688 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1182 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2692 ~v0 ~v1 = du_allColdCreds_2692
du_allColdCreds_2692 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1182 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2692
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3098
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1462 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2694 v0 ~v1 = du_rmOrphanDRepVotes_2694 v0
du_rmOrphanDRepVotes_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1462 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3080
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2696 ~v0 ~v1 = du_txgov_2696
du_txgov_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3438 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2696
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_3034
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2940 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1182
d_enactState_2700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2958
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2940 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2956
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2940 ->
  Maybe AgdaAny
d_ppolicy_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2954
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2940 ->
  AgdaAny
d_slot_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2952
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2940 ->
  Integer
d_treasury_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2960
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2710 a0 a1 = ()
data T_LState_2710
  = C_'10214'_'44'_'44'_'10215''737'_2724 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1614
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2718 ::
  T_LState_2710 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
d_utxoSt_2718 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2724 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2720 ::
  T_LState_2710 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2720 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2724 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2722 ::
  T_LState_2710 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1614
d_certState_2722 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2724 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2726 ~v0 ~v1 = du_HasCast'45'LState_2726
du_HasCast'45'LState_2726 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2726
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
                                 (2710 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2174 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2710 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2130 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2710 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2276 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2724))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2744 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2744
  = C_LEDGER'45'V_2840 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2916 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1614
d_certState_2748 ~v0 ~v1 v2 = du_certState_2748 v2
du_certState_2748 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1614
du_certState_2748 v0
  = coe
      d_certState_2722 (coe d_'46'generalizedField'45's_9505 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2750 ~v0 ~v1 v2 = du_govSt_2750 v2
du_govSt_2750 ::
  T_GeneralizeTel_9517 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2750 v0
  = coe d_govSt_2720 (coe d_'46'generalizedField'45's_9505 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
d_utxoSt_2752 ~v0 ~v1 v2 = du_utxoSt_2752 v2
du_utxoSt_2752 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
du_utxoSt_2752 v0
  = coe d_utxoSt_2718 (coe d_'46'generalizedField'45's_9505 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354]
d_txCerts_2772 ~v0 ~v1 v2 = du_txCerts_2772 v2
du_txCerts_2772 ::
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1354]
du_txCerts_2772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3486
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1022]
d_txGovVotes_2780 ~v0 ~v1 v2 = du_txGovVotes_2780 v2
du_txGovVotes_2780 ::
  T_GeneralizeTel_9517 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1022]
du_txGovVotes_2780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3498
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 -> AgdaAny
d_txId_2782 ~v0 ~v1 v2 = du_txId_2782 v2
du_txId_2782 :: T_GeneralizeTel_9517 -> AgdaAny
du_txId_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3484
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2792 ~v0 ~v1 v2 = du_txWithdrawals_2792 v2
du_txWithdrawals_2792 ::
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3490
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3650
         (coe d_'46'generalizedField'45'tx_9507 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1182
d_enactState_2796 ~v0 ~v1 v2 = du_enactState_2796 v2
du_enactState_2796 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1182
du_enactState_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2958
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2798 ~v0 ~v1 v2 = du_pparams_2798 v2
du_pparams_2798 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2956
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 -> Maybe AgdaAny
d_ppolicy_2800 ~v0 ~v1 v2 = du_ppolicy_2800 v2
du_ppolicy_2800 :: T_GeneralizeTel_9517 -> Maybe AgdaAny
du_ppolicy_2800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2954
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 -> AgdaAny
d_slot_2802 ~v0 ~v1 v2 = du_slot_2802 v2
du_slot_2802 :: T_GeneralizeTel_9517 -> AgdaAny
du_slot_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2952
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1578
d_dState_2808 ~v0 ~v1 v2 = du_dState_2808 v2
du_dState_2808 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1578
du_dState_2808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1622
      (coe
         d_certState_2722 (coe d_'46'generalizedField'45's_9505 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2818 ~v0 ~v1 v2 = du_rewards_2818 v2
du_rewards_2818 ::
  T_GeneralizeTel_9517 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1592
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1622
         (coe
            d_certState_2722 (coe d_'46'generalizedField'45's_9505 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2832 ~v0 ~v1 v2 = du_pparams_2832 v2
du_pparams_2832 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2956
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 -> AgdaAny
d_slot_2836 ~v0 ~v1 v2 = du_slot_2836 v2
du_slot_2836 :: T_GeneralizeTel_9517 -> AgdaAny
du_slot_2836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2952
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_9517 -> Integer
d_treasury_2838 ~v0 ~v1 v2 = du_treasury_2838 v2
du_treasury_2838 :: T_GeneralizeTel_9517 -> Integer
du_treasury_2838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2960
      (coe d_'46'generalizedField'45'Γ_9509 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1614
d_certState_2844 ~v0 ~v1 v2 = du_certState_2844 v2
du_certState_2844 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1614
du_certState_2844 v0
  = coe
      d_certState_2722 (coe d_'46'generalizedField'45's_14671 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_14679 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2846 ~v0 ~v1 v2 = du_govSt_2846 v2
du_govSt_2846 ::
  T_GeneralizeTel_14679 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2846 v0
  = coe d_govSt_2720 (coe d_'46'generalizedField'45's_14671 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
d_utxoSt_2848 ~v0 ~v1 v2 = du_utxoSt_2848 v2
du_utxoSt_2848 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
du_utxoSt_2848 v0
  = coe
      d_utxoSt_2718 (coe d_'46'generalizedField'45's_14671 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2908 ~v0 ~v1 v2 = du_pparams_2908 v2
du_pparams_2908 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2956
      (coe d_'46'generalizedField'45'Γ_14675 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_14679 -> AgdaAny
d_slot_2912 ~v0 ~v1 v2 = du_slot_2912 v2
du_slot_2912 :: T_GeneralizeTel_14679 -> AgdaAny
du_slot_2912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2952
      (coe d_'46'generalizedField'45'Γ_14675 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  T_GeneralizeTel_14679 -> Integer
d_treasury_2914 ~v0 ~v1 v2 = du_treasury_2914 v2
du_treasury_2914 :: T_GeneralizeTel_14679 -> Integer
du_treasury_2914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2960
      (coe d_'46'generalizedField'45'Γ_14675 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2934 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2512 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2940 ->
  T_LState_2710 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638] ->
  T_LState_2710 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2934 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9505 ::
  T_GeneralizeTel_9517 -> T_LState_2710
d_'46'generalizedField'45's_9505 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9507 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638
d_'46'generalizedField'45'tx_9507 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9509 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2940
d_'46'generalizedField'45'Γ_9509 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9511 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
d_'46'generalizedField'45'utxoSt''_9511 v0
  = case coe v0 of
      C_mkGeneralizeTel_9519 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9513 ::
  T_GeneralizeTel_9517 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1614
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
  = C_mkGeneralizeTel_9519 T_LState_2710
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2940
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1614
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14671 ::
  T_GeneralizeTel_14679 -> T_LState_2710
d_'46'generalizedField'45's_14671 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14673 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638
d_'46'generalizedField'45'tx_14673 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14675 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2940
d_'46'generalizedField'45'Γ_14675 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14677 ::
  T_GeneralizeTel_14679 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
d_'46'generalizedField'45'utxoSt''_14677 v0
  = case coe v0 of
      C_mkGeneralizeTel_14681 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14679 a0 a1 = ()
data T_GeneralizeTel_14679
  = C_mkGeneralizeTel_14681 T_LState_2710
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3638
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2940
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2506
