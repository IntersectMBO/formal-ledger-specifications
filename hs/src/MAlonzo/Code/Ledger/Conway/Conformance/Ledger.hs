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
import qualified MAlonzo.Code.Class.HasCast.Base
import qualified MAlonzo.Code.Class.HasCast.Derive
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo

-- _.Tx
d_Tx_422 a0 = ()
-- _.epoch
d_epoch_496 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_496 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1584 (coe v0))
-- _.Tx.body
d_body_1534 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3172 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980
d_body_1534 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_3182 (coe v0)
-- _.Tx.isValid
d_isValid_1536 :: MAlonzo.Code.Ledger.Transaction.T_Tx_3172 -> Bool
d_isValid_1536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_3186 (coe v0)
-- _.Tx.txAD
d_txAD_1538 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3172 -> Maybe AgdaAny
d_txAD_1538 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_3188 (coe v0)
-- _.Tx.wits
d_wits_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_3172 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_3152
d_wits_1540 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_3184 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2438 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1722 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1726 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 -> ()
d_GovState_1726 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'GovEnv_1728 ~v0 ~v1 = du_HasCast'45'GovEnv_1728
du_HasCast'45'GovEnv_1728 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'GovEnv_1728
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2468
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1768 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1786 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1786 v0 ~v1 = du_updateDeposits_1786 v0
du_updateDeposits_1786 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1786 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2748 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1810 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1810 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2296 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1812 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282 -> Integer
d_donations_1812 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2298 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1814 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282 -> Integer
d_fees_1814 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2294 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1816 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1816 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2292 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1820 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1838 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_1030 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_994] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1838 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1866 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'CertEnv_1926 ~v0 ~v1 = du_HasCast'45'CertEnv_1926
du_HasCast'45'CertEnv_1926 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'CertEnv_1926
  = coe MAlonzo.Code.Ledger.Certs.du_HasCast'45'CertEnv_1258
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2086 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1232
d_dState_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2088 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1252
d_gState_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1280 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2090 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268 ->
  MAlonzo.Code.Ledger.Certs.T_PState_1128
d_pState_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1278 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LEnv_2202 ~v0 ~v1 = du_HasCast'45'LEnv_2202
du_HasCast'45'LEnv_2202 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LEnv_2202
  = coe MAlonzo.Code.Ledger.Ledger.du_HasCast'45'LEnv_2506
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2204 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_914 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_2206 ~v0 ~v1 = du_allColdCreds_2206
du_allColdCreds_2206 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_914 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_2206
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2580
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1188 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2208 v0 ~v1 = du_rmOrphanDRepVotes_2208 v0
du_rmOrphanDRepVotes_2208 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_1188 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2208 v0
  = coe MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2560 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2210 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2210 ~v0 ~v1 = du_txgov_2210
du_txgov_2210 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2980 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2210 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2510
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2214 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2438 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_914
d_enactState_2214 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2456 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2216 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2438 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2216 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2454 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2218 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2438 -> Maybe AgdaAny
d_ppolicy_2218 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2452 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2220 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2438 -> AgdaAny
d_slot_2220 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2450 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2222 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2438 -> Integer
d_treasury_2222 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2458 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2224 a0 a1 = ()
data T_LState_2224
  = C_'10214'_'44'_'44'_'10215''737'_2238 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2232 ::
  T_LState_2224 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
d_utxoSt_2232 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2238 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2234 ::
  T_LState_2224 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2234 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2238 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2236 ::
  T_LState_2224 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268
d_certState_2236 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2238 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
d_HasCast'45'LState_2240 ~v0 ~v1 = du_HasCast'45'LState_2240
du_HasCast'45'LState_2240 ::
  MAlonzo.Code.Class.HasCast.Base.T_HasCast_14
du_HasCast'45'LState_2240
  = coe
      MAlonzo.Code.Class.HasCast.Base.C_HasCast'46'constructor_29
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                 (2224 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1768 :: Integer) (16262344046643431141 :: Integer)
                                 "Ledger.Conway.Conformance.Ledger._.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                    (2224 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1726 :: Integer) (16262344046643431141 :: Integer)
                                    "Ledger.Conway.Conformance.Ledger._.GovState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.HasCast.Derive.d_getCodPi_6
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
                                       (2224 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1866 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2238))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2258 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2258
  = C_LEDGER'45'V_2358 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2438 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268
