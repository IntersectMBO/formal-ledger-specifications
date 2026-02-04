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
d_Tx_584 a0 = ()
-- _.epoch
d_epoch_672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_672 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1716
         (coe v0))
-- _.Tx.body
d_body_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338
d_body_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
      (coe v0)
-- _.Tx.isValid
d_isValid_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  Bool
d_isValid_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3536
      (coe v0)
-- _.Tx.txAD
d_txAD_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  Maybe AgdaAny
d_txAD_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3538
      (coe v0)
-- _.Tx.txsize
d_txsize_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  Integer
d_txsize_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3534
      (coe v0)
-- _.Tx.wits
d_wits_1860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3496
d_wits_1860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3532
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2884 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2044 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  ()
d_GovState_2050 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2052 ~v0 ~v1 = du_HasCast'45'GovEnv_2052
du_HasCast'45'GovEnv_2052 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2052
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2916
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2094 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2114 v0 ~v1 = du_updateDeposits_2114 v0
du_updateDeposits_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2904
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2444
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  Integer
d_donations_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2446
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  Integer
d_fees_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2442 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2440 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2148 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1350 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2160 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2202 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2272 ~v0 ~v1 = du_HasCast'45'CertEnv_2272
du_HasCast'45'CertEnv_2272 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2272
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1574
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2486 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1542
d_dState_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1586 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2488 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1562
d_gState_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1590 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2490 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1390
d_pState_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1588 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2612 ~v0 ~v1 = du_HasCast'45'LEnv_2612
du_HasCast'45'LEnv_2612 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2612
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2934
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2614 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2618 ~v0 ~v1 = du_allColdCreds_2618
du_allColdCreds_2618 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2618
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3002
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2620 v0 ~v1 = du_rmOrphanDRepVotes_2620 v0
du_rmOrphanDRepVotes_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1418 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2984
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2622 ~v0 ~v1 = du_txgov_2622
du_txgov_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3338 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2622
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2938
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2844 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142
d_enactState_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2862
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2844 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2860
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2844 ->
  Maybe AgdaAny
d_ppolicy_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2858
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2844 ->
  AgdaAny
d_slot_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2856
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2844 ->
  Integer
d_treasury_2634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2864
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2636 a0 a1 = ()
data T_LState_2636
  = C_'10214'_'44'_'44'_'10215''737'_2650 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2644 ::
  T_LState_2636 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
d_utxoSt_2644 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2650 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2646 ::
  T_LState_2636 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2646 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2650 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2648 ::
  T_LState_2636 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
d_certState_2648 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2650 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2652 ~v0 ~v1 = du_HasCast'45'LState_2652
du_HasCast'45'LState_2652 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2652
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
                                 (2636 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2094 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2636 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2050 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2636 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2202 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2650))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2670 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2670
  = C_LEDGER'45'V_2766 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2842 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
