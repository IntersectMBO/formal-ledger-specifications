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
d_Tx_598 a0 = ()
-- _.epoch
d_epoch_682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_682 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1724
         (coe v0))
-- _.Tx.body
d_body_1880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3350
d_body_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3542
      (coe v0)
-- _.Tx.isValid
d_isValid_1882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  Bool
d_isValid_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3548
      (coe v0)
-- _.Tx.txAD
d_txAD_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  Maybe AgdaAny
d_txAD_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3550
      (coe v0)
-- _.Tx.txsize
d_txsize_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  Integer
d_txsize_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3546
      (coe v0)
-- _.Tx.wits
d_wits_1888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3508
d_wits_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3544
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2910 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2066 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  ()
d_GovState_2072 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2074 ~v0 ~v1 = du_HasCast'45'GovEnv_2074
du_HasCast'45'GovEnv_2074 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2074
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2942
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2116 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2136 v0 ~v1 = du_updateDeposits_2136 v0
du_updateDeposits_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2930
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2470
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456 ->
  Integer
d_donations_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2472
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456 ->
  Integer
d_fees_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2468 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2466 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2170 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1362 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1322] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2182 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2224 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2298 ~v0 ~v1 = du_HasCast'45'CertEnv_2298
du_HasCast'45'CertEnv_2298 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2298
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1586
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2512 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1554
d_dState_2512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1598 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2514 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1574
d_gState_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1602 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2516 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1402
d_pState_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1600 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2638 ~v0 ~v1 = du_HasCast'45'LEnv_2638
du_HasCast'45'LEnv_2638 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2638
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2966
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2640 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1150 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2644 ~v0 ~v1 = du_allColdCreds_2644
du_allColdCreds_2644 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1150 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2644
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3034
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1430 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2646 v0 ~v1 = du_rmOrphanDRepVotes_2646 v0
du_rmOrphanDRepVotes_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1430 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3016
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3350 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2648 ~v0 ~v1 = du_txgov_2648
du_txgov_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3350 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2648
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2970
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2876 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1150
d_enactState_2652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2894
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2876 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2892
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2876 ->
  Maybe AgdaAny
d_ppolicy_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2890
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2876 ->
  AgdaAny
d_slot_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2888
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2876 ->
  Integer
d_treasury_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2896
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2662 a0 a1 = ()
data T_LState_2662
  = C_'10214'_'44'_'44'_'10215''737'_2676 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2670 ::
  T_LState_2662 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
d_utxoSt_2670 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2676 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2672 ::
  T_LState_2662 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2672 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2676 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2674 ::
  T_LState_2662 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
d_certState_2674 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2676 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2678 ~v0 ~v1 = du_HasCast'45'LState_2678
du_HasCast'45'LState_2678 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2678
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
                                 (2662 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2116 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2662 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2072 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2662 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2224 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2676))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2696 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2696
  = C_LEDGER'45'V_2792 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2868 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
d_certState_2700 ~v0 ~v1 v2 = du_certState_2700 v2
du_certState_2700 ::
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
du_certState_2700 v0
  = coe
      d_certState_2674 (coe d_'46'generalizedField'45's_9409 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2702 ~v0 ~v1 v2 = du_govSt_2702 v2
du_govSt_2702 ::
  T_GeneralizeTel_9421 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2702 v0
  = coe d_govSt_2672 (coe d_'46'generalizedField'45's_9409 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
d_utxoSt_2704 ~v0 ~v1 v2 = du_utxoSt_2704 v2
du_utxoSt_2704 ::
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
du_utxoSt_2704 v0
  = coe d_utxoSt_2670 (coe d_'46'generalizedField'45's_9409 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1322]
d_txCerts_2724 ~v0 ~v1 v2 = du_txCerts_2724 v2
du_txCerts_2724 ::
  T_GeneralizeTel_9421 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1322]
du_txCerts_2724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3398
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3542
         (coe d_'46'generalizedField'45'tx_9411 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_990]
d_txGovVotes_2732 ~v0 ~v1 v2 = du_txGovVotes_2732 v2
du_txGovVotes_2732 ::
  T_GeneralizeTel_9421 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_990]