d_certState_2262 ~v0 ~v1 v2 = du_certState_2262 v2
du_certState_2262 ::
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268
du_certState_2262 v0
  = coe
      d_certState_2236 (coe d_'46'generalizedField'45's_8555 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2264 ~v0 ~v1 v2 = du_govSt_2264 v2
du_govSt_2264 ::
  T_GeneralizeTel_8567 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2264 v0
  = coe d_govSt_2234 (coe d_'46'generalizedField'45's_8555 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
d_utxoSt_2266 ~v0 ~v1 v2 = du_utxoSt_2266 v2
du_utxoSt_2266 ::
  T_GeneralizeTel_8567 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
du_utxoSt_2266 v0
  = coe d_utxoSt_2232 (coe d_'46'generalizedField'45's_8555 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 -> [MAlonzo.Code.Ledger.Certs.T_DCert_994]
d_txcerts_2288 ~v0 ~v1 v2 = du_txcerts_2288 v2
du_txcerts_2288 ::
  T_GeneralizeTel_8567 -> [MAlonzo.Code.Ledger.Certs.T_DCert_994]
du_txcerts_2288 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_3034
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3182
         (coe d_'46'generalizedField'45'tx_8557 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 -> AgdaAny
d_txid_2294 ~v0 ~v1 v2 = du_txid_2294 v2
du_txid_2294 :: T_GeneralizeTel_8567 -> AgdaAny
du_txid_2294 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_3054
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3182
         (coe d_'46'generalizedField'45'tx_8557 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2308 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_808]
d_txvote_2308 ~v0 ~v1 v2 = du_txvote_2308 v2
du_txvote_2308 ::
  T_GeneralizeTel_8567 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_808]
du_txvote_2308 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_3038
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3182
         (coe d_'46'generalizedField'45'tx_8557 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2310 ~v0 ~v1 v2 = du_txwdrls_2310 v2
du_txwdrls_2310 ::
  T_GeneralizeTel_8567 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2310 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_3036
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_3182
         (coe d_'46'generalizedField'45'tx_8557 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2314 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 -> MAlonzo.Code.Ledger.Enact.T_EnactState_914
d_enactState_2314 ~v0 ~v1 v2 = du_enactState_2314 v2
du_enactState_2314 ::
  T_GeneralizeTel_8567 -> MAlonzo.Code.Ledger.Enact.T_EnactState_914
du_enactState_2314 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2456
      (coe d_'46'generalizedField'45'Γ_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2316 ~v0 ~v1 v2 = du_pparams_2316 v2
du_pparams_2316 ::
  T_GeneralizeTel_8567 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2316 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2454
      (coe d_'46'generalizedField'45'Γ_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2318 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 -> Maybe AgdaAny
d_ppolicy_2318 ~v0 ~v1 v2 = du_ppolicy_2318 v2
du_ppolicy_2318 :: T_GeneralizeTel_8567 -> Maybe AgdaAny
du_ppolicy_2318 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2452
      (coe d_'46'generalizedField'45'Γ_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 -> AgdaAny
d_slot_2320 ~v0 ~v1 v2 = du_slot_2320 v2
du_slot_2320 :: T_GeneralizeTel_8567 -> AgdaAny
du_slot_2320 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2450
      (coe d_'46'generalizedField'45'Γ_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1232
d_dState_2326 ~v0 ~v1 v2 = du_dState_2326 v2
du_dState_2326 ::
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1232
du_dState_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
      (coe
         d_certState_2236 (coe d_'46'generalizedField'45's_8555 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2336 ~v0 ~v1 v2 = du_rewards_2336 v2
du_rewards_2336 ::
  T_GeneralizeTel_8567 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1246
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1276
         (coe
            d_certState_2236 (coe d_'46'generalizedField'45's_8555 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2350 ~v0 ~v1 v2 = du_pparams_2350 v2
du_pparams_2350 ::
  T_GeneralizeTel_8567 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2350 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2454
      (coe d_'46'generalizedField'45'Γ_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 -> AgdaAny
d_slot_2354 ~v0 ~v1 v2 = du_slot_2354 v2
du_slot_2354 :: T_GeneralizeTel_8567 -> AgdaAny
du_slot_2354 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2450
      (coe d_'46'generalizedField'45'Γ_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_8567 -> Integer
d_treasury_2356 ~v0 ~v1 v2 = du_treasury_2356 v2
du_treasury_2356 :: T_GeneralizeTel_8567 -> Integer
du_treasury_2356 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2458
      (coe d_'46'generalizedField'45'Γ_8559 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_13549 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268
d_certState_2362 ~v0 ~v1 v2 = du_certState_2362 v2
du_certState_2362 ::
  T_GeneralizeTel_13549 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268
du_certState_2362 v0
  = coe
      d_certState_2236 (coe d_'46'generalizedField'45's_13541 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_13549 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2364 ~v0 ~v1 v2 = du_govSt_2364 v2
du_govSt_2364 ::
  T_GeneralizeTel_13549 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2364 v0
  = coe d_govSt_2234 (coe d_'46'generalizedField'45's_13541 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_13549 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
d_utxoSt_2366 ~v0 ~v1 v2 = du_utxoSt_2366 v2
du_utxoSt_2366 ::
  T_GeneralizeTel_13549 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
du_utxoSt_2366 v0
  = coe
      d_utxoSt_2232 (coe d_'46'generalizedField'45's_13541 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_13549 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
d_pparams_2430 ~v0 ~v1 v2 = du_pparams_2430 v2
du_pparams_2430 ::
  T_GeneralizeTel_13549 -> MAlonzo.Code.Ledger.PParams.T_PParams_262
du_pparams_2430 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2454
      (coe d_'46'generalizedField'45'Γ_13545 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2434 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_13549 -> AgdaAny
d_slot_2434 ~v0 ~v1 v2 = du_slot_2434 v2
du_slot_2434 :: T_GeneralizeTel_13549 -> AgdaAny
du_slot_2434 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2450
      (coe d_'46'generalizedField'45'Γ_13545 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2436 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  T_GeneralizeTel_13549 -> Integer
d_treasury_2436 ~v0 ~v1 v2 = du_treasury_2436 v2
du_treasury_2436 :: T_GeneralizeTel_13549 -> Integer
du_treasury_2436 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2458
      (coe d_'46'generalizedField'45'Γ_13545 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1978 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2438 ->
  T_LState_2224 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_3172] -> T_LState_2224 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2456 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8555 ::
  T_GeneralizeTel_8567 -> T_LState_2224
d_'46'generalizedField'45's_8555 v0
  = case coe v0 of
      C_mkGeneralizeTel_8569 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8557 ::
  T_GeneralizeTel_8567 -> MAlonzo.Code.Ledger.Transaction.T_Tx_3172
d_'46'generalizedField'45'tx_8557 v0
  = case coe v0 of
      C_mkGeneralizeTel_8569 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8559 ::
  T_GeneralizeTel_8567 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2438
d_'46'generalizedField'45'Γ_8559 v0
  = case coe v0 of
      C_mkGeneralizeTel_8569 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8561 ::
  T_GeneralizeTel_8567 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
d_'46'generalizedField'45'utxoSt''_8561 v0
  = case coe v0 of
      C_mkGeneralizeTel_8569 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8563 ::
  T_GeneralizeTel_8567 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268
d_'46'generalizedField'45'certState''_8563 v0
  = case coe v0 of
      C_mkGeneralizeTel_8569 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8565 ::
  T_GeneralizeTel_8567 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8565 v0
  = case coe v0 of
      C_mkGeneralizeTel_8569 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8567 a0 a1 = ()
data T_GeneralizeTel_8567
  = C_mkGeneralizeTel_8569 T_LState_2224
                           MAlonzo.Code.Ledger.Transaction.T_Tx_3172
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2438
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1268
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13541 ::
  T_GeneralizeTel_13549 -> T_LState_2224
d_'46'generalizedField'45's_13541 v0
  = case coe v0 of
      C_mkGeneralizeTel_13551 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13543 ::
  T_GeneralizeTel_13549 -> MAlonzo.Code.Ledger.Transaction.T_Tx_3172
d_'46'generalizedField'45'tx_13543 v0
  = case coe v0 of
      C_mkGeneralizeTel_13551 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13545 ::
  T_GeneralizeTel_13549 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2438
d_'46'generalizedField'45'Γ_13545 v0
  = case coe v0 of
      C_mkGeneralizeTel_13551 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13547 ::
  T_GeneralizeTel_13549 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
d_'46'generalizedField'45'utxoSt''_13547 v0
  = case coe v0 of
      C_mkGeneralizeTel_13551 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13549 a0 a1 = ()
data T_GeneralizeTel_13549
  = C_mkGeneralizeTel_13551 T_LState_2224
                            MAlonzo.Code.Ledger.Transaction.T_Tx_3172
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2438
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2282
