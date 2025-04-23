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
import qualified MAlonzo.Code.Class.To
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
d_Tx_362 a0 = ()
-- _.epoch
d_epoch_430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_430 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1502 (coe v0))
-- _.Tx.body
d_body_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2636 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534
d_body_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2646 (coe v0)
-- _.Tx.isValid
d_isValid_1404 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2636 -> Bool
d_isValid_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2650 (coe v0)
-- _.Tx.txAD
d_txAD_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2636 -> Maybe AgdaAny
d_txAD_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2652 (coe v0)
-- _.Tx.wits
d_wits_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2636 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2616
d_wits_1408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2648 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1578 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2172 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1578 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1582 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 -> ()
d_GovState_1582 = erased
-- Ledger.Conway.Conformance.Ledger._.To-GovEnv
d_To'45'GovEnv_1584 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'GovEnv_1584 ~v0 ~v1 = du_To'45'GovEnv_1584
du_To'45'GovEnv_1584 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'GovEnv_1584
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_To'45'GovEnv_2202
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1624 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1642 v0 ~v1 = du_updateDeposits_1642 v0
du_updateDeposits_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1642 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_2496 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1666 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1666 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_2066 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1668 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052 -> Integer
d_donations_1668 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_2068 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1670 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052 -> Integer
d_fees_1670 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_2064 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1672 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1672 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_2062 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1676 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_872] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1694 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1722 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-CertEnv
d_To'45'CertEnv_1788 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'CertEnv_1788 ~v0 ~v1 = du_To'45'CertEnv_1788
du_To'45'CertEnv_1788 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'CertEnv_1788
  = coe MAlonzo.Code.Ledger.Certs.du_To'45'CertEnv_1010
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_1884 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1074
d_dState_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1118 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_1886 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1094
d_gState_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1122 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_1888 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110 ->
  MAlonzo.Code.Ledger.Certs.T_PState_946
d_pState_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1120 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_1964 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.To-LEnv
d_To'45'LEnv_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LEnv_1966 ~v0 ~v1 = du_To'45'LEnv_1966
du_To'45'LEnv_1966 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LEnv_1966
  = coe MAlonzo.Code.Ledger.Ledger.du_To'45'LEnv_2214
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_allColdCreds_1968 ~v0 ~v1 = du_allColdCreds_1968
du_allColdCreds_1968 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_allColdCreds_1968
  = coe MAlonzo.Code.Ledger.Ledger.du_allColdCreds_2288
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_968 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_1970 v0 ~v1 = du_rmOrphanDRepVotes_1970 v0
du_rmOrphanDRepVotes_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_968 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_1970 v0
  = coe MAlonzo.Code.Ledger.Ledger.du_rmOrphanDRepVotes_2268 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1972 ~v0 ~v1 = du_txgov_1972
