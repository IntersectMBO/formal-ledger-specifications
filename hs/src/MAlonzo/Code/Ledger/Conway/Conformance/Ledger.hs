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
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Conway.Enact
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Ledger
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Utxo
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Tx
d_Tx_430 a0 = ()
-- _.epoch
d_epoch_504 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  AgdaAny -> AgdaAny
d_epoch_504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1606
         (coe v0))
-- _.Tx.body
d_body_1548 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010
d_body_1548 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3212 (coe v0)
-- _.Tx.isValid
d_isValid_1550 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202 -> Bool
d_isValid_1550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3216 (coe v0)
-- _.Tx.txAD
d_txAD_1552 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202 -> Maybe AgdaAny
d_txAD_1552 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3218 (coe v0)
-- _.Tx.wits
d_wits_1554 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3182
d_wits_1554 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3214 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1736 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2452 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1736 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1740 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 -> ()
d_GovState_1740 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1742 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1742 ~v0 ~v1 = du_HasCast'45'GovEnv_1742
du_HasCast'45'GovEnv_1742 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1742
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2482
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1782 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1800 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1800 v0 ~v1 = du_updateDeposits_1800 v0
du_updateDeposits_1800 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Utxo.du_updateDeposits_2764 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1824 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1824 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_deposits_2312 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1826 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298 -> Integer
d_donations_1826 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_donations_2314 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1828 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298 -> Integer
d_fees_1828 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_fees_2310 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1830 ::
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1830 v0
  = coe MAlonzo.Code.Ledger.Conway.Utxo.d_utxo_2308 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1834 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1852 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1046 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1282 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1010] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1282 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1852 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1880 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_1940 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1940 ~v0 ~v1 = du_HasCast'45'CertEnv_1940
du_HasCast'45'CertEnv_1940 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1940
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'CertEnv_1274
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2100 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1282 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1246
d_dState_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1290 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2102 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1282 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1266
d_gState_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1294 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2104 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1282 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1144
d_pState_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1292 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2216 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2216 ~v0 ~v1 = du_HasCast'45'LEnv_2216
du_HasCast'45'LEnv_2216 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2216
  = coe MAlonzo.Code.Ledger.Conway.Ledger.du_HasCast'45'LEnv_2522
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2218 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2220 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_allColdCreds_2220 ~v0 ~v1 = du_allColdCreds_2220
du_allColdCreds_2220 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
du_allColdCreds_2220
  = coe MAlonzo.Code.Ledger.Conway.Ledger.du_allColdCreds_2596
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2222 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2222 v0 ~v1 = du_rmOrphanDRepVotes_2222 v0
du_rmOrphanDRepVotes_2222 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1204 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.du_rmOrphanDRepVotes_2576
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2224 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2224 ~v0 ~v1 = du_txgov_2224
du_txgov_2224 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_3010 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2224 = coe MAlonzo.Code.Ledger.Conway.Ledger.du_txgov_2526
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2228 ::
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2454 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930
d_enactState_2228 v0
  = coe MAlonzo.Code.Ledger.Conway.Ledger.d_enactState_2472 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2230 ::
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2454 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_2230 v0
  = coe MAlonzo.Code.Ledger.Conway.Ledger.d_pparams_2470 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2232 ::
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2454 -> Maybe AgdaAny
d_ppolicy_2232 v0
  = coe MAlonzo.Code.Ledger.Conway.Ledger.d_ppolicy_2468 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2234 ::
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2454 -> AgdaAny
d_slot_2234 v0
  = coe MAlonzo.Code.Ledger.Conway.Ledger.d_slot_2466 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2236 ::
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2454 -> Integer
d_treasury_2236 v0
  = coe MAlonzo.Code.Ledger.Conway.Ledger.d_treasury_2474 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2238 a0 a1 = ()
data T_LState_2238
  = C_'10214'_'44'_'44'_'10215''737'_2252 MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1282
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2246 ::
  T_LState_2238 -> MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
d_utxoSt_2246 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2252 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2248 ::
  T_LState_2238 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2248 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2252 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2250 ::
  T_LState_2238 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1282
d_certState_2250 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2252 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2254 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2254 ~v0 ~v1 = du_HasCast'45'LState_2254
du_HasCast'45'LState_2254 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2254
  = coe
      MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
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
                                 (2238 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1782 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2238 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1740 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2238 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1880 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2252))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2272 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2272
  = C_LEDGER'45'V_2372 MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2452 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2276 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1282
