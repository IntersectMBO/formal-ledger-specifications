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
d_Tx_412 a0 = ()
-- _.epoch
d_epoch_486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_486 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1574
         (coe v0))
-- _.Tx.body
d_body_1524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2946
d_body_1524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3146
      (coe v0)
-- _.Tx.isValid
d_isValid_1526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3134 ->
  Bool
d_isValid_1526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3152
      (coe v0)
-- _.Tx.txAD
d_txAD_1528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3134 ->
  Maybe AgdaAny
d_txAD_1528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3154
      (coe v0)
-- _.Tx.txsize
d_txsize_1530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3134 ->
  Integer
d_txsize_1530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3150
      (coe v0)
-- _.Tx.wits
d_wits_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3134 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3114
d_wits_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3148
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2416 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1698 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  ()
d_GovState_1702 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1704 ~v0 ~v1 = du_HasCast'45'GovEnv_1704
du_HasCast'45'GovEnv_1704 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1704
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2446
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1744 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2946 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1762 v0 ~v1 = du_updateDeposits_1762 v0
du_updateDeposits_1762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2946 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2530
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2078
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2064 ->
  Integer
d_donations_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2080
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2064 ->
  Integer
d_fees_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2076 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2064 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2074 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1796 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1064 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1296 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1296 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1810 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_1838 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_1898 ~v0 ~v1 = du_HasCast'45'CertEnv_1898
du_HasCast'45'CertEnv_1898 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_1898
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1292
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2058 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1296 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1260
d_dState_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1304 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2060 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1296 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1280
d_gState_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1308 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2062 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1296 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1162
d_pState_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1306 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2176 ~v0 ~v1 = du_HasCast'45'LEnv_2176
du_HasCast'45'LEnv_2176 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2176
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2460
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2178 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2180 ~v0 ~v1 = du_allColdCreds_2180
du_allColdCreds_2180 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2180
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2532
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2182 v0 ~v1 = du_rmOrphanDRepVotes_2182 v0
du_rmOrphanDRepVotes_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1222 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2512
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2946 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2184 ~v0 ~v1 = du_txgov_2184
du_txgov_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_2946 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2184
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2464
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944
d_enactState_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2410
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2392 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298
d_pparams_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2408
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2392 ->
  Maybe AgdaAny
d_ppolicy_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2406
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2392 ->
  AgdaAny
d_slot_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2404
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2392 ->
  Integer
d_treasury_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2412
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2198 a0 a1 = ()
data T_LState_2198
  = C_'10214'_'44'_'44'_'10215''737'_2212 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2064
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1296
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2206 ::
  T_LState_2198 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2064
d_utxoSt_2206 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2212 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2208 ::
  T_LState_2198 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2208 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2212 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2210 ::
  T_LState_2198 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1296
