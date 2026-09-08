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
d_Tx_658 a0 = ()
-- _.epoch
d_epoch_746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_746 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- _.Tx.body
d_body_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526
d_body_1988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3738
      (coe v0)
-- _.Tx.isValid
d_isValid_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Bool
d_isValid_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3744
      (coe v0)
-- _.Tx.txAD
d_txAD_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Maybe AgdaAny
d_txAD_1992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3746
      (coe v0)
-- _.Tx.txsize
d_txsize_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Integer
d_txsize_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3742
      (coe v0)
-- _.Tx.wits
d_wits_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704
d_wits_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3740
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2998 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__2168 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  ()
d_GovState_2174 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_2176 ~v0 ~v1 = du_HasCast'45'GovEnv_2176
du_HasCast'45'GovEnv_2176 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_2176
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_3030
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_2218 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2238 v0 ~v1 = du_updateDeposits_2238 v0
du_updateDeposits_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_3024
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2564
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550 ->
  Integer
d_donations_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2566
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550 ->
  Integer
d_fees_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2562 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2560 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2272 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1438 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2284 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2320 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2394 ~v0 ~v1 = du_HasCast'45'CertEnv_2394
du_HasCast'45'CertEnv_2394 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2394
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1662
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2604 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1622
d_dState_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1666 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2606 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1642
d_gState_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1670 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2608 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478
d_pState_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1668 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2730 ~v0 ~v1 = du_HasCast'45'LEnv_2730
du_HasCast'45'LEnv_2730 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2730
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_3074
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2732 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1226 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2736 ~v0 ~v1 = du_allColdCreds_2736
du_allColdCreds_2736 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1226 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2736
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_3142
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2738 v0 ~v1 = du_rmOrphanDRepVotes_2738 v0
du_rmOrphanDRepVotes_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_3124
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2740 ~v0 ~v1 = du_txgov_2740
du_txgov_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2740
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_3078
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2984 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1226
d_enactState_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_3002
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2984 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_3000
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2984 ->
  Maybe AgdaAny
d_ppolicy_2748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2998
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2984 ->
  AgdaAny
d_slot_2750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2996
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2984 ->
  Integer
d_treasury_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_3004
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2754 a0 a1 = ()
data T_LState_2754
  = C_'10214'_'44'_'44'_'10215''737'_2768 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2762 ::
  T_LState_2754 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
d_utxoSt_2762 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2768 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2764 ::
  T_LState_2754 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2764 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2768 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2766 ::
  T_LState_2754 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658
d_certState_2766 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2768 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2770 ~v0 ~v1 = du_HasCast'45'LState_2770
du_HasCast'45'LState_2770 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2770
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
                                 (2754 :: Integer) (16262344046643431141 :: Integer)
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
                                 (2218 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2754 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2174 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2754 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2320 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2768))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2788 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2788
  = C_LEDGER'45'V_2884 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2960 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658
d_certState_2792 ~v0 ~v1 v2 = du_certState_2792 v2
du_certState_2792 ::
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658
du_certState_2792 v0
  = coe
      d_certState_2766 (coe d_'46'generalizedField'45's_9563 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2794 ~v0 ~v1 v2 = du_govSt_2794 v2
du_govSt_2794 ::
  T_GeneralizeTel_9575 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2794 v0
  = coe d_govSt_2764 (coe d_'46'generalizedField'45's_9563 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
d_utxoSt_2796 ~v0 ~v1 v2 = du_utxoSt_2796 v2
du_utxoSt_2796 ::
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
du_utxoSt_2796 v0
  = coe d_utxoSt_2762 (coe d_'46'generalizedField'45's_9563 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398]
d_txCerts_2816 ~v0 ~v1 v2 = du_txCerts_2816 v2
du_txCerts_2816 ::
  T_GeneralizeTel_9575 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398]
du_txCerts_2816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3574
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3738
         (coe d_'46'generalizedField'45'tx_9565 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066]
d_txGovVotes_2824 ~v0 ~v1 v2 = du_txGovVotes_2824 v2
du_txGovVotes_2824 ::
  T_GeneralizeTel_9575 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066]