d_certState_2276 ~v0 ~v1 v2 = du_certState_2276 v2
du_certState_2276 ::
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1282
du_certState_2276 v0
  = coe
      d_certState_2250 (coe d_'46'generalizedField'45's_8645 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2278 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2278 ~v0 ~v1 v2 = du_govSt_2278 v2
du_govSt_2278 ::
  T_GeneralizeTel_8657 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2278 v0
  = coe d_govSt_2248 (coe d_'46'generalizedField'45's_8645 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2280 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
d_utxoSt_2280 ~v0 ~v1 v2 = du_utxoSt_2280 v2
du_utxoSt_2280 ::
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
du_utxoSt_2280 v0
  = coe d_utxoSt_2246 (coe d_'46'generalizedField'45's_8645 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2302 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1010]
d_txcerts_2302 ~v0 ~v1 v2 = du_txcerts_2302 v2
du_txcerts_2302 ::
  T_GeneralizeTel_8657 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1010]
du_txcerts_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3064
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3212
         (coe d_'46'generalizedField'45'tx_8647 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2308 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 -> AgdaAny
d_txid_2308 ~v0 ~v1 v2 = du_txid_2308 v2
du_txid_2308 :: T_GeneralizeTel_8657 -> AgdaAny
du_txid_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3084
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3212
         (coe d_'46'generalizedField'45'tx_8647 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2322 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_824]
d_txvote_2322 ~v0 ~v1 v2 = du_txvote_2322 v2
du_txvote_2322 ::
  T_GeneralizeTel_8657 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_824]
du_txvote_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3068
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3212
         (coe d_'46'generalizedField'45'tx_8647 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2324 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2324 ~v0 ~v1 v2 = du_txwdrls_2324 v2
du_txwdrls_2324 ::
  T_GeneralizeTel_8657 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3066
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_body_3212
         (coe d_'46'generalizedField'45'tx_8647 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2328 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930
d_enactState_2328 ~v0 ~v1 v2 = du_enactState_2328 v2
du_enactState_2328 ::
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.Enact.T_EnactState_930
du_enactState_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_enactState_2472
      (coe d_'46'generalizedField'45'Γ_8649 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2330 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_2330 ~v0 ~v1 v2 = du_pparams_2330 v2
du_pparams_2330 ::
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
du_pparams_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_pparams_2470
      (coe d_'46'generalizedField'45'Γ_8649 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2332 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 -> Maybe AgdaAny
d_ppolicy_2332 ~v0 ~v1 v2 = du_ppolicy_2332 v2
du_ppolicy_2332 :: T_GeneralizeTel_8657 -> Maybe AgdaAny
du_ppolicy_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_ppolicy_2468
      (coe d_'46'generalizedField'45'Γ_8649 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2334 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 -> AgdaAny
d_slot_2334 ~v0 ~v1 v2 = du_slot_2334 v2
du_slot_2334 :: T_GeneralizeTel_8657 -> AgdaAny
du_slot_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_slot_2466
      (coe d_'46'generalizedField'45'Γ_8649 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2340 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1246
d_dState_2340 ~v0 ~v1 v2 = du_dState_2340 v2
du_dState_2340 ::
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1246
du_dState_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1290
      (coe
         d_certState_2250 (coe d_'46'generalizedField'45's_8645 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2350 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2350 ~v0 ~v1 v2 = du_rewards_2350 v2
du_rewards_2350 ::
  T_GeneralizeTel_8657 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1260
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1290
         (coe
            d_certState_2250 (coe d_'46'generalizedField'45's_8645 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2364 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_2364 ~v0 ~v1 v2 = du_pparams_2364 v2
du_pparams_2364 ::
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
du_pparams_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_pparams_2470
      (coe d_'46'generalizedField'45'Γ_8649 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2368 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 -> AgdaAny
d_slot_2368 ~v0 ~v1 v2 = du_slot_2368 v2
du_slot_2368 :: T_GeneralizeTel_8657 -> AgdaAny
du_slot_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_slot_2466
      (coe d_'46'generalizedField'45'Γ_8649 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2370 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_8657 -> Integer
d_treasury_2370 ~v0 ~v1 v2 = du_treasury_2370 v2
du_treasury_2370 :: T_GeneralizeTel_8657 -> Integer
du_treasury_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_treasury_2474
      (coe d_'46'generalizedField'45'Γ_8649 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2376 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_13693 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1282
d_certState_2376 ~v0 ~v1 v2 = du_certState_2376 v2
du_certState_2376 ::
  T_GeneralizeTel_13693 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1282
du_certState_2376 v0
  = coe
      d_certState_2250 (coe d_'46'generalizedField'45's_13685 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2378 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_13693 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2378 ~v0 ~v1 v2 = du_govSt_2378 v2
du_govSt_2378 ::
  T_GeneralizeTel_13693 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2378 v0
  = coe d_govSt_2248 (coe d_'46'generalizedField'45's_13685 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2380 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_13693 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
d_utxoSt_2380 ~v0 ~v1 v2 = du_utxoSt_2380 v2
du_utxoSt_2380 ::
  T_GeneralizeTel_13693 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
du_utxoSt_2380 v0
  = coe
      d_utxoSt_2246 (coe d_'46'generalizedField'45's_13685 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2444 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_13693 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
d_pparams_2444 ~v0 ~v1 v2 = du_pparams_2444 v2
du_pparams_2444 ::
  T_GeneralizeTel_13693 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_282
du_pparams_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_pparams_2470
      (coe d_'46'generalizedField'45'Γ_13689 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2448 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_13693 -> AgdaAny
d_slot_2448 ~v0 ~v1 v2 = du_slot_2448 v2
du_slot_2448 :: T_GeneralizeTel_13693 -> AgdaAny
du_slot_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_slot_2466
      (coe d_'46'generalizedField'45'Γ_13689 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2450 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  T_GeneralizeTel_13693 -> Integer
d_treasury_2450 ~v0 ~v1 v2 = du_treasury_2450 v2
du_treasury_2450 :: T_GeneralizeTel_13693 -> Integer
du_treasury_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Ledger.d_treasury_2474
      (coe d_'46'generalizedField'45'Γ_13689 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2470 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22 ->
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1994 ->
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2454 ->
  T_LState_2238 ->
  [MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202] ->
  T_LState_2238 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2470 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8645 ::
  T_GeneralizeTel_8657 -> T_LState_2238
d_'46'generalizedField'45's_8645 v0
  = case coe v0 of
      C_mkGeneralizeTel_8659 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8647 ::
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202
d_'46'generalizedField'45'tx_8647 v0
  = case coe v0 of
      C_mkGeneralizeTel_8659 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8649 ::
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2454
d_'46'generalizedField'45'Γ_8649 v0
  = case coe v0 of
      C_mkGeneralizeTel_8659 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8651 ::
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
d_'46'generalizedField'45'utxoSt''_8651 v0
  = case coe v0 of
      C_mkGeneralizeTel_8659 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8653 ::
  T_GeneralizeTel_8657 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1282
d_'46'generalizedField'45'certState''_8653 v0
  = case coe v0 of
      C_mkGeneralizeTel_8659 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8655 ::
  T_GeneralizeTel_8657 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8655 v0
  = case coe v0 of
      C_mkGeneralizeTel_8659 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8657 a0 a1 = ()
data T_GeneralizeTel_8657
  = C_mkGeneralizeTel_8659 T_LState_2238
                           MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202
                           MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2454
                           MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1282
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13685 ::
  T_GeneralizeTel_13693 -> T_LState_2238
d_'46'generalizedField'45's_13685 v0
  = case coe v0 of
      C_mkGeneralizeTel_13695 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13687 ::
  T_GeneralizeTel_13693 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202
d_'46'generalizedField'45'tx_13687 v0
  = case coe v0 of
      C_mkGeneralizeTel_13695 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13689 ::
  T_GeneralizeTel_13693 ->
  MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2454
d_'46'generalizedField'45'Γ_13689 v0
  = case coe v0 of
      C_mkGeneralizeTel_13695 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13691 ::
  T_GeneralizeTel_13693 ->
  MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
d_'46'generalizedField'45'utxoSt''_13691 v0
  = case coe v0 of
      C_mkGeneralizeTel_13695 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13693 a0 a1 = ()
data T_GeneralizeTel_13693
  = C_mkGeneralizeTel_13695 T_LState_2238
                            MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3202
                            MAlonzo.Code.Ledger.Conway.Ledger.T_LEnv_2454
                            MAlonzo.Code.Ledger.Conway.Utxo.T_UTxOState_2298