d_certState_2210 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2212 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2214 ~v0 ~v1 = du_HasCast'45'LState_2214
du_HasCast'45'LState_2214 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2214
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
                                 (2198 :: Integer) (16262344046643431141 :: Integer)
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
                                 (1744 :: Integer) (16262344046643431141 :: Integer)
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
                                    (2198 :: Integer) (16262344046643431141 :: Integer)
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
                                    (1702 :: Integer) (16262344046643431141 :: Integer)
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
                                       (2198 :: Integer) (16262344046643431141 :: Integer)
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
                                       (1838 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2212))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2232 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2232
  = C_LEDGER'45'V_2330 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2064
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2408 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1296
d_certState_2236 ~v0 ~v1 v2 = du_certState_2236 v2
du_certState_2236 ::
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1296
du_certState_2236 v0
  = coe
      d_certState_2210 (coe d_'46'generalizedField'45's_8527 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2238 ~v0 ~v1 v2 = du_govSt_2238 v2
du_govSt_2238 ::
  T_GeneralizeTel_8539 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2238 v0
  = coe d_govSt_2208 (coe d_'46'generalizedField'45's_8527 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2064
d_utxoSt_2240 ~v0 ~v1 v2 = du_utxoSt_2240 v2
du_utxoSt_2240 ::
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2064
du_utxoSt_2240 v0
  = coe d_utxoSt_2206 (coe d_'46'generalizedField'45's_8527 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txcerts
d_txcerts_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
d_txcerts_2262 ~v0 ~v1 v2 = du_txcerts_2262 v2
du_txcerts_2262 ::
  T_GeneralizeTel_8539 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1028]
du_txcerts_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txcerts_2998
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3146
         (coe d_'46'generalizedField'45'tx_8529 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txid
d_txid_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 -> AgdaAny
d_txid_2268 ~v0 ~v1 v2 = du_txid_2268 v2
du_txid_2268 :: T_GeneralizeTel_8539 -> AgdaAny
du_txid_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txid_3016
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3146
         (coe d_'46'generalizedField'45'tx_8529 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txvote
d_txvote_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_840]
d_txvote_2280 ~v0 ~v1 v2 = du_txvote_2280 v2
du_txvote_2280 ::
  T_GeneralizeTel_8539 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_840]
du_txvote_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txvote_3002
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3146
         (coe d_'46'generalizedField'45'tx_8529 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txwdrls
d_txwdrls_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2282 ~v0 ~v1 v2 = du_txwdrls_2282 v2
du_txwdrls_2282 ::
  T_GeneralizeTel_8539 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txwdrls_3000
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3146
         (coe d_'46'generalizedField'45'tx_8529 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944
d_enactState_2286 ~v0 ~v1 v2 = du_enactState_2286 v2
du_enactState_2286 ::
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_944
du_enactState_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2410
      (coe d_'46'generalizedField'45'Γ_8531 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298
d_pparams_2288 ~v0 ~v1 v2 = du_pparams_2288 v2
du_pparams_2288 ::
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298
du_pparams_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2408
      (coe d_'46'generalizedField'45'Γ_8531 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 -> Maybe AgdaAny
d_ppolicy_2290 ~v0 ~v1 v2 = du_ppolicy_2290 v2
du_ppolicy_2290 :: T_GeneralizeTel_8539 -> Maybe AgdaAny
du_ppolicy_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2406
      (coe d_'46'generalizedField'45'Γ_8531 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 -> AgdaAny
d_slot_2292 ~v0 ~v1 v2 = du_slot_2292 v2
du_slot_2292 :: T_GeneralizeTel_8539 -> AgdaAny
du_slot_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2404
      (coe d_'46'generalizedField'45'Γ_8531 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1260
d_dState_2298 ~v0 ~v1 v2 = du_dState_2298 v2
du_dState_2298 ::
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1260
du_dState_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1304
      (coe
         d_certState_2210 (coe d_'46'generalizedField'45's_8527 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2308 ~v0 ~v1 v2 = du_rewards_2308 v2
du_rewards_2308 ::
  T_GeneralizeTel_8539 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1274
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1304
         (coe
            d_certState_2210 (coe d_'46'generalizedField'45's_8527 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298
d_pparams_2322 ~v0 ~v1 v2 = du_pparams_2322 v2
du_pparams_2322 ::
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298
du_pparams_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2408
      (coe d_'46'generalizedField'45'Γ_8531 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 -> AgdaAny
d_slot_2326 ~v0 ~v1 v2 = du_slot_2326 v2
du_slot_2326 :: T_GeneralizeTel_8539 -> AgdaAny
du_slot_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2404
      (coe d_'46'generalizedField'45'Γ_8531 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_8539 -> Integer
d_treasury_2328 ~v0 ~v1 v2 = du_treasury_2328 v2
du_treasury_2328 :: T_GeneralizeTel_8539 -> Integer
du_treasury_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2412
      (coe d_'46'generalizedField'45'Γ_8531 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_13569 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1296
d_certState_2334 ~v0 ~v1 v2 = du_certState_2334 v2
du_certState_2334 ::
  T_GeneralizeTel_13569 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1296
du_certState_2334 v0
  = coe
      d_certState_2210 (coe d_'46'generalizedField'45's_13561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_13569 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2336 ~v0 ~v1 v2 = du_govSt_2336 v2
du_govSt_2336 ::
  T_GeneralizeTel_13569 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2336 v0
  = coe d_govSt_2208 (coe d_'46'generalizedField'45's_13561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_13569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2064
d_utxoSt_2338 ~v0 ~v1 v2 = du_utxoSt_2338 v2
du_utxoSt_2338 ::
  T_GeneralizeTel_13569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2064
du_utxoSt_2338 v0
  = coe
      d_utxoSt_2206 (coe d_'46'generalizedField'45's_13561 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_13569 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298
d_pparams_2400 ~v0 ~v1 v2 = du_pparams_2400 v2
du_pparams_2400 ::
  T_GeneralizeTel_13569 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_298
du_pparams_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2408
      (coe d_'46'generalizedField'45'Γ_13565 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_13569 -> AgdaAny
d_slot_2404 ~v0 ~v1 v2 = du_slot_2404 v2
du_slot_2404 :: T_GeneralizeTel_13569 -> AgdaAny
du_slot_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2404
      (coe d_'46'generalizedField'45'Γ_13565 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  T_GeneralizeTel_13569 -> Integer
d_treasury_2406 ~v0 ~v1 v2 = du_treasury_2406 v2
du_treasury_2406 :: T_GeneralizeTel_13569 -> Integer
du_treasury_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2412
      (coe d_'46'generalizedField'45'Γ_13565 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_1960 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2392 ->
  T_LState_2198 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3134] ->
  T_LState_2198 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2426 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8527 ::
  T_GeneralizeTel_8539 -> T_LState_2198
d_'46'generalizedField'45's_8527 v0
  = case coe v0 of
      C_mkGeneralizeTel_8541 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8529 ::
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3134
d_'46'generalizedField'45'tx_8529 v0
  = case coe v0 of
      C_mkGeneralizeTel_8541 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8531 ::
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2392
d_'46'generalizedField'45'Γ_8531 v0
  = case coe v0 of
      C_mkGeneralizeTel_8541 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8533 ::
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2064
d_'46'generalizedField'45'utxoSt''_8533 v0
  = case coe v0 of
      C_mkGeneralizeTel_8541 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8535 ::
  T_GeneralizeTel_8539 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1296
d_'46'generalizedField'45'certState''_8535 v0
  = case coe v0 of
      C_mkGeneralizeTel_8541 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8537 ::
  T_GeneralizeTel_8539 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8537 v0
  = case coe v0 of
      C_mkGeneralizeTel_8541 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8539 a0 a1 = ()
data T_GeneralizeTel_8539
  = C_mkGeneralizeTel_8541 T_LState_2198
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3134
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2392
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2064
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1296
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_13561 ::
  T_GeneralizeTel_13569 -> T_LState_2198
d_'46'generalizedField'45's_13561 v0
  = case coe v0 of
      C_mkGeneralizeTel_13571 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_13563 ::
  T_GeneralizeTel_13569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3134
d_'46'generalizedField'45'tx_13563 v0
  = case coe v0 of
      C_mkGeneralizeTel_13571 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_13565 ::
  T_GeneralizeTel_13569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2392
d_'46'generalizedField'45'Γ_13565 v0
  = case coe v0 of
      C_mkGeneralizeTel_13571 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_13567 ::
  T_GeneralizeTel_13569 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2064
d_'46'generalizedField'45'utxoSt''_13567 v0
  = case coe v0 of
      C_mkGeneralizeTel_13571 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_13569 a0 a1 = ()
data T_GeneralizeTel_13569
  = C_mkGeneralizeTel_13571 T_LState_2198
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3134
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2392
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2064