du_txGovVotes_2732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3410
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3542
         (coe d_'46'generalizedField'45'tx_9411 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 -> AgdaAny
d_txId_2734 ~v0 ~v1 v2 = du_txId_2734 v2
du_txId_2734 :: T_GeneralizeTel_9421 -> AgdaAny
du_txId_2734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3396
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3542
         (coe d_'46'generalizedField'45'tx_9411 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2744 ~v0 ~v1 v2 = du_txWithdrawals_2744 v2
du_txWithdrawals_2744 ::
  T_GeneralizeTel_9421 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3402
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3542
         (coe d_'46'generalizedField'45'tx_9411 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1150
d_enactState_2748 ~v0 ~v1 v2 = du_enactState_2748 v2
du_enactState_2748 ::
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1150
du_enactState_2748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2894
      (coe d_'46'generalizedField'45'Γ_9413 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2750 ~v0 ~v1 v2 = du_pparams_2750 v2
du_pparams_2750 ::
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2892
      (coe d_'46'generalizedField'45'Γ_9413 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 -> Maybe AgdaAny
d_ppolicy_2752 ~v0 ~v1 v2 = du_ppolicy_2752 v2
du_ppolicy_2752 :: T_GeneralizeTel_9421 -> Maybe AgdaAny
du_ppolicy_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2890
      (coe d_'46'generalizedField'45'Γ_9413 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 -> AgdaAny
d_slot_2754 ~v0 ~v1 v2 = du_slot_2754 v2
du_slot_2754 :: T_GeneralizeTel_9421 -> AgdaAny
du_slot_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2888
      (coe d_'46'generalizedField'45'Γ_9413 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1554
d_dState_2760 ~v0 ~v1 v2 = du_dState_2760 v2
du_dState_2760 ::
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1554
du_dState_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1598
      (coe
         d_certState_2674 (coe d_'46'generalizedField'45's_9409 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2770 ~v0 ~v1 v2 = du_rewards_2770 v2
du_rewards_2770 ::
  T_GeneralizeTel_9421 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1568
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1598
         (coe
            d_certState_2674 (coe d_'46'generalizedField'45's_9409 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2784 ~v0 ~v1 v2 = du_pparams_2784 v2
du_pparams_2784 ::
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2892
      (coe d_'46'generalizedField'45'Γ_9413 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 -> AgdaAny
d_slot_2788 ~v0 ~v1 v2 = du_slot_2788 v2
du_slot_2788 :: T_GeneralizeTel_9421 -> AgdaAny
du_slot_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2888
      (coe d_'46'generalizedField'45'Γ_9413 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_9421 -> Integer
d_treasury_2790 ~v0 ~v1 v2 = du_treasury_2790 v2
du_treasury_2790 :: T_GeneralizeTel_9421 -> Integer
du_treasury_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2896
      (coe d_'46'generalizedField'45'Γ_9413 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_14583 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
d_certState_2796 ~v0 ~v1 v2 = du_certState_2796 v2
du_certState_2796 ::
  T_GeneralizeTel_14583 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
du_certState_2796 v0
  = coe
      d_certState_2674 (coe d_'46'generalizedField'45's_14575 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_14583 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2798 ~v0 ~v1 v2 = du_govSt_2798 v2
du_govSt_2798 ::
  T_GeneralizeTel_14583 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2798 v0
  = coe d_govSt_2672 (coe d_'46'generalizedField'45's_14575 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_14583 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
d_utxoSt_2800 ~v0 ~v1 v2 = du_utxoSt_2800 v2
du_utxoSt_2800 ::
  T_GeneralizeTel_14583 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
du_utxoSt_2800 v0
  = coe
      d_utxoSt_2670 (coe d_'46'generalizedField'45's_14575 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_14583 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2860 ~v0 ~v1 v2 = du_pparams_2860 v2
du_pparams_2860 ::
  T_GeneralizeTel_14583 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2892
      (coe d_'46'generalizedField'45'Γ_14579 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_14583 -> AgdaAny
d_slot_2864 ~v0 ~v1 v2 = du_slot_2864 v2
du_slot_2864 :: T_GeneralizeTel_14583 -> AgdaAny
du_slot_2864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2888
      (coe d_'46'generalizedField'45'Γ_14579 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  T_GeneralizeTel_14583 -> Integer
d_treasury_2866 ~v0 ~v1 v2 = du_treasury_2866 v2
du_treasury_2866 :: T_GeneralizeTel_14583 -> Integer
du_treasury_2866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2896
      (coe d_'46'generalizedField'45'Γ_14579 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2876 ->
  T_LState_2662 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530] ->
  T_LState_2662 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2886 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9409 ::
  T_GeneralizeTel_9421 -> T_LState_2662
d_'46'generalizedField'45's_9409 v0
  = case coe v0 of
      C_mkGeneralizeTel_9423 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9411 ::
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530
d_'46'generalizedField'45'tx_9411 v0
  = case coe v0 of
      C_mkGeneralizeTel_9423 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9413 ::
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2876
d_'46'generalizedField'45'Γ_9413 v0
  = case coe v0 of
      C_mkGeneralizeTel_9423 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9415 ::
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
d_'46'generalizedField'45'utxoSt''_9415 v0
  = case coe v0 of
      C_mkGeneralizeTel_9423 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9417 ::
  T_GeneralizeTel_9421 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
d_'46'generalizedField'45'certState''_9417 v0
  = case coe v0 of
      C_mkGeneralizeTel_9423 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9419 ::
  T_GeneralizeTel_9421 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9419 v0
  = case coe v0 of
      C_mkGeneralizeTel_9423 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9421 a0 a1 = ()
data T_GeneralizeTel_9421
  = C_mkGeneralizeTel_9423 T_LState_2662
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2876
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1590
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14575 ::
  T_GeneralizeTel_14583 -> T_LState_2662
d_'46'generalizedField'45's_14575 v0
  = case coe v0 of
      C_mkGeneralizeTel_14585 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14577 ::
  T_GeneralizeTel_14583 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530
d_'46'generalizedField'45'tx_14577 v0
  = case coe v0 of
      C_mkGeneralizeTel_14585 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14579 ::
  T_GeneralizeTel_14583 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2876
d_'46'generalizedField'45'Γ_14579 v0
  = case coe v0 of
      C_mkGeneralizeTel_14585 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14581 ::
  T_GeneralizeTel_14583 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
d_'46'generalizedField'45'utxoSt''_14581 v0
  = case coe v0 of
      C_mkGeneralizeTel_14585 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14583 a0 a1 = ()
data T_GeneralizeTel_14583
  = C_mkGeneralizeTel_14585 T_LState_2662
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3530
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2876
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2456