du_txGovVotes_2824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3586
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3738
         (coe d_'46'generalizedField'45'tx_9565 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 -> AgdaAny
d_txId_2826 ~v0 ~v1 v2 = du_txId_2826 v2
du_txId_2826 :: T_GeneralizeTel_9575 -> AgdaAny
du_txId_2826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3572
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3738
         (coe d_'46'generalizedField'45'tx_9565 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2836 ~v0 ~v1 v2 = du_txWithdrawals_2836 v2
du_txWithdrawals_2836 ::
  T_GeneralizeTel_9575 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3578
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3738
         (coe d_'46'generalizedField'45'tx_9565 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1226
d_enactState_2840 ~v0 ~v1 v2 = du_enactState_2840 v2
du_enactState_2840 ::
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1226
du_enactState_2840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_3002
      (coe d_'46'generalizedField'45'Γ_9567 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2842 ~v0 ~v1 v2 = du_pparams_2842 v2
du_pparams_2842 ::
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_3000
      (coe d_'46'generalizedField'45'Γ_9567 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 -> Maybe AgdaAny
d_ppolicy_2844 ~v0 ~v1 v2 = du_ppolicy_2844 v2
du_ppolicy_2844 :: T_GeneralizeTel_9575 -> Maybe AgdaAny
du_ppolicy_2844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2998
      (coe d_'46'generalizedField'45'Γ_9567 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 -> AgdaAny
d_slot_2846 ~v0 ~v1 v2 = du_slot_2846 v2
du_slot_2846 :: T_GeneralizeTel_9575 -> AgdaAny
du_slot_2846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2996
      (coe d_'46'generalizedField'45'Γ_9567 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1622
d_dState_2852 ~v0 ~v1 v2 = du_dState_2852 v2
du_dState_2852 ::
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1622
du_dState_2852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1666
      (coe
         d_certState_2766 (coe d_'46'generalizedField'45's_9563 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2862 ~v0 ~v1 v2 = du_rewards_2862 v2
du_rewards_2862 ::
  T_GeneralizeTel_9575 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1636
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1666
         (coe
            d_certState_2766 (coe d_'46'generalizedField'45's_9563 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2876 ~v0 ~v1 v2 = du_pparams_2876 v2
du_pparams_2876 ::
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_3000
      (coe d_'46'generalizedField'45'Γ_9567 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 -> AgdaAny
d_slot_2880 ~v0 ~v1 v2 = du_slot_2880 v2
du_slot_2880 :: T_GeneralizeTel_9575 -> AgdaAny
du_slot_2880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2996
      (coe d_'46'generalizedField'45'Γ_9567 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_9575 -> Integer
d_treasury_2882 ~v0 ~v1 v2 = du_treasury_2882 v2
du_treasury_2882 :: T_GeneralizeTel_9575 -> Integer
du_treasury_2882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_3004
      (coe d_'46'generalizedField'45'Γ_9567 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_14817 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658
d_certState_2888 ~v0 ~v1 v2 = du_certState_2888 v2
du_certState_2888 ::
  T_GeneralizeTel_14817 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658
du_certState_2888 v0
  = coe
      d_certState_2766 (coe d_'46'generalizedField'45's_14809 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_14817 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2890 ~v0 ~v1 v2 = du_govSt_2890 v2
du_govSt_2890 ::
  T_GeneralizeTel_14817 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2890 v0
  = coe d_govSt_2764 (coe d_'46'generalizedField'45's_14809 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_14817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
d_utxoSt_2892 ~v0 ~v1 v2 = du_utxoSt_2892 v2
du_utxoSt_2892 ::
  T_GeneralizeTel_14817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
du_utxoSt_2892 v0
  = coe
      d_utxoSt_2762 (coe d_'46'generalizedField'45's_14809 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_14817 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_2952 ~v0 ~v1 v2 = du_pparams_2952 v2
du_pparams_2952 ::
  T_GeneralizeTel_14817 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
du_pparams_2952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_3000
      (coe d_'46'generalizedField'45'Γ_14813 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_14817 -> AgdaAny
d_slot_2956 ~v0 ~v1 v2 = du_slot_2956 v2
du_slot_2956 :: T_GeneralizeTel_14817 -> AgdaAny
du_slot_2956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2996
      (coe d_'46'generalizedField'45'Γ_14813 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  T_GeneralizeTel_14817 -> Integer
d_treasury_2958 ~v0 ~v1 v2 = du_treasury_2958 v2
du_treasury_2958 :: T_GeneralizeTel_14817 -> Integer
du_treasury_2958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_3004
      (coe d_'46'generalizedField'45'Γ_14813 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2984 ->
  T_LState_2754 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726] ->
  T_LState_2754 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2978 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_9563 ::
  T_GeneralizeTel_9575 -> T_LState_2754
d_'46'generalizedField'45's_9563 v0
  = case coe v0 of
      C_mkGeneralizeTel_9577 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_9565 ::
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726
d_'46'generalizedField'45'tx_9565 v0
  = case coe v0 of
      C_mkGeneralizeTel_9577 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_9567 ::
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2984
d_'46'generalizedField'45'Γ_9567 v0
  = case coe v0 of
      C_mkGeneralizeTel_9577 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_9569 ::
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
d_'46'generalizedField'45'utxoSt''_9569 v0
  = case coe v0 of
      C_mkGeneralizeTel_9577 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_9571 ::
  T_GeneralizeTel_9575 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658
d_'46'generalizedField'45'certState''_9571 v0
  = case coe v0 of
      C_mkGeneralizeTel_9577 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_9573 ::
  T_GeneralizeTel_9575 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_9573 v0
  = case coe v0 of
      C_mkGeneralizeTel_9577 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_9575 a0 a1 = ()
data T_GeneralizeTel_9575
  = C_mkGeneralizeTel_9577 T_LState_2754
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2984
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1658
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14809 ::
  T_GeneralizeTel_14817 -> T_LState_2754
d_'46'generalizedField'45's_14809 v0
  = case coe v0 of
      C_mkGeneralizeTel_14819 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14811 ::
  T_GeneralizeTel_14817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726
d_'46'generalizedField'45'tx_14811 v0
  = case coe v0 of
      C_mkGeneralizeTel_14819 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14813 ::
  T_GeneralizeTel_14817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2984
d_'46'generalizedField'45'Γ_14813 v0
  = case coe v0 of
      C_mkGeneralizeTel_14819 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14815 ::
  T_GeneralizeTel_14817 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
d_'46'generalizedField'45'utxoSt''_14815 v0
  = case coe v0 of
      C_mkGeneralizeTel_14819 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14817 a0 a1 = ()
data T_GeneralizeTel_14817
  = C_mkGeneralizeTel_14819 T_LState_2754
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2984
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2550