du_txgov_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2534 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1972 = coe MAlonzo.Code.Ledger.Ledger.du_txgov_2218
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_1976 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_enactState_1976 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_enactState_2194 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_1978 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1978 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_pparams_2192 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_1980 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 -> Maybe AgdaAny
d_ppolicy_1980 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_2190 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_1982 :: MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 -> AgdaAny
d_slot_1982 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_slot_2188 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_1984 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 -> Integer
d_treasury_1984 v0
  = coe MAlonzo.Code.Ledger.Ledger.d_treasury_2196 (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_1986 a0 a1 = ()
data T_LState_1986
  = C_'10214'_'44'_'44'_'10215''737'_2000 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_1994 ::
  T_LState_1986 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
d_utxoSt_1994 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2000 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_1996 ::
  T_LState_1986 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1996 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2000 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_1998 ::
  T_LState_1986 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
d_certState_1998 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2000 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.To-LState
d_To'45'LState_2002 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Class.To.T_To_8
d_To'45'LState_2002 ~v0 ~v1 = du_To'45'LState_2002
du_To'45'LState_2002 :: MAlonzo.Code.Class.To.T_To_8
du_To'45'LState_2002
  = coe
      MAlonzo.Code.Class.To.C_To'46'constructor_9
      (coe
         MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_150
         (coe
            MAlonzo.Code.Data.List.Base.du_length_284
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.To.d_getCodPi_22
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
                                 (1986 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1624 :: Integer) (16262344046643431141 :: Integer)
                                 "Ledger.Conway.Conformance.Ledger._.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.To.d_getCodPi_22
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
                                    (1986 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1582 :: Integer) (16262344046643431141 :: Integer)
                                    "Ledger.Conway.Conformance.Ledger._.GovState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.To.d_getCodPi_22
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
                                       (1986 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1722 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2000))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2020 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2020
  = C_LEDGER'45'V_2120 MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2200 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
d_certState_2024 ~v0 ~v1 v2 = du_certState_2024 v2
du_certState_2024 ::
  T_GeneralizeTel_7163 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
du_certState_2024 v0
  = coe
      d_certState_1998 (coe d_'46'generalizedField'45's_7151 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2026 ~v0 ~v1 v2 = du_govSt_2026 v2
du_govSt_2026 ::
  T_GeneralizeTel_7163 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2026 v0
  = coe d_govSt_1996 (coe d_'46'generalizedField'45's_7151 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2028 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
d_utxoSt_2028 ~v0 ~v1 v2 = du_utxoSt_2028 v2
du_utxoSt_2028 ::
  T_GeneralizeTel_7163 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
du_utxoSt_2028 v0
  = coe d_utxoSt_1994 (coe d_'46'generalizedField'45's_7151 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 -> [MAlonzo.Code.Ledger.Certs.T_DCert_872]
d_txcerts_2050 ~v0 ~v1 v2 = du_txcerts_2050 v2
du_txcerts_2050 ::
  T_GeneralizeTel_7163 -> [MAlonzo.Code.Ledger.Certs.T_DCert_872]
du_txcerts_2050 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2588
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2646
         (coe d_'46'generalizedField'45'tx_7153 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 -> AgdaAny
d_txid_2056 ~v0 ~v1 v2 = du_txid_2056 v2
du_txid_2056 :: T_GeneralizeTel_7163 -> AgdaAny
du_txid_2056 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2608
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2646
         (coe d_'46'generalizedField'45'tx_7153 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740]
d_txvote_2070 ~v0 ~v1 v2 = du_txvote_2070 v2
du_txvote_2070 ::
  T_GeneralizeTel_7163 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_740]
du_txvote_2070 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2592
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2646
         (coe d_'46'generalizedField'45'tx_7153 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2072 ~v0 ~v1 v2 = du_txwdrls_2072 v2
du_txwdrls_2072 ::
  T_GeneralizeTel_7163 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2072 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2590
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2646
         (coe d_'46'generalizedField'45'tx_7153 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
d_enactState_2076 ~v0 ~v1 v2 = du_enactState_2076 v2
du_enactState_2076 ::
  T_GeneralizeTel_7163 -> MAlonzo.Code.Ledger.Enact.T_EnactState_850
du_enactState_2076 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_enactState_2194
      (coe d_'46'generalizedField'45'Γ_7155 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2078 ~v0 ~v1 v2 = du_pparams_2078 v2
du_pparams_2078 ::
  T_GeneralizeTel_7163 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2078 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2192
      (coe d_'46'generalizedField'45'Γ_7155 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 -> Maybe AgdaAny
d_ppolicy_2080 ~v0 ~v1 v2 = du_ppolicy_2080 v2
du_ppolicy_2080 :: T_GeneralizeTel_7163 -> Maybe AgdaAny
du_ppolicy_2080 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_ppolicy_2190
      (coe d_'46'generalizedField'45'Γ_7155 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 -> AgdaAny
d_slot_2082 ~v0 ~v1 v2 = du_slot_2082 v2
du_slot_2082 :: T_GeneralizeTel_7163 -> AgdaAny
du_slot_2082 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2188
      (coe d_'46'generalizedField'45'Γ_7155 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2088 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1074
d_dState_2088 ~v0 ~v1 v2 = du_dState_2088 v2
du_dState_2088 ::
  T_GeneralizeTel_7163 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1074
du_dState_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1118
      (coe
         d_certState_1998 (coe d_'46'generalizedField'45's_7151 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2098 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2098 ~v0 ~v1 v2 = du_rewards_2098 v2
du_rewards_2098 ::
  T_GeneralizeTel_7163 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1088
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1118
         (coe
            d_certState_1998 (coe d_'46'generalizedField'45's_7151 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2112 ~v0 ~v1 v2 = du_pparams_2112 v2
du_pparams_2112 ::
  T_GeneralizeTel_7163 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2112 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2192
      (coe d_'46'generalizedField'45'Γ_7155 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 -> AgdaAny
d_slot_2116 ~v0 ~v1 v2 = du_slot_2116 v2
du_slot_2116 :: T_GeneralizeTel_7163 -> AgdaAny
du_slot_2116 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2188
      (coe d_'46'generalizedField'45'Γ_7155 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_7163 -> Integer
d_treasury_2118 ~v0 ~v1 v2 = du_treasury_2118 v2
du_treasury_2118 :: T_GeneralizeTel_7163 -> Integer
du_treasury_2118 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2196
      (coe d_'46'generalizedField'45'Γ_7155 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_12145 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
d_certState_2124 ~v0 ~v1 v2 = du_certState_2124 v2
du_certState_2124 ::
  T_GeneralizeTel_12145 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
du_certState_2124 v0
  = coe
      d_certState_1998 (coe d_'46'generalizedField'45's_12137 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_12145 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2126 ~v0 ~v1 v2 = du_govSt_2126 v2
du_govSt_2126 ::
  T_GeneralizeTel_12145 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2126 v0
  = coe d_govSt_1996 (coe d_'46'generalizedField'45's_12137 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_12145 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
d_utxoSt_2128 ~v0 ~v1 v2 = du_utxoSt_2128 v2
du_utxoSt_2128 ::
  T_GeneralizeTel_12145 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
du_utxoSt_2128 v0
  = coe
      d_utxoSt_1994 (coe d_'46'generalizedField'45's_12137 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_12145 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2192 ~v0 ~v1 v2 = du_pparams_2192 v2
du_pparams_2192 ::
  T_GeneralizeTel_12145 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2192 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_pparams_2192
      (coe d_'46'generalizedField'45'Γ_12141 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_12145 -> AgdaAny
d_slot_2196 ~v0 ~v1 v2 = du_slot_2196 v2
du_slot_2196 :: T_GeneralizeTel_12145 -> AgdaAny
du_slot_2196 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_slot_2188
      (coe d_'46'generalizedField'45'Γ_12141 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  T_GeneralizeTel_12145 -> Integer
d_treasury_2198 ~v0 ~v1 v2 = du_treasury_2198 v2
du_treasury_2198 :: T_GeneralizeTel_12145 -> Integer
du_treasury_2198 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_treasury_2196
      (coe d_'46'generalizedField'45'Γ_12141 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_2176 ->
  T_LState_1986 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2636] -> T_LState_1986 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2218 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_7151 ::
  T_GeneralizeTel_7163 -> T_LState_1986
d_'46'generalizedField'45's_7151 v0
  = case coe v0 of
      C_mkGeneralizeTel_7165 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_7153 ::
  T_GeneralizeTel_7163 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2636
d_'46'generalizedField'45'tx_7153 v0
  = case coe v0 of
      C_mkGeneralizeTel_7165 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_7155 ::
  T_GeneralizeTel_7163 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2176
d_'46'generalizedField'45'Γ_7155 v0
  = case coe v0 of
      C_mkGeneralizeTel_7165 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_7157 ::
  T_GeneralizeTel_7163 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
d_'46'generalizedField'45'utxoSt''_7157 v0
  = case coe v0 of
      C_mkGeneralizeTel_7165 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_7159 ::
  T_GeneralizeTel_7163 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
d_'46'generalizedField'45'certState''_7159 v0
  = case coe v0 of
      C_mkGeneralizeTel_7165 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_7161 ::
  T_GeneralizeTel_7163 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_7161 v0
  = case coe v0 of
      C_mkGeneralizeTel_7165 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_7163 a0 a1 = ()
data T_GeneralizeTel_7163
  = C_mkGeneralizeTel_7165 T_LState_1986
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2636
                           MAlonzo.Code.Ledger.Ledger.T_LEnv_2176
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1110
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_12137 ::
  T_GeneralizeTel_12145 -> T_LState_1986
d_'46'generalizedField'45's_12137 v0
  = case coe v0 of
      C_mkGeneralizeTel_12147 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_12139 ::
  T_GeneralizeTel_12145 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2636
d_'46'generalizedField'45'tx_12139 v0
  = case coe v0 of
      C_mkGeneralizeTel_12147 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_12141 ::
  T_GeneralizeTel_12145 -> MAlonzo.Code.Ledger.Ledger.T_LEnv_2176
d_'46'generalizedField'45'Γ_12141 v0
  = case coe v0 of
      C_mkGeneralizeTel_12147 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_12143 ::
  T_GeneralizeTel_12145 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
d_'46'generalizedField'45'utxoSt''_12143 v0
  = case coe v0 of
      C_mkGeneralizeTel_12147 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_12145 a0 a1 = ()
data T_GeneralizeTel_12145
  = C_mkGeneralizeTel_12147 T_LState_1986
                            MAlonzo.Code.Ledger.Transaction.T_Tx_2636
                            MAlonzo.Code.Ledger.Ledger.T_LEnv_2176
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_2052