d_certState_2674 ~v0 ~v1 v2 = du_certState_2674 v2
du_certState_2674 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
du_certState_2674 v0
  = coe
      d_certState_2648 (coe d_'46'generalizedField'45's_9337 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2676 ~v0 ~v1 v2 = du_govSt_2676 v2
du_govSt_2676 ::
  T_GeneralizeTel_9349 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2676 v0
  = coe d_govSt_2646 (coe d_'46'generalizedField'45's_9337 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
d_utxoSt_2678 ~v0 ~v1 v2 = du_utxoSt_2678 v2
du_utxoSt_2678 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
du_utxoSt_2678 v0
  = coe d_utxoSt_2644 (coe d_'46'generalizedField'45's_9337 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
d_txCerts_2698 ~v0 ~v1 v2 = du_txCerts_2698 v2
du_txCerts_2698 ::
  T_GeneralizeTel_9349 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1314]
du_txCerts_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3386
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_9339 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
d_txGovVotes_2706 ~v0 ~v1 v2 = du_txGovVotes_2706 v2
du_txGovVotes_2706 ::
  T_GeneralizeTel_9349 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_928]
du_txGovVotes_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3398
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_9339 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 -> AgdaAny
d_txId_2708 ~v0 ~v1 v2 = du_txId_2708 v2
du_txId_2708 :: T_GeneralizeTel_9349 -> AgdaAny
du_txId_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3384
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_9339 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2718 ~v0 ~v1 v2 = du_txWithdrawals_2718 v2
du_txWithdrawals_2718 ::
  T_GeneralizeTel_9349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3390
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3530
         (coe d_'46'generalizedField'45'tx_9339 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142
d_enactState_2722 ~v0 ~v1 v2 = du_enactState_2722 v2
du_enactState_2722 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1142
du_enactState_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2862
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2724 ~v0 ~v1 v2 = du_pparams_2724 v2
du_pparams_2724 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2860
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 -> Maybe AgdaAny
d_ppolicy_2726 ~v0 ~v1 v2 = du_ppolicy_2726 v2
du_ppolicy_2726 :: T_GeneralizeTel_9349 -> Maybe AgdaAny
du_ppolicy_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2858
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 -> AgdaAny
d_slot_2728 ~v0 ~v1 v2 = du_slot_2728 v2
du_slot_2728 :: T_GeneralizeTel_9349 -> AgdaAny
du_slot_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2856
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1542
d_dState_2734 ~v0 ~v1 v2 = du_dState_2734 v2
du_dState_2734 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1542
du_dState_2734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1586
      (coe
         d_certState_2648 (coe d_'46'generalizedField'45's_9337 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2744 ~v0 ~v1 v2 = du_rewards_2744 v2
du_rewards_2744 ::
  T_GeneralizeTel_9349 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1556
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1586
         (coe
            d_certState_2648 (coe d_'46'generalizedField'45's_9337 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2758 ~v0 ~v1 v2 = du_pparams_2758 v2
du_pparams_2758 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2860
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 -> AgdaAny
d_slot_2762 ~v0 ~v1 v2 = du_slot_2762 v2
du_slot_2762 :: T_GeneralizeTel_9349 -> AgdaAny
du_slot_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2856
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_9349 -> Integer
d_treasury_2764 ~v0 ~v1 v2 = du_treasury_2764 v2
du_treasury_2764 :: T_GeneralizeTel_9349 -> Integer
du_treasury_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2864
      (coe d_'46'generalizedField'45'Γ_9341 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_14495 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
d_certState_2770 ~v0 ~v1 v2 = du_certState_2770 v2
du_certState_2770 ::
  T_GeneralizeTel_14495 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
du_certState_2770 v0
  = coe
      d_certState_2648 (coe d_'46'generalizedField'45's_14487 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_14495 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2772 ~v0 ~v1 v2 = du_govSt_2772 v2
du_govSt_2772 ::
  T_GeneralizeTel_14495 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2772 v0
  = coe d_govSt_2646 (coe d_'46'generalizedField'45's_14487 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_14495 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
d_utxoSt_2774 ~v0 ~v1 v2 = du_utxoSt_2774 v2
du_utxoSt_2774 ::
  T_GeneralizeTel_14495 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
du_utxoSt_2774 v0
  = coe
      d_utxoSt_2644 (coe d_'46'generalizedField'45's_14487 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_14495 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_2834 ~v0 ~v1 v2 = du_pparams_2834 v2
du_pparams_2834 ::
  T_GeneralizeTel_14495 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
du_pparams_2834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2860
      (coe d_'46'generalizedField'45'Γ_14491 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_14495 -> AgdaAny
d_slot_2838 ~v0 ~v1 v2 = du_slot_2838 v2
du_slot_2838 :: T_GeneralizeTel_14495 -> AgdaAny
du_slot_2838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2856
      (coe d_'46'generalizedField'45'Γ_14491 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  T_GeneralizeTel_14495 -> Integer
d_treasury_2840 ~v0 ~v1 v2 = du_treasury_2840 v2
du_treasury_2840 :: T_GeneralizeTel_14495 -> Integer
du_treasury_2840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2864
      (coe d_'46'generalizedField'45'Γ_14491 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2844 ->
  T_LState_2636 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518] ->
  T_LState_2636 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2860 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9337 ::
  T_GeneralizeTel_9349 -> T_LState_2636
d_'46'generalizedField'45's_9337 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9339 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518
d_'46'generalizedField'45'tx_9339 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9341 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2844
d_'46'generalizedField'45'Γ_9341 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9343 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
d_'46'generalizedField'45'utxoSt''_9343 v0
  = case coe v0 of
      C_mkGeneralizeTel_9351 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9345 ::
  T_GeneralizeTel_9349 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
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
  = C_mkGeneralizeTel_9351 T_LState_2636
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2844
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1578
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14487 ::
  T_GeneralizeTel_14495 -> T_LState_2636
d_'46'generalizedField'45's_14487 v0
  = case coe v0 of
      C_mkGeneralizeTel_14497 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14489 ::
  T_GeneralizeTel_14495 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518
d_'46'generalizedField'45'tx_14489 v0
  = case coe v0 of
      C_mkGeneralizeTel_14497 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14491 ::
  T_GeneralizeTel_14495 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2844
d_'46'generalizedField'45'Γ_14491 v0
  = case coe v0 of
      C_mkGeneralizeTel_14497 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14493 ::
  T_GeneralizeTel_14495 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
d_'46'generalizedField'45'utxoSt''_14493 v0
  = case coe v0 of
      C_mkGeneralizeTel_14497 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14495 a0 a1 = ()
data T_GeneralizeTel_14495
  = C_mkGeneralizeTel_14497 T_LState_2636
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3518
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2844
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2430
